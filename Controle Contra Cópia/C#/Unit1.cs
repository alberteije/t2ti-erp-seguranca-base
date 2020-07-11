using Microsoft.Win32;
using System;
using System.Collections;
using System.IO;
using System.Windows.Forms;
using Util;
using System.Management;
using System.Net.NetworkInformation;
using System.Linq;

namespace Seguranca
{
	
	  
	public partial class Form1 : Form
	{

        public Form1()
        {
            // Required for Windows Form Designer support
            InitializeComponent();
        }	

        #region 01 - Verificar Arquivo
        private void Button1_Click(object sender, EventArgs e)
        {
            if (!File.Exists("C:\\meuarquivo.dll"))
            {
                MessageBox.Show("Cópia Ilegal - Diga Não a Pirataria!  \r\r  Aplicação será encerrada.");
                Application.Exit();
            }
        }
        #endregion

        #region 02 - Manipular Regisro do Windows
        private void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                RegistryKey registryKey = Registry.CurrentUser.OpenSubKey(EditChave.Text);
                EditValor.Text = registryKey.GetValue("Verifica").ToString();
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }
        
        private void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string PATH = @EditChave.Text;
                RegistryKey registryKey = Registry.CurrentUser.CreateSubKey(PATH);
                registryKey.SetValue("Verifica", EditValor.Text);
                registryKey.Close();
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                string PATH = @EditChave.Text;
                Registry.CurrentUser.DeleteSubKey(PATH);
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                RegistryKey registryKey = Registry.CurrentUser.OpenSubKey(EditChave.Text);
                if (registryKey.GetValue("Verifica").ToString() != "Liberado")
                {
                    MessageBox.Show("Cópia Ilegal - Diga Não a Pirataria!  \r\r  Aplicação será encerrada.");
                    Application.Exit();
                }
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }

        }
        #endregion

        #region 03 - Número do HD
        public string SerialNum(string drive)
        {
            //check to see if the user provided a drive letter
            //if not default it to "C"
            if (drive == "" || drive == null)
            {
                drive = "C";
            }
            //create our ManagementObject, passing it the drive letter to the
            //DevideID using WQL
            ManagementObject disk = new ManagementObject("win32_logicaldisk.deviceid=\"" + drive + ":\"");
            //bind our management object
            disk.Get();
            //return the serial number
            return disk["VolumeSerialNumber"].ToString();
        }

        private void Button6_Click(object sender, EventArgs e)
        {
            EditChaveHD.Text = Biblioteca.MD5String(SerialNum("c"));
        }

        private void Button7_Click(object sender, EventArgs e)
        {
            EditContraChaveHD.Text = Biblioteca.MD5String(EditChaveHD.Text + "HD");
        }
        #endregion

        #region 04 - Número MAC
        public static String getMacAddress()
        {
            return (from nic in NetworkInterface.GetAllNetworkInterfaces()
                    where nic.OperationalStatus == OperationalStatus.Up
                    select nic.GetPhysicalAddress().ToString()
                          ).FirstOrDefault();
        }

        private void Button8_Click(object sender, EventArgs e)
        {
            EditChaveMAC.Text = getMacAddress(); // MD5String(GetHardwareKey);
        }

        private void Button9_Click(object sender, EventArgs e)
        {
            EditContraChaveMAC.Text = Biblioteca.MD5String(EditChaveMAC.Text + "MAC");
        }
        #endregion

        #region 05 - Serial Windows
        private void Button10_Click(object sender, EventArgs e)
        {
            try
            {
                RegistryKey localMachine = RegistryKey.OpenBaseKey(Microsoft.Win32.RegistryHive.LocalMachine, RegistryView.Registry64);
                RegistryKey windowsNTKey = localMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows NT\CurrentVersion");
                EditChaveSerial.Text = windowsNTKey.GetValue("ProductId").ToString();
            }
            catch (Exception eError)
            {
                MessageBox.Show(eError.Message);
            }
        }

        private void Button11_Click(object sender, EventArgs e)
        {
            EditContraChaveSerial.Text = Biblioteca.MD5String(EditChaveSerial.Text + "WINDOWS");
        }
        #endregion

        #region 06 - Conjunto
        private void Button12_Click(object sender, EventArgs e)
        {
            EditContraChaveConjunto.Text = Biblioteca.MD5String(EditChaveSerial.Text + EditChaveMAC.Text + EditChaveHD.Text + "CONJUNTO");
        }

        #endregion

    }

	
}
