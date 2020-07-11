package seguranca.vo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ComputadorVO {

    private Integer id;
    private String a;
    private String b;

    public ComputadorVO() {
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

// para carregar os dados a partir do arquivo
    public static List<ComputadorVO> ListaDoArquivo(String path) throws FileNotFoundException, IOException {
        List<ComputadorVO> computadores = new ArrayList<ComputadorVO>();

        File file = new File(path);

        if (file.exists()) {
            BufferedReader bfw = new BufferedReader(new FileReader(path));

            String line = "";
            String[] columns;

            while ((line = bfw.readLine()) != null) {
                columns = line.split("\t");
                ComputadorVO computador = new ComputadorVO();
                computador.id = Integer.parseInt(columns[0]);
                computador.a = columns[1];
                computador.b = columns[2];
                

                computadores.add(computador);
            }

        }

        return computadores;
    }

}
