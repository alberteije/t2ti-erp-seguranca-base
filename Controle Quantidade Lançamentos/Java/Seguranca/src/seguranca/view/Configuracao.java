package seguranca.view;

import java.awt.Dimension;
import java.awt.FontMetrics;
import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.DefaultListSelectionModel;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import seguranca.bd.AcessoBanco;
import seguranca.infra.Biblioteca;
import seguranca.infra.ControlePagamentoColumnModel;
import seguranca.infra.ControlePagamentoTableModel;
import seguranca.vo.ControlePagamentoVO;

public class Configuracao extends javax.swing.JDialog {

    String consultaSQL;
    Statement stm;
    PreparedStatement pstm;
    ResultSet rs;
    AcessoBanco bd = new AcessoBanco();
    List<ControlePagamentoVO> listaPagamentos;

    public Configuracao(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        this.setPreferredSize(new Dimension(730, 500));
        this.pack();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {
        java.awt.GridBagConstraints gridBagConstraints;

        panelPrincipal = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        panelComponentes = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        EditMes = new javax.swing.JTextField();
        EditAno = new javax.swing.JTextField();
        EditVencimento = new javax.swing.JTextField();
        EditBloqueio = new javax.swing.JTextField();
        EditLiberado = new javax.swing.JTextField();
        botaoInserir = new javax.swing.JButton();
        botaoConsultar = new javax.swing.JButton();
        botaoConsultarArquivo = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Configurador");
        setModal(true);
        setResizable(false);
        getContentPane().setLayout(new java.awt.CardLayout());

        panelPrincipal.setLayout(new java.awt.GridBagLayout());

        jLabel1.setBackground(new java.awt.Color(204, 204, 204));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Controle da Quantidade de Lançamentos");
        jLabel1.setOpaque(true);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        panelPrincipal.add(jLabel1, gridBagConstraints);

        panelComponentes.setLayout(null);

        jPanel1.setLayout(null);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null}
            },
            new String [] {
                "id", "a", "b", "c", "d", "e", "f"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jPanel1.add(jScrollPane1);
        jScrollPane1.setBounds(10, 10, 680, 160);

        jTextArea1.setColumns(20);
        jTextArea1.setLineWrap(true);
        jTextArea1.setRows(5);
        jTextArea1.setText("Quantidade de Lançamentos permitida para os Pagamentos: 5");
        jScrollPane3.setViewportView(jTextArea1);

        jPanel1.add(jScrollPane3);
        jScrollPane3.setBounds(10, 180, 680, 120);

        EditMes.setText("Mes");
        jPanel1.add(EditMes);
        EditMes.setBounds(10, 320, 60, 20);

        EditAno.setText("Ano");
        jPanel1.add(EditAno);
        EditAno.setBounds(10, 350, 60, 20);

        EditVencimento.setText("Vencimento");
        jPanel1.add(EditVencimento);
        EditVencimento.setBounds(80, 320, 80, 20);

        EditBloqueio.setText("Bloqueio");
        jPanel1.add(EditBloqueio);
        EditBloqueio.setBounds(80, 350, 80, 20);

        EditLiberado.setText("Liberado");
        jPanel1.add(EditLiberado);
        EditLiberado.setBounds(170, 350, 80, 20);

        botaoInserir.setText("Inserir");
        botaoInserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoInserirActionPerformed(evt);
            }
        });
        jPanel1.add(botaoInserir);
        botaoInserir.setBounds(423, 350, 130, 23);

        botaoConsultar.setText("Consultar");
        botaoConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoConsultarActionPerformed(evt);
            }
        });
        jPanel1.add(botaoConsultar);
        botaoConsultar.setBounds(560, 350, 130, 23);

        botaoConsultarArquivo.setText("Consultar Arquivo");
        botaoConsultarArquivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoConsultarArquivoActionPerformed(evt);
            }
        });
        jPanel1.add(botaoConsultarArquivo);
        botaoConsultarArquivo.setBounds(260, 350, 150, 23);

        jTabbedPane1.addTab("Via Banco", jPanel1);

        panelComponentes.add(jTabbedPane1);
        jTabbedPane1.setBounds(5, -3, 710, 410);

        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.gridx = 0;
        gridBagConstraints.gridy = 1;
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.weightx = 1.0;
        gridBagConstraints.weighty = 1.0;
        panelPrincipal.add(panelComponentes, gridBagConstraints);

        getContentPane().add(panelPrincipal, "card2");

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void botaoConsultarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoConsultarActionPerformed

        listaPagamentos = new ArrayList<ControlePagamentoVO>();

        consultaSQL = " select * from controle_pagamento";

        try {
            stm = bd.conectar().createStatement();
            rs = stm.executeQuery(consultaSQL);
            rs.beforeFirst();
            rs.beforeFirst();
            while (rs.next()) {
                ControlePagamentoVO posicao = new ControlePagamentoVO();
                posicao.setId(rs.getInt("id"));
                posicao.setA(rs.getString("a"));
                posicao.setB(rs.getString("b"));
                posicao.setC(rs.getString("c"));
                posicao.setD(rs.getString("d"));
                posicao.setE(rs.getString("e"));
                posicao.setF(rs.getString("f"));
                listaPagamentos.add(posicao);
            }

            jTable1.setModel(new ControlePagamentoTableModel(listaPagamentos));
            jTable1.setSelectionModel(new DefaultListSelectionModel() {

                public String toString() {
                    return "jTable1";
                }
            });

            jTable1.setAutoCreateColumnsFromModel(false);
            jTable1.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
            FontMetrics fm = jTable1.getFontMetrics(jTable1.getFont());
            jTable1.setColumnModel(new ControlePagamentoColumnModel(fm));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            bd.desconectar();
        }

    }//GEN-LAST:event_botaoConsultarActionPerformed

    private void botaoInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoInserirActionPerformed
        if (listaPagamentos.size() <= 5) {
            Connection con = bd.conectar();
            try {
                consultaSQL = "insert into controle_pagamento ( "
                        + "a,b,c,d,e,f)"
                        + " values ("
                        + "?,?,?,?,?,?)";

                pstm = con.prepareStatement(consultaSQL);
                pstm.setString(1, Biblioteca.Encripta(EditMes.getText()));
                pstm.setString(2, Biblioteca.Encripta(EditAno.getText()));
                pstm.setString(3, Biblioteca.Encripta(EditVencimento.getText()));
                pstm.setString(4, Biblioteca.Encripta(EditBloqueio.getText()));
                pstm.setString(5, Biblioteca.Encripta(EditLiberado.getText()));
                pstm.setString(6, Biblioteca.MD5String(EditMes.getText() + EditAno.getText() + EditVencimento.getText() + EditBloqueio.getText() + EditLiberado.getText()));
                pstm.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                bd.desconectar();
            }
        } else {
            JOptionPane.showMessageDialog(rootPane, "Não é possível realizar mais lançamentos nessa tabela.");
        }
    }//GEN-LAST:event_botaoInserirActionPerformed

    private void botaoConsultarArquivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoConsultarArquivoActionPerformed
        try {
            String caminho = System.getProperty("user.dir") + System.getProperty("file.separator") + "fake.dll";
            listaPagamentos = ControlePagamentoVO.ListaDoArquivo(caminho);

            jTable1.setModel(new ControlePagamentoTableModel(listaPagamentos));
            jTable1.setSelectionModel(new DefaultListSelectionModel() {

                public String toString() {
                    return "jTable1";
                }
            });

            jTable1.setAutoCreateColumnsFromModel(false);
            jTable1.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
            FontMetrics fm = jTable1.getFontMetrics(jTable1.getFont());
            jTable1.setColumnModel(new ControlePagamentoColumnModel(fm));
        } catch (Exception e) {
            e.printStackTrace();
        }

    }//GEN-LAST:event_botaoConsultarArquivoActionPerformed

    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                Configuracao dialog = new Configuracao(new javax.swing.JFrame(), true);
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField EditAno;
    private javax.swing.JTextField EditBloqueio;
    private javax.swing.JTextField EditLiberado;
    private javax.swing.JTextField EditMes;
    private javax.swing.JTextField EditVencimento;
    private javax.swing.JButton botaoConsultar;
    private javax.swing.JButton botaoConsultarArquivo;
    private javax.swing.JButton botaoInserir;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JPanel panelComponentes;
    private javax.swing.JPanel panelPrincipal;
    // End of variables declaration//GEN-END:variables

}
