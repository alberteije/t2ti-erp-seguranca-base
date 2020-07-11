package seguranca.vo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ControlePagamentoVO {

    private Integer id;
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    public ControlePagamentoVO() {
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the a
     */
    public String getA() {
        return a;
    }

    /**
     * @param a the a to set
     */
    public void setA(String a) {
        this.a = a;
    }

    /**
     * @return the b
     */
    public String getB() {
        return b;
    }

    /**
     * @param b the b to set
     */
    public void setB(String b) {
        this.b = b;
    }

    /**
     * @return the c
     */
    public String getC() {
        return c;
    }

    /**
     * @param c the c to set
     */
    public void setC(String c) {
        this.c = c;
    }

    /**
     * @return the d
     */
    public String getD() {
        return d;
    }

    /**
     * @param d the d to set
     */
    public void setD(String d) {
        this.d = d;
    }

    /**
     * @return the e
     */
    public String getE() {
        return e;
    }

    /**
     * @param e the e to set
     */
    public void setE(String e) {
        this.e = e;
    }

    /**
     * @return the f
     */
    public String getF() {
        return f;
    }

    /**
     * @param f the f to set
     */
    public void setF(String f) {
        this.f = f;
    }

// para carregar os dados a partir do arquivo
    public static List<ControlePagamentoVO> ListaDoArquivo(String path) throws FileNotFoundException, IOException {
        List<ControlePagamentoVO> pagamentos = new ArrayList<ControlePagamentoVO>();

        File file = new File(path);

        if (file.exists()) {
            BufferedReader bfw = new BufferedReader(new FileReader(path));

            String line = "";
            String[] columns;

            while ((line = bfw.readLine()) != null) {
                columns = line.split("\t");
                ControlePagamentoVO pagamento = new ControlePagamentoVO();
                pagamento.id = Integer.parseInt(columns[0]);
                pagamento.a = columns[1];
                pagamento.b = columns[2];
                pagamento.c = columns[3];
                pagamento.d = columns[4];
                pagamento.e = columns[5];
                pagamento.f = columns[6];

                pagamentos.add(pagamento);
            }

        }

        return pagamentos;
    }

}
