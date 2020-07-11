namespace Seguranca
{
	partial class Form1
	{
		private System.Windows.Forms.ToolTip toolTip1;
		private System.Windows.Forms.Panel Panel1;
		private System.Windows.Forms.GroupBox GroupBox1;
		private System.Windows.Forms.Button Button1;
		private System.Windows.Forms.GroupBox GroupBox2;
		internal System.Windows.Forms.TextBox EditChave;
		internal System.Windows.Forms.TextBox EditValor;
		private System.Windows.Forms.Button Button2;
		private System.Windows.Forms.Button Button3;
		private System.Windows.Forms.Button Button4;
		private System.Windows.Forms.Button Button5;
		private System.Windows.Forms.GroupBox GroupBox3;
		private System.Windows.Forms.Button Button6;
		internal System.Windows.Forms.TextBox EditChaveHD;
		internal System.Windows.Forms.TextBox EditContraChaveHD;
		private System.Windows.Forms.Button Button7;
		private System.Windows.Forms.GroupBox GroupBox4;
		private System.Windows.Forms.Button Button8;
		internal System.Windows.Forms.TextBox EditChaveMAC;
		internal System.Windows.Forms.TextBox EditContraChaveMAC;
		private System.Windows.Forms.Button Button9;
		private System.Windows.Forms.GroupBox GroupBox5;
		private System.Windows.Forms.Button Button10;
		internal System.Windows.Forms.TextBox EditChaveSerial;
		internal System.Windows.Forms.TextBox EditContraChaveSerial;
		private System.Windows.Forms.Button Button11;
		private System.Windows.Forms.GroupBox GroupBox6;
		private System.Windows.Forms.Button Button12;
		internal System.Windows.Forms.TextBox EditContraChaveConjunto;
		// Required designer variable.
		private System.ComponentModel.IContainer components = null;

		// Clean up any resources being used.
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
            this.components = new System.ComponentModel.Container();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.Panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.GroupBox1 = new System.Windows.Forms.GroupBox();
            this.Button1 = new System.Windows.Forms.Button();
            this.GroupBox2 = new System.Windows.Forms.GroupBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.EditChave = new System.Windows.Forms.TextBox();
            this.EditValor = new System.Windows.Forms.TextBox();
            this.Button2 = new System.Windows.Forms.Button();
            this.Button3 = new System.Windows.Forms.Button();
            this.Button4 = new System.Windows.Forms.Button();
            this.Button5 = new System.Windows.Forms.Button();
            this.GroupBox3 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.Button6 = new System.Windows.Forms.Button();
            this.EditChaveHD = new System.Windows.Forms.TextBox();
            this.EditContraChaveHD = new System.Windows.Forms.TextBox();
            this.Button7 = new System.Windows.Forms.Button();
            this.GroupBox4 = new System.Windows.Forms.GroupBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.Button8 = new System.Windows.Forms.Button();
            this.EditChaveMAC = new System.Windows.Forms.TextBox();
            this.EditContraChaveMAC = new System.Windows.Forms.TextBox();
            this.Button9 = new System.Windows.Forms.Button();
            this.GroupBox5 = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.Button10 = new System.Windows.Forms.Button();
            this.EditChaveSerial = new System.Windows.Forms.TextBox();
            this.EditContraChaveSerial = new System.Windows.Forms.TextBox();
            this.Button11 = new System.Windows.Forms.Button();
            this.GroupBox6 = new System.Windows.Forms.GroupBox();
            this.label10 = new System.Windows.Forms.Label();
            this.Button12 = new System.Windows.Forms.Button();
            this.EditContraChaveConjunto = new System.Windows.Forms.TextBox();
            this.Panel1.SuspendLayout();
            this.GroupBox1.SuspendLayout();
            this.GroupBox2.SuspendLayout();
            this.GroupBox3.SuspendLayout();
            this.GroupBox4.SuspendLayout();
            this.GroupBox5.SuspendLayout();
            this.GroupBox6.SuspendLayout();
            this.SuspendLayout();
            // 
            // Panel1
            // 
            this.Panel1.BackColor = System.Drawing.Color.Silver;
            this.Panel1.Controls.Add(this.label1);
            this.Panel1.Font = new System.Drawing.Font("Tahoma", 18F, System.Drawing.FontStyle.Bold);
            this.Panel1.ForeColor = System.Drawing.Color.Black;
            this.Panel1.Location = new System.Drawing.Point(0, 0);
            this.Panel1.Name = "Panel1";
            this.Panel1.Size = new System.Drawing.Size(632, 49);
            this.Panel1.TabIndex = 0;
            this.Panel1.Text = "Controle Contra Cópia";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(164, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(276, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Controle Contra Cópia";
            // 
            // GroupBox1
            // 
            this.GroupBox1.Controls.Add(this.Button1);
            this.GroupBox1.Location = new System.Drawing.Point(8, 55);
            this.GroupBox1.Name = "GroupBox1";
            this.GroupBox1.Size = new System.Drawing.Size(305, 58);
            this.GroupBox1.TabIndex = 1;
            this.GroupBox1.TabStop = false;
            this.GroupBox1.Text = "01 - Verificar Arquivo";
            // 
            // Button1
            // 
            this.Button1.Location = new System.Drawing.Point(16, 22);
            this.Button1.Name = "Button1";
            this.Button1.Size = new System.Drawing.Size(281, 25);
            this.Button1.TabIndex = 0;
            this.Button1.Text = "Verificar Arquivo";
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            // 
            // GroupBox2
            // 
            this.GroupBox2.Controls.Add(this.label5);
            this.GroupBox2.Controls.Add(this.label4);
            this.GroupBox2.Controls.Add(this.EditChave);
            this.GroupBox2.Controls.Add(this.EditValor);
            this.GroupBox2.Controls.Add(this.Button2);
            this.GroupBox2.Controls.Add(this.Button3);
            this.GroupBox2.Controls.Add(this.Button4);
            this.GroupBox2.Controls.Add(this.Button5);
            this.GroupBox2.Location = new System.Drawing.Point(8, 119);
            this.GroupBox2.Name = "GroupBox2";
            this.GroupBox2.Size = new System.Drawing.Size(305, 130);
            this.GroupBox2.TabIndex = 2;
            this.GroupBox2.TabStop = false;
            this.GroupBox2.Text = "02 - Manipular Registro do Windows";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(158, 24);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(34, 13);
            this.label5.TabIndex = 7;
            this.label5.Text = "Valor:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(13, 24);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 13);
            this.label4.TabIndex = 6;
            this.label4.Text = "Chave:";
            // 
            // EditChave
            // 
            this.EditChave.Location = new System.Drawing.Point(16, 40);
            this.EditChave.Name = "EditChave";
            this.EditChave.Size = new System.Drawing.Size(138, 20);
            this.EditChave.TabIndex = 0;
            this.EditChave.Text = "Software\\T2Ti\\";
            // 
            // EditValor
            // 
            this.EditValor.Location = new System.Drawing.Point(160, 40);
            this.EditValor.Name = "EditValor";
            this.EditValor.Size = new System.Drawing.Size(137, 20);
            this.EditValor.TabIndex = 1;
            this.EditValor.Text = "OK";
            // 
            // Button2
            // 
            this.Button2.Location = new System.Drawing.Point(16, 67);
            this.Button2.Name = "Button2";
            this.Button2.Size = new System.Drawing.Size(138, 25);
            this.Button2.TabIndex = 2;
            this.Button2.Text = "Gravar";
            this.Button2.Click += new System.EventHandler(this.Button2_Click);
            // 
            // Button3
            // 
            this.Button3.Location = new System.Drawing.Point(160, 67);
            this.Button3.Name = "Button3";
            this.Button3.Size = new System.Drawing.Size(137, 25);
            this.Button3.TabIndex = 3;
            this.Button3.Text = "Carregar";
            this.Button3.Click += new System.EventHandler(this.Button3_Click);
            // 
            // Button4
            // 
            this.Button4.Location = new System.Drawing.Point(16, 98);
            this.Button4.Name = "Button4";
            this.Button4.Size = new System.Drawing.Size(138, 25);
            this.Button4.TabIndex = 4;
            this.Button4.Text = "Remover";
            this.Button4.Click += new System.EventHandler(this.Button4_Click);
            // 
            // Button5
            // 
            this.Button5.Location = new System.Drawing.Point(160, 98);
            this.Button5.Name = "Button5";
            this.Button5.Size = new System.Drawing.Size(137, 25);
            this.Button5.TabIndex = 5;
            this.Button5.Text = "Testar";
            this.Button5.Click += new System.EventHandler(this.Button5_Click);
            // 
            // GroupBox3
            // 
            this.GroupBox3.Controls.Add(this.label3);
            this.GroupBox3.Controls.Add(this.label2);
            this.GroupBox3.Controls.Add(this.Button6);
            this.GroupBox3.Controls.Add(this.EditChaveHD);
            this.GroupBox3.Controls.Add(this.EditContraChaveHD);
            this.GroupBox3.Controls.Add(this.Button7);
            this.GroupBox3.Location = new System.Drawing.Point(319, 55);
            this.GroupBox3.Name = "GroupBox3";
            this.GroupBox3.Size = new System.Drawing.Size(305, 146);
            this.GroupBox3.TabIndex = 3;
            this.GroupBox3.TabStop = false;
            this.GroupBox3.Text = "03 - Número do HD";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 65);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 5;
            this.label3.Text = "Contra Chave";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(16, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(41, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "Chave:";
            // 
            // Button6
            // 
            this.Button6.Location = new System.Drawing.Point(16, 112);
            this.Button6.Name = "Button6";
            this.Button6.Size = new System.Drawing.Size(129, 25);
            this.Button6.TabIndex = 0;
            this.Button6.Text = "Ler Chave";
            this.Button6.Click += new System.EventHandler(this.Button6_Click);
            // 
            // EditChaveHD
            // 
            this.EditChaveHD.Location = new System.Drawing.Point(16, 36);
            this.EditChaveHD.Name = "EditChaveHD";
            this.EditChaveHD.Size = new System.Drawing.Size(273, 20);
            this.EditChaveHD.TabIndex = 1;
            // 
            // EditContraChaveHD
            // 
            this.EditContraChaveHD.Location = new System.Drawing.Point(16, 81);
            this.EditContraChaveHD.Name = "EditContraChaveHD";
            this.EditContraChaveHD.Size = new System.Drawing.Size(273, 20);
            this.EditContraChaveHD.TabIndex = 2;
            // 
            // Button7
            // 
            this.Button7.Location = new System.Drawing.Point(159, 112);
            this.Button7.Name = "Button7";
            this.Button7.Size = new System.Drawing.Size(130, 25);
            this.Button7.TabIndex = 3;
            this.Button7.Text = "Gerar Contra Chave";
            this.Button7.Click += new System.EventHandler(this.Button7_Click);
            // 
            // GroupBox4
            // 
            this.GroupBox4.Controls.Add(this.label8);
            this.GroupBox4.Controls.Add(this.label9);
            this.GroupBox4.Controls.Add(this.Button8);
            this.GroupBox4.Controls.Add(this.EditChaveMAC);
            this.GroupBox4.Controls.Add(this.EditContraChaveMAC);
            this.GroupBox4.Controls.Add(this.Button9);
            this.GroupBox4.Location = new System.Drawing.Point(319, 207);
            this.GroupBox4.Name = "GroupBox4";
            this.GroupBox4.Size = new System.Drawing.Size(305, 146);
            this.GroupBox4.TabIndex = 4;
            this.GroupBox4.TabStop = false;
            this.GroupBox4.Text = "04 - Número MAC";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(15, 63);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(72, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Contra Chave";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(15, 18);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(41, 13);
            this.label9.TabIndex = 6;
            this.label9.Text = "Chave:";
            // 
            // Button8
            // 
            this.Button8.Location = new System.Drawing.Point(16, 112);
            this.Button8.Name = "Button8";
            this.Button8.Size = new System.Drawing.Size(129, 25);
            this.Button8.TabIndex = 0;
            this.Button8.Text = "Ler Chave";
            this.Button8.Click += new System.EventHandler(this.Button8_Click);
            // 
            // EditChaveMAC
            // 
            this.EditChaveMAC.Location = new System.Drawing.Point(16, 34);
            this.EditChaveMAC.Name = "EditChaveMAC";
            this.EditChaveMAC.Size = new System.Drawing.Size(273, 20);
            this.EditChaveMAC.TabIndex = 1;
            // 
            // EditContraChaveMAC
            // 
            this.EditContraChaveMAC.Location = new System.Drawing.Point(16, 80);
            this.EditContraChaveMAC.Name = "EditContraChaveMAC";
            this.EditContraChaveMAC.Size = new System.Drawing.Size(273, 20);
            this.EditContraChaveMAC.TabIndex = 2;
            // 
            // Button9
            // 
            this.Button9.Location = new System.Drawing.Point(159, 112);
            this.Button9.Name = "Button9";
            this.Button9.Size = new System.Drawing.Size(130, 25);
            this.Button9.TabIndex = 3;
            this.Button9.Text = "Gerar Contra Chave";
            this.Button9.Click += new System.EventHandler(this.Button9_Click);
            // 
            // GroupBox5
            // 
            this.GroupBox5.Controls.Add(this.label6);
            this.GroupBox5.Controls.Add(this.label7);
            this.GroupBox5.Controls.Add(this.Button10);
            this.GroupBox5.Controls.Add(this.EditChaveSerial);
            this.GroupBox5.Controls.Add(this.EditContraChaveSerial);
            this.GroupBox5.Controls.Add(this.Button11);
            this.GroupBox5.Location = new System.Drawing.Point(8, 255);
            this.GroupBox5.Name = "GroupBox5";
            this.GroupBox5.Size = new System.Drawing.Size(305, 162);
            this.GroupBox5.TabIndex = 5;
            this.GroupBox5.TabStop = false;
            this.GroupBox5.Text = "05 - Serial Windows";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(13, 71);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(72, 13);
            this.label6.TabIndex = 7;
            this.label6.Text = "Contra Chave";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 24);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(41, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Chave:";
            // 
            // Button10
            // 
            this.Button10.Location = new System.Drawing.Point(16, 120);
            this.Button10.Name = "Button10";
            this.Button10.Size = new System.Drawing.Size(129, 25);
            this.Button10.TabIndex = 0;
            this.Button10.Text = "Ler Chave";
            this.Button10.Click += new System.EventHandler(this.Button10_Click);
            // 
            // EditChaveSerial
            // 
            this.EditChaveSerial.Location = new System.Drawing.Point(16, 40);
            this.EditChaveSerial.Name = "EditChaveSerial";
            this.EditChaveSerial.Size = new System.Drawing.Size(273, 20);
            this.EditChaveSerial.TabIndex = 1;
            // 
            // EditContraChaveSerial
            // 
            this.EditContraChaveSerial.Location = new System.Drawing.Point(16, 88);
            this.EditContraChaveSerial.Name = "EditContraChaveSerial";
            this.EditContraChaveSerial.Size = new System.Drawing.Size(273, 20);
            this.EditContraChaveSerial.TabIndex = 2;
            // 
            // Button11
            // 
            this.Button11.Location = new System.Drawing.Point(159, 120);
            this.Button11.Name = "Button11";
            this.Button11.Size = new System.Drawing.Size(130, 25);
            this.Button11.TabIndex = 3;
            this.Button11.Text = "Gerar Contra Chave";
            this.Button11.Click += new System.EventHandler(this.Button11_Click);
            // 
            // GroupBox6
            // 
            this.GroupBox6.Controls.Add(this.label10);
            this.GroupBox6.Controls.Add(this.Button12);
            this.GroupBox6.Controls.Add(this.EditContraChaveConjunto);
            this.GroupBox6.Location = new System.Drawing.Point(319, 359);
            this.GroupBox6.Name = "GroupBox6";
            this.GroupBox6.Size = new System.Drawing.Size(305, 58);
            this.GroupBox6.TabIndex = 6;
            this.GroupBox6.TabStop = false;
            this.GroupBox6.Text = "06 - Conjunto";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(79, 17);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(72, 13);
            this.label10.TabIndex = 8;
            this.label10.Text = "Contra Chave";
            // 
            // Button12
            // 
            this.Button12.Location = new System.Drawing.Point(16, 29);
            this.Button12.Name = "Button12";
            this.Button12.Size = new System.Drawing.Size(57, 25);
            this.Button12.TabIndex = 0;
            this.Button12.Text = "Gerar";
            this.Button12.Click += new System.EventHandler(this.Button12_Click);
            // 
            // EditContraChaveConjunto
            // 
            this.EditContraChaveConjunto.Location = new System.Drawing.Point(79, 33);
            this.EditContraChaveConjunto.Name = "EditContraChaveConjunto";
            this.EditContraChaveConjunto.Size = new System.Drawing.Size(220, 20);
            this.EditContraChaveConjunto.TabIndex = 1;
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(632, 430);
            this.Controls.Add(this.Panel1);
            this.Controls.Add(this.GroupBox1);
            this.Controls.Add(this.GroupBox2);
            this.Controls.Add(this.GroupBox3);
            this.Controls.Add(this.GroupBox4);
            this.Controls.Add(this.GroupBox5);
            this.Controls.Add(this.GroupBox6);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "T2Ti - Segurança";
            this.Panel1.ResumeLayout(false);
            this.Panel1.PerformLayout();
            this.GroupBox1.ResumeLayout(false);
            this.GroupBox2.ResumeLayout(false);
            this.GroupBox2.PerformLayout();
            this.GroupBox3.ResumeLayout(false);
            this.GroupBox3.PerformLayout();
            this.GroupBox4.ResumeLayout(false);
            this.GroupBox4.PerformLayout();
            this.GroupBox5.ResumeLayout(false);
            this.GroupBox5.PerformLayout();
            this.GroupBox6.ResumeLayout(false);
            this.GroupBox6.PerformLayout();
            this.ResumeLayout(false);

		}
		#endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label10;

	}
}
