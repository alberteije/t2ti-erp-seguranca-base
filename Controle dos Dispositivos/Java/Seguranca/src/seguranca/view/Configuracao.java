package seguranca.view;

import java.awt.Dimension;
import java.awt.FontMetrics;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.DefaultListSelectionModel;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import seguranca.bd.AcessoBanco;
import seguranca.infra.ComputadorColumnModel;
import seguranca.infra.ComputadorTableModel;
import seguranca.vo.ComputadorVO;

public class Configuracao extends javax.swing.JDialog {

    // Exercício: Criptografe os dados na tabela conforme exemplo anterior
    // Exercício: Implemente o controle num arquivo fake conforme exemplo anterior
    String consultaSQL;
    Statement stm;
    PreparedStatement pstm;
    ResultSet rs;
    AcessoBanco bd = new AcessoBanco();

    List<ComputadorVO> listaComputador;
    List<ComputadorVO> listaDispositivosNaSessao;

    public Configuracao(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        listaDispositivosNaSessao = new ArrayList<ComputadorVO>();
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
        EditComandoRecebido = new javax.swing.JTextField();
        EditQuantidade = new javax.swing.JTextField();
        EditIdDispositivoCliente = new javax.swing.JTextField();
        botaoInserir = new javax.swing.JButton();
        botaoConsultar = new javax.swing.JButton();
        botaoConsultarDispositivos = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Configurador");
        setModal(true);
        setResizable(false);
        getContentPane().setLayout(new java.awt.CardLayout());

        panelPrincipal.setLayout(new java.awt.GridBagLayout());

        jLabel1.setBackground(new java.awt.Color(204, 204, 204));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Controle dos Dispositivos");
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
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "id", "a", "b"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        jPanel1.add(jScrollPane1);
        jScrollPane1.setBounds(10, 110, 680, 110);

        jTextArea1.setColumns(20);
        jTextArea1.setLineWrap(true);
        jTextArea1.setRows(5);
        jScrollPane3.setViewportView(jTextArea1);

        jPanel1.add(jScrollPane3);
        jScrollPane3.setBounds(10, 260, 540, 110);

        EditComandoRecebido.setText("http://localhost:8080/Session/c400a910c264e53bbcbe87a9acbbd193/");
        jPanel1.add(EditComandoRecebido);
        EditComandoRecebido.setBounds(10, 30, 680, 20);

        EditQuantidade.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        EditQuantidade.setText("2");
        jPanel1.add(EditQuantidade);
        EditQuantidade.setBounds(340, 80, 350, 20);

        EditIdDispositivoCliente.setText("c400a910c264e53bbcbe87a9acbbd193");
        jPanel1.add(EditIdDispositivoCliente);
        EditIdDispositivoCliente.setBounds(10, 80, 320, 20);

        botaoInserir.setText("Inserir");
        botaoInserir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoInserirActionPerformed(evt);
            }
        });
        jPanel1.add(botaoInserir);
        botaoInserir.setBounds(560, 260, 130, 23);

        botaoConsultar.setText("Consultar");
        botaoConsultar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoConsultarActionPerformed(evt);
            }
        });
        jPanel1.add(botaoConsultar);
        botaoConsultar.setBounds(560, 290, 130, 23);

        botaoConsultarDispositivos.setText("Consultar Dispositivos Cadastrados no Banco de Dados");
        botaoConsultarDispositivos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoConsultarDispositivosActionPerformed(evt);
            }
        });
        jPanel1.add(botaoConsultarDispositivos);
        botaoConsultarDispositivos.setBounds(10, 230, 680, 23);

        jLabel2.setText("Comando Recebido da Aplicação Cliente:");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(10, 10, 310, 14);

        jLabel3.setText("Identificação do Dispositivo Cliente:");
        jPanel1.add(jLabel3);
        jLabel3.setBounds(10, 60, 290, 14);

        jLabel4.setText("Quantidade Máxima de Dispositivos Permitidos:");
        jPanel1.add(jLabel4);
        jLabel4.setBounds(340, 60, 350, 14);

        jTabbedPane1.addTab("Dados", jPanel1);

        panelComponentes.add(jTabbedPane1);
        jTabbedPane1.setBounds(5, -3, 710, 410);
        jTabbedPane1.getAccessibleContext().setAccessibleName("Dados");

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
            jTextArea1.setText("");
            for (int i = 0; i <= listaDispositivosNaSessao.size() - 1; i++)
            {
                jTextArea1.append("\n-- Id: " + listaDispositivosNaSessao.get(i).getId() + " -- Código: " + listaDispositivosNaSessao.get(i).getA());
            }
    }//GEN-LAST:event_botaoConsultarActionPerformed

    private void botaoInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoInserirActionPerformed
        boolean Encontrou = false;

        if (listaDispositivosNaSessao.size() >= Integer.parseInt(EditQuantidade.getText())) {
            JOptionPane.showMessageDialog(rootPane, "Quantidade máxima de dispositivos atingida.");
            return;
        } else {
            for (int i = 0; i <= listaComputador.size() - 1; i++) {
                if (listaComputador.get(i).getA().equals(EditIdDispositivoCliente.getText())) {
                    Encontrou = true;

                    if (listaComputador.get(i).getB().equals("S")) {
                        ComputadorVO Computador = new ComputadorVO();
                        Computador.setId(listaComputador.get(i).getId());
                        Computador.setA(listaComputador.get(i).getA());
                        Computador.setB(listaComputador.get(i).getB());

                        listaDispositivosNaSessao.add(Computador);
                    } else {
                        JOptionPane.showMessageDialog(rootPane, "Dispositivo não liberado para uso.");
                        return;
                    }
                    break;
                }
            }
        }

        if (!Encontrou) {
                        JOptionPane.showMessageDialog(rootPane, "Dispositivo não localizado na base de dados.");
        }

        botaoConsultarActionPerformed(evt);

        // Exercício: E se o dispositivo já tiver na sessão?
    }//GEN-LAST:event_botaoInserirActionPerformed

    private void botaoConsultarDispositivosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoConsultarDispositivosActionPerformed
        listaComputador = new ArrayList<ComputadorVO>();

        consultaSQL = " select * from computador";

        try {
            stm = bd.conectar().createStatement();
            rs = stm.executeQuery(consultaSQL);
            rs.beforeFirst();
            rs.beforeFirst();
            while (rs.next()) {
                ComputadorVO posicao = new ComputadorVO();
                posicao.setId(rs.getInt("id"));
                posicao.setA(rs.getString("a"));
                posicao.setB(rs.getString("b"));
                listaComputador.add(posicao);
            }

            jTable1.setModel(new ComputadorTableModel(listaComputador));
            jTable1.setSelectionModel(new DefaultListSelectionModel() {

                public String toString() {
                    return "jTable1";
                }
            });

            jTable1.setAutoCreateColumnsFromModel(false);
            jTable1.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
            FontMetrics fm = jTable1.getFontMetrics(jTable1.getFont());
            jTable1.setColumnModel(new ComputadorColumnModel(fm));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            bd.desconectar();
        }
    }//GEN-LAST:event_botaoConsultarDispositivosActionPerformed

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
    private javax.swing.JTextField EditComandoRecebido;
    private javax.swing.JTextField EditIdDispositivoCliente;
    private javax.swing.JTextField EditQuantidade;
    private javax.swing.JButton botaoConsultar;
    private javax.swing.JButton botaoConsultarDispositivos;
    private javax.swing.JButton botaoInserir;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
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
