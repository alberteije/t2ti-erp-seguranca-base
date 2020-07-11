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

        private static List<ComputadorVO> ListaComputador;
        private static List<ComputadorVO> ListaDispositivosNaSessao;

        private MySqlConnection conexao;
        private MySqlCommand comando;
        private MySqlDataReader leitor;
        public string ConsultaSQL;
		
		public Form1()
		{
			// Required for Windows Form Designer support
			InitializeComponent();
            Grid1.AutoGenerateColumns = false;
            ListaDispositivosNaSessao = new List<ComputadorVO>();
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            ConsultaSQL = "select * from computador";
            try
            {
                conexao = dbConnection.conectar();

                ListaComputador = new List<ComputadorVO>();

                comando = new MySqlCommand(ConsultaSQL, conexao);
                leitor = comando.ExecuteReader();
                while (leitor.Read())
                {
                    ComputadorVO Computador = new ComputadorVO();

                    Computador.Id = Convert.ToInt32(leitor["id"]);
                    Computador.a = Convert.ToString(leitor["a"]);
                    Computador.b = Convert.ToString(leitor["b"]);

                    ListaComputador.Add(Computador);
                }

                Grid1.DataSource = ListaComputador;
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
                ListaComputador = null;
            }
            finally
            {
                if (leitor != null)
                    leitor.Close();
            }
        }

        private void Button5_Click(object sender, EventArgs e)
        {
            bool Encontrou = false;

            if (ListaDispositivosNaSessao.Count >= int.Parse(EditQuantidade.Text))
            {
                MessageBox.Show("Quantidade máxima de dispositivos atingida.");
                return;
            }
            else
            {
                for (int i = 0; i <= ListaComputador.Count - 1; i++)
                {
                    Grid1.Focus();
                    Grid1.CurrentCell = Grid1.Rows[i].Cells[0];
                    if (ListaComputador[i].a == EditIdDispositivoCliente.Text)
                    {
                        Encontrou = true;

                        if (ListaComputador[i].b == "S")
                        {
                            ComputadorVO Computador = new ComputadorVO();
                            Computador.Id = ListaComputador[i].Id;
                            Computador.a = ListaComputador[i].a;
                            Computador.b = ListaComputador[i].b;

                            ListaDispositivosNaSessao.Add(Computador);
                        }
                        else
                        {
                            MessageBox.Show("Dispositivo não liberado para uso.");
                            return;
                        }

                        break;
                    }
                }
            }

            if (!Encontrou)
            {
                MessageBox.Show("Dispositivo não localizado na base de dados.");
            }

            Button6.PerformClick();

            // Exercício: E se o dispositivo já tiver na sessão?
        }

        private void Button6_Click(object sender, EventArgs e)
        {
            Memo1.Clear();
            for (int i = 0; i <= ListaDispositivosNaSessao.Count - 1; i++)
            {
                Memo1.AppendText("\r-- Id: " + ListaDispositivosNaSessao[i].Id + " -- Código: " + ListaDispositivosNaSessao[i].a);
            }
        }


    }
	
	
}
