package seguranca.infra;

import java.awt.FontMetrics;
import javax.swing.table.DefaultTableColumnModel;
import javax.swing.table.TableColumn;

public class ComputadorColumnModel extends DefaultTableColumnModel {

    public ComputadorColumnModel(FontMetrics fm) {
        addColumn(criaColuna(0, 70, fm, false, "id"));
        addColumn(criaColuna(1, 300, fm, false, "a"));
        addColumn(criaColuna(2, 100, fm, false, "b"));
    }

    private TableColumn criaColuna(int columnIndex, int largura, FontMetrics fm, boolean resizable, String titulo) {
        int larguraTitulo = fm.stringWidth(titulo + "  ");
        if (largura < larguraTitulo) {
            largura = larguraTitulo;
        }

        TableColumn col = new TableColumn(columnIndex);
        col.setCellRenderer(new ComputadorCellRenderer());
        col.setHeaderRenderer(null);
        col.setHeaderValue(titulo);
        col.setPreferredWidth(largura);
        if (!resizable) {
            col.setMaxWidth(largura);
            col.setMinWidth(largura);
        }
        col.setResizable(resizable);
        return col;
    }
}