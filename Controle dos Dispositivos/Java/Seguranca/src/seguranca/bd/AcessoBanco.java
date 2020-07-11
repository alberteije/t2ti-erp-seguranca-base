package seguranca.bd;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;
import javax.swing.JOptionPane;

public class AcessoBanco {

    Connection con;
    Connection conRetaguarda;
    String bancoPaf;
    String bancoRetaguarda;

    public Connection conectar() {
        // Carrega as configurações de conexão
        try {
            Properties arquivoConexao = new Properties();
            arquivoConexao.load(new FileInputStream(new File(System.getProperty("user.dir")
                    + System.getProperty("file.separator")
                    + "conexao.properties")));
            bancoPaf = arquivoConexao.getProperty("sgbd.BD");
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(null, "Não foi possível acessar o arquivo de configuração!", "Erro do Sistema", JOptionPane.ERROR_MESSAGE);
        }

        try {
            //Seta as conexões para o MySQL
            if (bancoPaf.equals("MySQL")) {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1/teste?user=root&password=root");
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "Não foi possível encontrar o Driver!", "Aviso do Sistema", JOptionPane.INFORMATION_MESSAGE);
        } catch (SQLException ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, "Não foi possível conectar ao banco!", "Aviso do Sistema", JOptionPane.INFORMATION_MESSAGE);
        }
        return con;
    }

    public void desconectar() {
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
   
}
