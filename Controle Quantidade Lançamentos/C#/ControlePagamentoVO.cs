using System;
using System.Collections.Generic;
using System.IO;

namespace VO
{


    public class ControlePagamentoVO
    {

        public int Id { get; set; }
        public string a { get; set; }
        public string b { get; set; }
        public string c { get; set; }
        public string d { get; set; }
        public string e { get; set; }
        public string f { get; set; }

        // para carregar os dados a partir do arquivo
        public static List<ControlePagamentoVO> ListaDoArquivo(string path)
        {
            var pagamentos = new List<ControlePagamentoVO>();

            if (File.Exists(path))
            {

                foreach (var line in File.ReadAllLines(path))
                {
                    var columns = line.Split('\t');
                    pagamentos.Add(new ControlePagamentoVO
                    {
                        Id = Convert.ToInt32(columns[0]),
                        a = columns[1],
                        b = columns[2],
                        c = columns[3],
                        d = columns[4],
                        e = columns[5],
                        f = columns[6]
                    });
                }

            }

            return pagamentos;
        }
    }

}
