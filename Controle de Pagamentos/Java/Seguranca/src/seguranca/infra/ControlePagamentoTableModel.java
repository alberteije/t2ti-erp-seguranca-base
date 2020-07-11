package seguranca.infra;

import java.util.List;
import javax.swing.table.AbstractTableModel;
import seguranca.vo.ControlePagamentoVO;

public class ControlePagamentoTableModel extends AbstractTableModel {

    private List<ControlePagamentoVO> listaPagamentos;

    public ControlePagamentoTableModel(List<ControlePagamentoVO> listaPagamentos) {
        this.listaPagamentos = listaPagamentos;
    }

    public Object getValueAt(int rowIndex, int columnIndex) {

        ControlePagamentoVO pagamento = listaPagamentos.get(rowIndex);

        switch (columnIndex) {
            case 0:
                return pagamento.getId();
            case 1:
                return pagamento.getA();
            case 2:
                return pagamento.getB();
            case 3:
                return pagamento.getC();
            case 4:
                return pagamento.getD();
            case 5:
                return pagamento.getE();
            case 6:
                return pagamento.getF();
        }
        return null;
    }

    public int getRowCount() {

        return listaPagamentos.size();
    }

    public int getColumnCount() {
        return 7;
    }

    public ControlePagamentoVO getValues(int rowIndex) {
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
            case 3:
                listaPagamentos.get(row).setC(value.toString());
                break;
            case 4:
                listaPagamentos.get(row).setD(value.toString());
                break;
            case 5:
                listaPagamentos.get(row).setE(value.toString());
                break;
            case 6:
                listaPagamentos.get(row).setF(value.toString());
                break;
        }
        fireTableCellUpdated(row, col);
    }
}
