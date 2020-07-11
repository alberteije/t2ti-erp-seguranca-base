using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Util;
using VO;

namespace Seguranca
{
	
	  
	public partial class Form1 : Form
	{

        private static List<ControlePagamentoVO> ListaPagamento;

        private MySqlConnection conexao;
        private MySqlCommand comando;
        private MySqlDataReader leitor;
        public string ConsultaSQL;
		
		public Form1()
		{
			// Required for Windows Form Designer support
			InitializeComponent();
            Grid1.AutoGenerateColumns = false;
            Grid2.AutoGenerateColumns = false;
        }


        #region Controle via Banco
        private void Button2_Click(object sender, System.EventArgs e)
        {
            ConsultaSQL = "select * from controle_pagamento";
            try
            {
                conexao = dbConnection.conectar();

                ListaPagamento = new List<ControlePagamentoVO>();

                comando = new MySqlCommand(ConsultaSQL, conexao);
                leitor = comando.ExecuteReader();
                while (leitor.Read())
                {
                    ControlePagamentoVO Pagamento = new ControlePagamentoVO();

                    Pagamento.Id = Convert.ToInt32(leitor["id"]);
                    Pagamento.a = Convert.ToString(leitor["a"]);
                    Pagamento.b = Convert.ToString(leitor["b"]);
                    Pagamento.c = Convert.ToString(leitor["c"]);
                    Pagamento.d = Convert.ToString(leitor["d"]);
                    Pagamento.e = Convert.ToString(leitor["e"]);
                    Pagamento.f = Convert.ToString(leitor["f"]);

                    ListaPagamento.Add(Pagamento);
                }

                Grid1.DataSource = ListaPagamento;
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
                ListaPagamento = null;
            }
            finally
            {
                if (leitor != null)
                    leitor.Close();
            }
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            ConsultaSQL = "insert into controle_pagamento ( " +
                                                    "a,b,c,d,e,f)" +
                                                    " values (" +
                                                    "?pa,?pb,?pc,?pd,?pe,?pf)";
            try
            {
                conexao = dbConnection.conectar();
                comando = new MySqlCommand(ConsultaSQL, conexao);

                comando.Parameters.AddWithValue("?pa", Biblioteca.Encripta(EditMes.Text));
                comando.Parameters.AddWithValue("?pb", Biblioteca.Encripta(EditAno.Text));
                comando.Parameters.AddWithValue("?pc", Biblioteca.Encripta(EditVencimento.Text));
                comando.Parameters.AddWithValue("?pd", Biblioteca.Encripta(EditBloqueio.Text));
                comando.Parameters.AddWithValue("?pe", Biblioteca.Encripta(EditLiberado.Text));

                comando.Parameters.AddWithValue("?pf", Biblioteca.MD5String(EditMes.Text + EditAno.Text + EditVencimento.Text + EditBloqueio.Text + EditLiberado.Text));
                
                comando.ExecuteNonQuery();
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
            finally
            {
                if (leitor != null)
                    leitor.Close();
            }
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                Memo1.Clear();
                Memo1.AppendText("Mês = " + Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].a));
                Memo1.AppendText("\rAno = " + Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].b));
                Memo1.AppendText("\rVencimento = " + Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].c));
                Memo1.AppendText("\rBloqueio = " + Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].d));
                Memo1.AppendText("\rLiberado = " + Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].e));
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }


        private void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                string HashRegistro = Biblioteca.MD5String(
                                                            Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].a) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].b) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].c) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].d) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].e)
                                                            );

                Memo1.AppendText("\r===================================");
                Memo1.AppendText("\rId = " + ListaPagamento[Grid1.CurrentRow.Index].Id);

                if (HashRegistro == ListaPagamento[Grid1.CurrentRow.Index].f)
                {
                    Memo1.AppendText("\rHash OK - Registro não violado.");
                }
                else
                {
                    Memo1.AppendText("\rHash Diferente - Registro violado.");
                }
                Memo1.AppendText("\r===================================");
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button5_Click(object sender, EventArgs e)
        {
            bool Resultado = false;
            
            //  verifica se houve alguma tentativa de burlar os dados no banco de dados
            for (int i = 0; i <= ListaPagamento.Count - 1; i++)
            {
                Grid1.Focus();
                Grid1.CurrentCell = Grid1.Rows[i].Cells[0]; 
                Button4.PerformClick();
            }


            //  verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
            //  select * from tabela where mes=mes_atual and ano=ano_atual
            for (int i = 0; i <= ListaPagamento.Count - 1; i++)
            {
                if ((DateTime.Now.Year == int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].b))) && (DateTime.Now.Month == int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].a))))
                {
                    Resultado = true;
                    break;
                }
            }
            if (!Resultado)
            {
                MessageBox.Show("Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.");
                return;
            }


            //  caso tenha encontrado o mes e ano, verifica se a data atual É maior que a data do vencimento
            if (DateTime.Now.Day > int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].c)))
            {
                MessageBox.Show("A data atual é maior que a data do vencimento. Será que o cliente já pagou?");

                //  verifica se o cliente já realizou o pagamento através do campo Liberado
                if (Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].e) == "N")
                {
                    MessageBox.Show("O cliente não pagou. Será que o sistema deve ser bloqueado?");

                    //  caso a data atual seja maior ou igual ? data definida para bloqueio, o sistema deve ser bloqueado
                    if (DateTime.Now.Day > int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid1.CurrentRow.Index].d)))
                    {
                        MessageBox.Show("O sistema deve ser bloqueado. Informar o seguinte código para SH: \r\r" + ListaPagamento[Grid1.CurrentRow.Index].f);
                    }
                }
                else
                    MessageBox.Show("O cliente já pagou!");
            }

            //  Exercício: e se o cliente deixar de pagar durante dois meses?
        }

        private void Button6_Click(object sender, EventArgs e)
        {
            Button3.PerformClick();
            // 
            Memo1.AppendText("\r=====================================================");
            Memo1.AppendText("\rHash Registro Bloqueado  = " + ListaPagamento[Grid1.CurrentRow.Index].f);
            Memo1.AppendText("\rChave Desbloqueio = " + Biblioteca.MD5String(ListaPagamento[Grid1.CurrentRow.Index].f + "uma_chave"));
            Memo1.AppendText("\r=====================================================");
        }

        private void Button7_Click(object sender, EventArgs e)
        {
            if (EditChaveDesbloqueio.Text == Biblioteca.MD5String(ListaPagamento[Grid1.CurrentRow.Index].f + "uma_chave"))
            {
                // Exercício: qual o equívoco dessa instrução?
                ConsultaSQL = "update controle_pagamento set e = " + Biblioteca.QuotedStr( Biblioteca.Encripta("S") );
                try
                {
                    conexao = dbConnection.conectar();
                    comando = new MySqlCommand(ConsultaSQL, conexao);
                    comando.ExecuteNonQuery();
                }
                catch (Exception eError)
                {
                    MessageBox.Show(eError.Message);
                }
                finally
                {
                    if (leitor != null)
                        leitor.Close();
                }

                MessageBox.Show("Dados Atualizados. Sistema Liberado!");
            }
            else
                MessageBox.Show("Chave não confere - entre em contato com a SH.");

        }
        #endregion

		#region Controle via Arquivo
        private void Button10_Click(object sender, EventArgs e)
        {
            // Aqui os dados estão sendo carregados a partir do arquivo
            ListaPagamento = ControlePagamentoVO.ListaDoArquivo("fake.dll");
            Grid2.DataSource = ListaPagamento;

            // Exercício: implemente a inclusão dos dados no arquivo
        }

        private void Button11_Click(object sender, EventArgs e)
        {
            try
            {
                Memo2.Clear();
                Memo2.AppendText("Mês = " + Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].a));
                Memo2.AppendText("\rAno = " + Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].b));
                Memo2.AppendText("\rVencimento = " + Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].c));
                Memo2.AppendText("\rBloqueio = " + Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].d));
                Memo2.AppendText("\rLiberado = " + Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].e));
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button12_Click(object sender, EventArgs e)
        {
            try
            {
                string HashRegistro = Biblioteca.MD5String(
                                                            Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].a) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].b) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].c) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].d) +
                                                            Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].e)
                                                            );

                Memo2.AppendText("\r===================================");
                Memo2.AppendText("\rId = " + ListaPagamento[Grid2.CurrentRow.Index].Id);

                if (HashRegistro == ListaPagamento[Grid2.CurrentRow.Index].f)
                {
                    Memo2.AppendText("\rHash OK - Registro não violado.");
                }
                else
                {
                    Memo2.AppendText("\rHash Diferente - Registro violado.");
                }
                Memo2.AppendText("\r===================================");
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button13_Click(object sender, EventArgs e)
        {
            bool Resultado = false;

            //  verifica se houve alguma tentativa de burlar os dados no banco de dados
            for (int i = 0; i <= ListaPagamento.Count - 1; i++)
            {
                Grid2.Focus();
                Grid2.CurrentCell = Grid2.Rows[i].Cells[0];
                Button12.PerformClick();
            }


            //  verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
            //  select * from tabela where mes=mes_atual and ano=ano_atual
            for (int i = 0; i <= ListaPagamento.Count - 1; i++)
            {
                if ((DateTime.Now.Year == int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].b))) && (DateTime.Now.Month == int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].a))))
                {
                    Resultado = true;
                    break;
                }
            }
            if (!Resultado)
            {
                MessageBox.Show("Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.");
                return;
            }


            //  caso tenha encontrado o mes e ano, verifica se a data atual É maior que a data do vencimento
            if (DateTime.Now.Day > int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].c)))
            {
                MessageBox.Show("A data atual é maior que a data do vencimento. Será que o cliente já pagou?");

                //  verifica se o cliente já realizou o pagamento através do campo Liberado
                if (Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].e) == "N")
                {
                    MessageBox.Show("O cliente não pagou. Será que o sistema deve ser bloqueado?");

                    //  caso a data atual seja maior ou igual ? data definida para bloqueio, o sistema deve ser bloqueado
                    if (DateTime.Now.Day > int.Parse(Biblioteca.Desencripta(ListaPagamento[Grid2.CurrentRow.Index].d)))
                    {
                        MessageBox.Show("O sistema deve ser bloqueado. Informar o seguinte código para SH: \r\r" + ListaPagamento[Grid2.CurrentRow.Index].f);
                    }
                }
                else
                    MessageBox.Show("O cliente já pagou!");
            }

            //  Exercício: e se o cliente deixar de pagar durante dois meses?
        }

        private void Button14_Click(object sender, EventArgs e)
        {
            Button11.PerformClick();
            // 
            Memo2.AppendText("\r=====================================================");
            Memo2.AppendText("\rHash Registro Bloqueado  = " + ListaPagamento[Grid2.CurrentRow.Index].f);
            Memo2.AppendText("\rChave Desbloqueio = " + Biblioteca.MD5String(ListaPagamento[Grid2.CurrentRow.Index].f + "uma_chave"));
            Memo2.AppendText("\r=====================================================");
        }

        private void Button8_Click(object sender, EventArgs e)
        {
            // Exercício: altere o arquivo no campo Liberado="S" criptografado
        }
        #endregion


    }
	
	
}
