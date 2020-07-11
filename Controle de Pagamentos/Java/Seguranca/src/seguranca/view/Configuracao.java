package seguranca.view;

import java.awt.Dimension;
import java.awt.FontMetrics;
import java.sql.Connection;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
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
        botaoDecifrar = new javax.swing.JButton();
        botaoHash = new javax.swing.JButton();
        botaoAdimplencia = new javax.swing.JButton();
        botaoChave = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        EditMes = new javax.swing.JTextField();
        EditAno = new javax.swing.JTextField();
        EditVencimento = new javax.swing.JTextField();
        EditBloqueio = new javax.swing.JTextField();
        EditLiberado = new javax.swing.JTextField();
        EditChaveDesbloqueio = new javax.swing.JTextField();
        botaoInserir = new javax.swing.JButton();
        botaoConsultar = new javax.swing.JButton();
        botaoDesbloquear = new javax.swing.JButton();
        botaoConsultarArquivo = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Configurador");
        setModal(true);
        setResizable(false);
        getContentPane().setLayout(new java.awt.CardLayout());

        panelPrincipal.setLayout(new java.awt.GridBagLayout());

        jLabel1.setBackground(new java.awt.Color(204, 204, 204));
        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Controle de Pagamentos");
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

        botaoDecifrar.setText("Decifrar");
        botaoDecifrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoDecifrarActionPerformed(evt);
            }
        });
        jPanel1.add(botaoDecifrar);
        botaoDecifrar.setBounds(540, 180, 150, 23);

        botaoHash.setText("Verificar Hash");
        botaoHash.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoHashActionPerformed(evt);
            }
        });
        jPanel1.add(botaoHash);
        botaoHash.setBounds(540, 210, 150, 23);

        botaoAdimplencia.setText("Verificar Adimplência");
        botaoAdimplencia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoAdimplenciaActionPerformed(evt);
            }
        });
        jPanel1.add(botaoAdimplencia);
        botaoAdimplencia.setBounds(540, 240, 150, 23);

        botaoChave.setText("Chave Desbloqueio");
        botaoChave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoChaveActionPerformed(evt);
            }
        });
        jPanel1.add(botaoChave);
        botaoChave.setBounds(540, 270, 150, 23);

        jTextArea1.setColumns(20);
        jTextArea1.setLineWrap(true);
        jTextArea1.setRows(5);
        jScrollPane3.setViewportView(jTextArea1);

        jPanel1.add(jScrollPane3);
        jScrollPane3.setBounds(10, 180, 520, 120);

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

        EditChaveDesbloqueio.setText("Chave Desbloqueio");
        jPanel1.add(EditChaveDesbloqueio);
        EditChaveDesbloqueio.setBounds(320, 310, 230, 20);

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

        botaoDesbloquear.setText("Desbloquear");
        botaoDesbloquear.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoDesbloquearActionPerformed(evt);
            }
        });
        jPanel1.add(botaoDesbloquear);
        botaoDesbloquear.setBounds(560, 310, 130, 23);

        botaoConsultarArquivo.setText("Consultar Arquivo");
        botaoConsultarArquivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoConsultarArquivoActionPerformed(evt);
            }
        });
        jPanel1.add(botaoConsultarArquivo);
        botaoConsultarArquivo.setBounds(260, 350, 150, 23);

        jTabbedPane1.addTab("Via Banco", jPanel1);

        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jTabbedPane1.addTab("Via Arquivo", jPanel2);

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

    private void botaoDecifrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoDecifrarActionPerformed
        try {
            jTextArea1.setText("");
            jTextArea1.append("Mês = " + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getA()));
            jTextArea1.append("\nAno = " + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getB()));
            jTextArea1.append("\nVencimento = " + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getC()));
            jTextArea1.append("\nBloqueio = " + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getD()));
            jTextArea1.append("\nLiberado = " + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getE()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_botaoDecifrarActionPerformed

    private void botaoHashActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoHashActionPerformed
        try {
            String HashRegistro = Biblioteca.MD5String(
                    Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getA())
                    + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getB())
                    + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getC())
                    + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getD())
                    + Biblioteca.Desencripta(listaPagamentos.get(jTable1.getSelectedRow()).getE())
            );

            jTextArea1.append("\n===================================");
            jTextArea1.append("\nId = " + listaPagamentos.get(jTable1.getSelectedRow()).getId());

            if (HashRegistro.equals(listaPagamentos.get(jTable1.getSelectedRow()).getF())) {
                jTextArea1.append("\nHash OK - Registro não violado.");
            } else {
                jTextArea1.append("\nHash Diferente - Registro violado.");
            }
            jTextArea1.append("\n===================================");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_botaoHashActionPerformed

    private void botaoInserirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoInserirActionPerformed
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
    }//GEN-LAST:event_botaoInserirActionPerformed

    private void botaoAdimplenciaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoAdimplenciaActionPerformed
        boolean Resultado = false;
        int indiceEncontrado = -1;

        java.util.Date date = new java.util.Date(System.currentTimeMillis());
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int ano = cal.get(Calendar.YEAR);
        int mes = cal.get(Calendar.MONTH);
        mes++;
        int dia = cal.get(Calendar.DAY_OF_MONTH);

        //  verifica se houve alguma tentativa de burlar os dados no banco de dados
        for (int i = 0; i <= listaPagamentos.size() - 1; i++) {
            jTable1.requestFocus();
            jTable1.changeSelection(i, 0, false, false);
            botaoHashActionPerformed(evt);
        }

        //  verifica se existe algum registro para o mês e para o ano - caso não exista, bloqueia o sistema.
        //  select * from tabela where mes=mes_atual and ano=ano_atual
        for (int i = 0; i <= listaPagamentos.size() - 1; i++) {

            int anoBanco = Integer.parseInt(Biblioteca.Desencripta(listaPagamentos.get(i).getB()));
            int mesBanco = Integer.parseInt(Biblioteca.Desencripta(listaPagamentos.get(i).getA()));

            if ((ano == anoBanco) && (mes == mesBanco)) {
                indiceEncontrado = i;
                jTable1.setRowSelectionInterval(indiceEncontrado, indiceEncontrado);
                Resultado = true;
                break;
            }
        }
        if (!Resultado) {
            JOptionPane.showMessageDialog(rootPane, "Não encontrou um registro com o mês e o ano atual... Sistema deve ser bloqueado.", "Mensagem", JOptionPane.INFORMATION_MESSAGE);
            return;
        }

        //  caso tenha encontrado o mes e ano, verifica se a data atual É maior que a data do vencimento
        if (indiceEncontrado > 0) {
            if (dia > Integer.parseInt(Biblioteca.Desencripta(listaPagamentos.get(indiceEncontrado).getC()))) {
                JOptionPane.showMessageDialog(rootPane, "A data atual é maior que a data do vencimento. Será que o cliente já pagou?", "Erro do Sistema", JOptionPane.QUESTION_MESSAGE);

                //  verifica se o cliente já realizou o pagamento através do campo Liberado
                if (Biblioteca.Desencripta(listaPagamentos.get(indiceEncontrado).getE()).equals("N")) {
                    JOptionPane.showMessageDialog(rootPane, "O cliente não pagou. Será que o sistema deve ser bloqueado?", "Erro do Sistema", JOptionPane.QUESTION_MESSAGE);

                    //  caso a data atual seja maior ou igual ? data definida para bloqueio, o sistema deve ser bloqueado
                    if (dia > Integer.parseInt(Biblioteca.Desencripta(listaPagamentos.get(indiceEncontrado).getD()))) {
                        JOptionPane.showMessageDialog(rootPane, "O sistema deve ser bloqueado. Informar o seguinte código para SH: \n\n" + listaPagamentos.get(jTable1.getSelectedRow()).getF(), "Mensagem", JOptionPane.INFORMATION_MESSAGE);
                    }
                } else {
                    JOptionPane.showMessageDialog(rootPane, "O cliente já pagou!", "Mensagem", JOptionPane.INFORMATION_MESSAGE);
                }
            }
        }
        //  Exercício: e se o cliente deixar de pagar durante dois meses?
    }//GEN-LAST:event_botaoAdimplenciaActionPerformed

    private void botaoChaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoChaveActionPerformed
        try {
            botaoDecifrarActionPerformed(evt);
            // 
            jTextArea1.append("\n=====================================================");
            jTextArea1.append("\nHash Registro Bloqueado  = " + listaPagamentos.get(jTable1.getSelectedRow()).getF());
            jTextArea1.append("\nChave Desbloqueio = " + Biblioteca.MD5String(listaPagamentos.get(jTable1.getSelectedRow()).getF() + "uma_chave"));
            jTextArea1.append("\n=====================================================");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_botaoChaveActionPerformed

    private void botaoDesbloquearActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoDesbloquearActionPerformed
        try {
            if (EditChaveDesbloqueio.getText().equals(Biblioteca.MD5String(listaPagamentos.get(jTable1.getSelectedRow()).getF() + "uma_chave"))) {
                // Exercício: qual o equívoco dessa instrução?
                consultaSQL = "update controle_pagamento set e = '" + Biblioteca.Encripta("S") + "'";
                try {
                    pstm = bd.conectar().prepareStatement(consultaSQL);
                    pstm.executeUpdate();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                JOptionPane.showMessageDialog(rootPane, "Dados Atualizados. Sistema Liberado!", "Mensagem", JOptionPane.INFORMATION_MESSAGE);
            } else {
                JOptionPane.showMessageDialog(rootPane, "Chave não confere - entre em contato com a SH.", "Mensagem", JOptionPane.INFORMATION_MESSAGE);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }//GEN-LAST:event_botaoDesbloquearActionPerformed

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

        // Exercício: implemente os controles realacionados ao arquivo - analise se os métodos do banco podem ser totalmente aproveitados
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
    private javax.swing.JTextField EditChaveDesbloqueio;
    private javax.swing.JTextField EditLiberado;
    private javax.swing.JTextField EditMes;
    private javax.swing.JTextField EditVencimento;
    private javax.swing.JButton botaoAdimplencia;
    private javax.swing.JButton botaoChave;
    private javax.swing.JButton botaoConsultar;
    private javax.swing.JButton botaoConsultarArquivo;
    private javax.swing.JButton botaoDecifrar;
    private javax.swing.JButton botaoDesbloquear;
    private javax.swing.JButton botaoHash;
    private javax.swing.JButton botaoInserir;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextArea jTextArea1;
    private javax.swing.JPanel panelComponentes;
    private javax.swing.JPanel panelPrincipal;
    // End of variables declaration//GEN-END:variables

}
