package seguranca.view;

import com.ice.jni.registry.Registry;
import com.ice.jni.registry.RegistryException;
import com.ice.jni.registry.RegistryKey;
import com.ice.jni.registry.RegistryValue;
import seguranca.infra.Biblioteca;
import java.awt.Color;
import java.awt.Dimension;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import javax.swing.JOptionPane;

public class Configuracao extends javax.swing.JDialog {

    public Configuracao(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        this.setPreferredSize(new Dimension(730, 550));
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
        panelVerificarArquivo = new javax.swing.JPanel();
        botaoVerificarArquivo = new javax.swing.JButton();
        panelConjunto = new javax.swing.JPanel();
        EditContraChaveConjunto = new javax.swing.JTextField();
        botaoGerarConjunto = new javax.swing.JButton();
        panelRegistroWindows = new javax.swing.JPanel();
        EditValor = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        EditChave = new javax.swing.JTextField();
        botaoCarregarRegistro = new javax.swing.JButton();
        botaoRemoverRegistro = new javax.swing.JButton();
        botaoTestarRegistro = new javax.swing.JButton();
        botaoGravarRegistro = new javax.swing.JButton();
        panelHD = new javax.swing.JPanel();
        EditContraChaveHD = new javax.swing.JTextField();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        EditChaveHD = new javax.swing.JTextField();
        botaoGerarChaveHD = new javax.swing.JButton();
        botaoLerChaveHD = new javax.swing.JButton();
        panelSerialWindows = new javax.swing.JPanel();
        EditContraChaveSerial = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        EditChaveSerial = new javax.swing.JTextField();
        botaoGerarChaveWindows = new javax.swing.JButton();
        botaoLerChaveWindows = new javax.swing.JButton();
        panelMAC = new javax.swing.JPanel();
        EditContraChaveMAC = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        EditChaveMAC = new javax.swing.JTextField();
        botaoGerarChaveMAC = new javax.swing.JButton();
        botaoLerChaveMAC = new javax.swing.JButton();
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
        jLabel1.setText("Controle Contra Cópia");
        jLabel1.setOpaque(true);
        gridBagConstraints = new java.awt.GridBagConstraints();
        gridBagConstraints.fill = java.awt.GridBagConstraints.BOTH;
        gridBagConstraints.anchor = java.awt.GridBagConstraints.NORTH;
        gridBagConstraints.insets = new java.awt.Insets(10, 10, 10, 10);
        panelPrincipal.add(jLabel1, gridBagConstraints);

        panelComponentes.setLayout(null);

        jPanel1.setLayout(null);

        panelVerificarArquivo.setBackground(new Color(255,255,255,0));
        panelVerificarArquivo.setBorder(javax.swing.BorderFactory.createTitledBorder("01 - Verificar Arquivo:"));
        panelVerificarArquivo.setLayout(null);

        botaoVerificarArquivo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
        botaoVerificarArquivo.setText("Verificar Arquivo");
        botaoVerificarArquivo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoVerificarArquivoActionPerformed(evt);
            }
        });
        panelVerificarArquivo.add(botaoVerificarArquivo);
        botaoVerificarArquivo.setBounds(10, 21, 330, 25);

        jPanel1.add(panelVerificarArquivo);
        panelVerificarArquivo.setBounds(0, 10, 350, 60);
        panelVerificarArquivo.getAccessibleContext().setAccessibleName("Verificar Arquivo:");

        panelConjunto.setBackground(new Color(255,255,255,0));
        panelConjunto.setBorder(javax.swing.BorderFactory.createTitledBorder("06 - Conjunto"));
        panelConjunto.setLayout(null);
        panelConjunto.add(EditContraChaveConjunto);
        EditContraChaveConjunto.setBounds(144, 35, 530, 20);

        botaoGerarConjunto.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
        botaoGerarConjunto.setText("Gerar");
        botaoGerarConjunto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botaoGerarConjuntoActionPerformed(evt);
            }
        });
        panelConjunto.add(botaoGerarConjunto);
        botaoGerarConjunto.setBounds(10, 30, 129, 25);

        jPanel1.add(panelConjunto);
        panelConjunto.setBounds(0, 350, 690, 70);

        panelRegistroWindows.setBackground(new Color(255,255,255,0));
        panelRegistroWindows.setBorder(javax.swing.BorderFactory.createTitledBorder("02 - Manipular Registro do Windows"));
        panelRegistroWindows.setLayout(null);

        EditValor.setText("OK");
        panelRegistroWindows.add(EditValor);
        EditValor.setBounds(176, 35, 160, 20);

        jLabel8.setText("Valor:");
        panelRegistroWindows.add(jLabel8);
        jLabel8.setBounds(180, 20, 120, 14);

        jLabel9.setText("Chave:");
        panelRegistroWindows.add(jLabel9);
        jLabel9.setBounds(10, 20, 110, 14);

        EditChave.setText("Software\\T2Ti\\");
            panelRegistroWindows.add(EditChave);
            EditChave.setBounds(11, 35, 160, 20);

            botaoCarregarRegistro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoCarregarRegistro.setText("Carregar");
            botaoCarregarRegistro.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoCarregarRegistroActionPerformed(evt);
                }
            });
            panelRegistroWindows.add(botaoCarregarRegistro);
            botaoCarregarRegistro.setBounds(170, 60, 170, 25);

            botaoRemoverRegistro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoRemoverRegistro.setText("Remover");
            botaoRemoverRegistro.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoRemoverRegistroActionPerformed(evt);
                }
            });
            panelRegistroWindows.add(botaoRemoverRegistro);
            botaoRemoverRegistro.setBounds(10, 90, 160, 25);

            botaoTestarRegistro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoTestarRegistro.setText("Testar");
            botaoTestarRegistro.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoTestarRegistroActionPerformed(evt);
                }
            });
            panelRegistroWindows.add(botaoTestarRegistro);
            botaoTestarRegistro.setBounds(170, 90, 170, 25);

            botaoGravarRegistro.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoGravarRegistro.setText("Gravar");
            botaoGravarRegistro.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoGravarRegistroActionPerformed(evt);
                }
            });
            panelRegistroWindows.add(botaoGravarRegistro);
            botaoGravarRegistro.setBounds(10, 60, 160, 25);

            jPanel1.add(panelRegistroWindows);
            panelRegistroWindows.setBounds(0, 70, 350, 130);

            panelHD.setBackground(new Color(255,255,255,0));
            panelHD.setBorder(javax.swing.BorderFactory.createTitledBorder("03 - Número do HD"));
            panelHD.setMinimumSize(new java.awt.Dimension(300, 166));
            panelHD.setPreferredSize(new java.awt.Dimension(300, 166));
            panelHD.setLayout(null);
            panelHD.add(EditContraChaveHD);
            EditContraChaveHD.setBounds(10, 90, 310, 20);

            jLabel10.setText("Contra Chave:");
            panelHD.add(jLabel10);
            jLabel10.setBounds(10, 70, 160, 14);

            jLabel11.setText("Chave:");
            panelHD.add(jLabel11);
            jLabel11.setBounds(10, 20, 130, 14);
            panelHD.add(EditChaveHD);
            EditChaveHD.setBounds(11, 35, 310, 20);

            botaoGerarChaveHD.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoGerarChaveHD.setText("Gerar Contra Chave");
            botaoGerarChaveHD.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoGerarChaveHDActionPerformed(evt);
                }
            });
            panelHD.add(botaoGerarChaveHD);
            botaoGerarChaveHD.setBounds(146, 121, 179, 25);

            botaoLerChaveHD.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoLerChaveHD.setText("Ler Chave");
            botaoLerChaveHD.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoLerChaveHDActionPerformed(evt);
                }
            });
            panelHD.add(botaoLerChaveHD);
            botaoLerChaveHD.setBounds(5, 121, 131, 25);

            jPanel1.add(panelHD);
            panelHD.setBounds(360, 10, 330, 166);

            panelSerialWindows.setBackground(new Color(255,255,255,0));
            panelSerialWindows.setBorder(javax.swing.BorderFactory.createTitledBorder("05 - Serial Windows"));
            panelSerialWindows.setLayout(null);
            panelSerialWindows.add(EditContraChaveSerial);
            EditContraChaveSerial.setBounds(10, 80, 330, 20);

            jLabel12.setText("Contra Chave:");
            panelSerialWindows.add(jLabel12);
            jLabel12.setBounds(10, 60, 130, 14);

            jLabel13.setText("Chave:");
            panelSerialWindows.add(jLabel13);
            jLabel13.setBounds(10, 20, 150, 14);
            panelSerialWindows.add(EditChaveSerial);
            EditChaveSerial.setBounds(10, 40, 330, 20);

            botaoGerarChaveWindows.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoGerarChaveWindows.setText("Gerar Contra Chave");
            botaoGerarChaveWindows.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoGerarChaveWindowsActionPerformed(evt);
                }
            });
            panelSerialWindows.add(botaoGerarChaveWindows);
            botaoGerarChaveWindows.setBounds(156, 109, 179, 25);

            botaoLerChaveWindows.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoLerChaveWindows.setText("Ler Chave");
            botaoLerChaveWindows.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoLerChaveWindowsActionPerformed(evt);
                }
            });
            panelSerialWindows.add(botaoLerChaveWindows);
            botaoLerChaveWindows.setBounds(15, 109, 131, 25);

            jPanel1.add(panelSerialWindows);
            panelSerialWindows.setBounds(0, 199, 350, 150);

            panelMAC.setBackground(new Color(255,255,255,0));
            panelMAC.setBorder(javax.swing.BorderFactory.createTitledBorder("04 - Número MAC"));
            panelMAC.setLayout(null);
            panelMAC.add(EditContraChaveMAC);
            EditContraChaveMAC.setBounds(10, 80, 310, 20);

            jLabel14.setText("Contra Chave:");
            panelMAC.add(jLabel14);
            jLabel14.setBounds(10, 60, 190, 14);

            jLabel15.setText("Chave:");
            panelMAC.add(jLabel15);
            jLabel15.setBounds(10, 20, 170, 14);
            panelMAC.add(EditChaveMAC);
            EditChaveMAC.setBounds(11, 35, 310, 20);

            botaoGerarChaveMAC.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoGerarChaveMAC.setText("Gerar Contra Chave");
            botaoGerarChaveMAC.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoGerarChaveMACActionPerformed(evt);
                }
            });
            panelMAC.add(botaoGerarChaveMAC);
            botaoGerarChaveMAC.setBounds(150, 120, 170, 25);

            botaoLerChaveMAC.setIcon(new javax.swing.ImageIcon(getClass().getResource("/seguranca/view/botaoConfirmar.png"))); // NOI18N
            botaoLerChaveMAC.setText("Ler Chave");
            botaoLerChaveMAC.addActionListener(new java.awt.event.ActionListener() {
                public void actionPerformed(java.awt.event.ActionEvent evt) {
                    botaoLerChaveMACActionPerformed(evt);
                }
            });
            panelMAC.add(botaoLerChaveMAC);
            botaoLerChaveMAC.setBounds(10, 120, 136, 25);

            jPanel1.add(panelMAC);
            panelMAC.setBounds(360, 180, 330, 160);

            jTabbedPane1.addTab("Geral", jPanel1);

            jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
            jTabbedPane1.addTab("Outros", jPanel2);

            panelComponentes.add(jTabbedPane1);
            jTabbedPane1.setBounds(5, -3, 710, 470);

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

    private void botaoVerificarArquivoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoVerificarArquivoActionPerformed
        File file = new File("C:\\meuarquivo.dll");
        if (!file.exists()) {
            JOptionPane.showMessageDialog(rootPane, "Cópia Ilegal - Diga Não a Pirataria!  \r\r  Aplicação será encerrada.", "Informação do Sistema", JOptionPane.ERROR_MESSAGE);
            System.exit(0);
        }
    }//GEN-LAST:event_botaoVerificarArquivoActionPerformed

    private void botaoGerarConjuntoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoGerarConjuntoActionPerformed
        try {
            EditContraChaveConjunto.setText(Biblioteca.MD5String(EditChaveSerial.getText() + EditChaveMAC.getText() + EditChaveHD.getText() + "CONJUNTO"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoGerarConjuntoActionPerformed

    private void botaoCarregarRegistroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoCarregarRegistroActionPerformed
        RegistryKey regkey = Registry.HKEY_CURRENT_USER;
        RegistryKey key = Registry.openSubkey(regkey, EditChave.getText(), RegistryKey.ACCESS_READ);
        System.out.println(key.getFullName());
        try {
            RegistryValue value = key.getValue("Verifica");
            String x = new String(value.getByteData());
            EditValor.setText(x);
        } catch (RegistryException ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoCarregarRegistroActionPerformed

    private void botaoRemoverRegistroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoRemoverRegistroActionPerformed
        // Exercício: como realizar alterações no registro?

        Registry registry = new Registry();
        registry.debugLevel = true;
        RegistryKey regkey = Registry.HKEY_CURRENT_USER;
        RegistryKey key = registry.openSubkey(regkey, EditChave.getText(), RegistryKey.ACCESS_READ);
        System.out.println(key.getFullName());
        try {
            RegistryValue value = key.getValue("Verifica");
            key.deleteValue("Verifica");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoRemoverRegistroActionPerformed

    private void botaoTestarRegistroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoTestarRegistroActionPerformed
        RegistryKey regkey = Registry.HKEY_CURRENT_USER;
        RegistryKey key = Registry.openSubkey(regkey, EditChave.getText(), RegistryKey.ACCESS_READ);
        System.out.println(key.getFullName());
        try {
            RegistryValue value = key.getValue("Verifica");
            String x = new String(value.getByteData());
            if (!x.equals("Liberado")) {
                JOptionPane.showMessageDialog(rootPane, "Cópia Ilegal - Diga Não a Pirataria!  \r\r  Aplicação será encerrada.", "Informação do Sistema", JOptionPane.ERROR_MESSAGE);
                System.exit(0);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoTestarRegistroActionPerformed

    private void botaoGravarRegistroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoGravarRegistroActionPerformed
        // Exercício: como realizar alterações no registro?

        Registry registry = new Registry();
        registry.debugLevel = true;
        RegistryKey regkey = Registry.HKEY_CURRENT_USER;
        RegistryKey key = registry.openSubkey(regkey, EditChave.getText(), RegistryKey.ACCESS_READ);
        System.out.println(key.getFullName());
        try {
            RegistryValue value = key.getValue("Verifica");
            key.setValue(EditValor.getText(), value);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoGravarRegistroActionPerformed

    private void botaoGerarChaveHDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoGerarChaveHDActionPerformed
        try {
            EditContraChaveHD.setText(Biblioteca.MD5String(EditChaveHD.getText() + "HD"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoGerarChaveHDActionPerformed

    public static String getHDSerial(String drive) {
        String result = "";
        try {
            //File file = File.createTempFile("tmp",".vbs");  
            File file = File.createTempFile("tmp", ".vbs");
            file.deleteOnExit();
            FileWriter fw = new java.io.FileWriter(file);

            String vbs = "Set objFSO = CreateObject(\"Scripting.FileSystemObject\")\n" + "Set colDrives = objFSO.Drives\n"
                    + "Set objDrive = colDrives.item(\"" + drive + "\")\n" + "Wscript.Echo objDrive.SerialNumber";
            fw.write(vbs);
            fw.close();
            Process p = Runtime.getRuntime().exec("cscript //NoLogo " + file.getPath());
            BufferedReader input
                    = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while ((line = input.readLine()) != null) {
                result += line;
            }
            input.close();
        } catch (Exception e) {

        }
        if (result.trim().length() < 1 || result == null) {
            result = "NO_DISK_ID";

        }

        return result.trim();
    }

    private void botaoLerChaveHDActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoLerChaveHDActionPerformed
        try {
            EditChaveHD.setText(Biblioteca.MD5String(getHDSerial("c")));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoLerChaveHDActionPerformed

    private void botaoGerarChaveWindowsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoGerarChaveWindowsActionPerformed
        try {
            EditContraChaveSerial.setText(Biblioteca.MD5String(EditChaveSerial.getText() + "WINDOWS"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoGerarChaveWindowsActionPerformed

    private void botaoLerChaveWindowsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoLerChaveWindowsActionPerformed
        RegistryKey regkey = Registry.HKEY_LOCAL_MACHINE;
        RegistryKey key = Registry.openSubkey(regkey, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion", RegistryKey.ACCESS_READ);
        System.out.println(key.getFullName());
        try {
            RegistryValue value = key.getValue("ProductId");
            String x = new String(value.getByteData());
            EditChaveSerial.setText(x);
        } catch (RegistryException ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoLerChaveWindowsActionPerformed

    public String getMAC() {
        String retorno = "";
        try {
            InetAddress address = InetAddress.getLocalHost();
            NetworkInterface ni = NetworkInterface.getByInetAddress(address);
            byte[] mac = ni.getHardwareAddress();
            for (int i = 0; i < mac.length; i++) {
                System.out.format("%02X%s", mac[i], (i < mac.length - 1) ? "-" : "");

                // Exercício: formate o retorno
                retorno = retorno + mac[i];
            }
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (SocketException e) {
            e.printStackTrace();
        }
        return retorno;
    }


    private void botaoGerarChaveMACActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoGerarChaveMACActionPerformed
        try {
            EditContraChaveMAC.setText(Biblioteca.MD5String(EditChaveMAC.getText() + "MAC"));
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_botaoGerarChaveMACActionPerformed

    private void botaoLerChaveMACActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botaoLerChaveMACActionPerformed
        EditChaveMAC.setText(getMAC());
    }//GEN-LAST:event_botaoLerChaveMACActionPerformed

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
    private javax.swing.JTextField EditChave;
    private javax.swing.JTextField EditChaveHD;
    private javax.swing.JTextField EditChaveMAC;
    private javax.swing.JTextField EditChaveSerial;
    private javax.swing.JTextField EditContraChaveConjunto;
    private javax.swing.JTextField EditContraChaveHD;
    private javax.swing.JTextField EditContraChaveMAC;
    private javax.swing.JTextField EditContraChaveSerial;
    private javax.swing.JTextField EditValor;
    private javax.swing.JButton botaoCarregarRegistro;
    private javax.swing.JButton botaoGerarChaveHD;
    private javax.swing.JButton botaoGerarChaveMAC;
    private javax.swing.JButton botaoGerarChaveWindows;
    private javax.swing.JButton botaoGerarConjunto;
    private javax.swing.JButton botaoGravarRegistro;
    private javax.swing.JButton botaoLerChaveHD;
    private javax.swing.JButton botaoLerChaveMAC;
    private javax.swing.JButton botaoLerChaveWindows;
    private javax.swing.JButton botaoRemoverRegistro;
    private javax.swing.JButton botaoTestarRegistro;
    private javax.swing.JButton botaoVerificarArquivo;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JPanel panelComponentes;
    private javax.swing.JPanel panelConjunto;
    private javax.swing.JPanel panelHD;
    private javax.swing.JPanel panelMAC;
    private javax.swing.JPanel panelPrincipal;
    private javax.swing.JPanel panelRegistroWindows;
    private javax.swing.JPanel panelSerialWindows;
    private javax.swing.JPanel panelVerificarArquivo;
    // End of variables declaration//GEN-END:variables


}
