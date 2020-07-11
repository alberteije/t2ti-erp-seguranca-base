package seguranca.infra;

import java.awt.FontMetrics;
import javax.swing.table.DefaultTableColumnModel;
import javax.swing.table.TableColumn;

public class ControlePagamentoColumnModel extends DefaultTableColumnModel {

    public ControlePagamentoColumnModel(FontMetrics fm) {
        addColumn(criaColuna(0, 150, fm, false, "id"));
        addColumn(criaColuna(1, 70, fm, false, "a"));
        addColumn(criaColuna(2, 70, fm, false, "b"));
        addColumn(criaColuna(3, 70, fm, false, "c"));
        addColumn(criaColuna(4, 70, fm, false, "d"));
        addColumn(criaColuna(5, 70, fm, false, "e"));
        addColumn(criaColuna(6, 70, fm, false, "f"));
    }

    private TableColumn criaColuna(int columnIndex, int largura, FontMetrics fm, boolean resizable, String titulo) {
        int larguraTitulo = fm.stringWidth(titulo + "  ");
        if (largura < larguraTitulo) {
            largura = larguraTitulo;
        }

        TableColumn col = new TableColumn(columnIndex);
        col.setCellRenderer(new ControlePagamentoCellRenderer());
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