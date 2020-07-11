
package seguranca.infra;

import java.awt.Color;
import java.awt.Component;
import javax.swing.JLabel;
import javax.swing.table.DefaultTableCellRenderer;

public class ComputadorCellRenderer extends DefaultTableCellRenderer {

    public ComputadorCellRenderer() {
        super();
    }

    public Component getTableCellRendererComponent(javax.swing.JTable table,
            Object value, boolean isSelected, boolean hasFocus, int row, int column) {

        JLabel label = (JLabel) super.getTableCellRendererComponent(
                table, value, isSelected, hasFocus, row, column);

        Color corFundoZebrado = new Color(240, 240, 240);
        Color corFundoNormal = new Color(255, 255, 230);

        label.setFont(new java.awt.Font("Tahoma", 0, 12));

        if ((row % 2) == 0) {
            label.setBackground(corFundoNormal);
        } else {
            label.setBackground(corFundoZebrado);
        }

        if (isSelected) {
            label.setBackground(Color.WHITE);
        }

        if (column == 0) {
            label.setHorizontalAlignment(LEFT);
        } else if (column == 1) {
            label.setHorizontalAlignment(LEFT);
        } else if (column == 2) {
            label.setHorizontalAlignment(LEFT);
        } 

        return label;
    }
}
