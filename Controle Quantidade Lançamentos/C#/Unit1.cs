using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using Util;
using VO;

namespace Seguranca
{

    // Exercício: Criptografe os dados na tabela conforme exemplo anterior
    // Exercício: Implemente o controle num arquivo fake conforme exemplo anterior

	  
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
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            if (ListaPagamento.Count <= 5)
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
            else
            {
                MessageBox.Show("Não é possível realizar mais lançamentos nessa tabela.");
            }
        }

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



    }
	
	
}
