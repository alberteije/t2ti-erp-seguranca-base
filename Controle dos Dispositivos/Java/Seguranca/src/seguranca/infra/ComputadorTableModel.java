package seguranca.infra;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import seguranca.vo.ComputadorVO;

public class ComputadorTableModel extends AbstractTableModel {

    private List<ComputadorVO> listaPagamentos;

    public ComputadorTableModel(List<ComputadorVO> listaPagamentos) {
        this.listaPagamentos = listaPagamentos;
    }

    public Object getValueAt(int rowIndex, int columnIndex) {

        ComputadorVO pagamento = listaPagamentos.get(rowIndex);

        switch (columnIndex) {
            case 0:
                return pagamento.getId();
            case 1:
                return pagamento.getA();
            case 2:
                return pagamento.getB();
        }
        return null;
    }

    public int getRowCount() {

        return listaPagamentos.size();
    }

    public int getColumnCount() {
        return 3;
    }

    public ComputadorVO getValues(int rowIndex) {
        return listaPagamentos.get(rowIndex);
    }

    public boolean isCellEditable(int row, int col) {
        //configura a edição das colunas
        if (col == 0) {
            return false;
        } else {
            return true;
        }
    }

    public void setValueAt(Object value, int row, int col) {

        String valor = "";
        if (value.toString().equals("")) {
            valor = "0";
        } else {
            valor = value.toString();
        }

        switch (col) {
            case 1:
                listaPagamentos.get(row).setA(value.toString());
                break;
            case 2:
                listaPagamentos.get(row).setB(value.toString());
                break;
        }
        fireTableCellUpdated(row, col);
    }
}
