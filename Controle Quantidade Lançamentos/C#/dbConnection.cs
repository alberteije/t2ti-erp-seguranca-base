using System;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace Util
{
    public static class dbConnection
    {
        private static MySqlConnection conexao;

        public static MySqlConnection conectar()
        {
            try
            {
                if (conexao == null)
                {
                    string connStr = "server=localhost;user=root;password=root;database=teste;port=3306;pooling=true;min pool size =2;connection timeout=10000;";
                    conexao = new MySqlConnection(connStr);
                    conexao.Open();
                    return conexao;
                }
                else
                {
                    return conexao;
                }
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
                return null;
            }
        }


    }
}
