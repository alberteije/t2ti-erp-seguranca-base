namespace Seguranca
{
	partial class Form1
	{
		private System.Windows.Forms.ToolTip toolTip1;
		private System.Windows.Forms.Panel Panel1;
		private System.Windows.Forms.TabControl PageControl1;
		private System.Windows.Forms.TabPage TabSheet1;
		private System.Windows.Forms.Button Button1;
		private System.Windows.Forms.DataGridView Grid1;
		internal System.Windows.Forms.TextBox EditMes;
		internal System.Windows.Forms.TextBox EditAno;
		internal System.Windows.Forms.TextBox EditVencimento;
		internal System.Windows.Forms.TextBox EditBloqueio;
		internal System.Windows.Forms.TextBox EditLiberado;
		private System.Windows.Forms.Button Button2;
		internal System.Windows.Forms.RichTextBox Memo1;
		private System.Windows.Forms.Button Button3;
		private System.Windows.Forms.Button Button4;
		private System.Windows.Forms.Button Button5;
		private System.Windows.Forms.Button Button6;
		private System.Windows.Forms.Button Button7;
		internal System.Windows.Forms.TextBox EditChaveDesbloqueio;
		private System.Windows.Forms.TabPage TabSheet2;
		private System.Windows.Forms.DataGridView Grid2;
		internal System.Windows.Forms.RichTextBox Memo2;
		internal System.Windows.Forms.TextBox EditChaveDesbloqueioArquivo;
		private System.Windows.Forms.Button Button8;
		private System.Windows.Forms.Button Button10;
		private System.Windows.Forms.Button Button11;
		private System.Windows.Forms.Button Button12;
		private System.Windows.Forms.Button Button13;
		private System.Windows.Forms.Button Button14;
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
            this.PageControl1 = new System.Windows.Forms.TabControl();
            this.TabSheet1 = new System.Windows.Forms.TabPage();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.Button1 = new System.Windows.Forms.Button();
            this.Grid1 = new System.Windows.Forms.DataGridView();
            this.EditMes = new System.Windows.Forms.TextBox();
            this.EditAno = new System.Windows.Forms.TextBox();
            this.EditVencimento = new System.Windows.Forms.TextBox();
            this.EditBloqueio = new System.Windows.Forms.TextBox();
            this.EditLiberado = new System.Windows.Forms.TextBox();
            this.Button2 = new System.Windows.Forms.Button();
            this.Memo1 = new System.Windows.Forms.RichTextBox();
            this.Button3 = new System.Windows.Forms.Button();
            this.Button4 = new System.Windows.Forms.Button();
            this.Button5 = new System.Windows.Forms.Button();
            this.Button6 = new System.Windows.Forms.Button();
            this.Button7 = new System.Windows.Forms.Button();
            this.EditChaveDesbloqueio = new System.Windows.Forms.TextBox();
            this.TabSheet2 = new System.Windows.Forms.TabPage();
            this.label8 = new System.Windows.Forms.Label();
            this.Grid2 = new System.Windows.Forms.DataGridView();
            this.Memo2 = new System.Windows.Forms.RichTextBox();
            this.EditChaveDesbloqueioArquivo = new System.Windows.Forms.TextBox();
            this.Button8 = new System.Windows.Forms.Button();
            this.Button10 = new System.Windows.Forms.Button();
            this.Button11 = new System.Windows.Forms.Button();
            this.Button12 = new System.Windows.Forms.Button();
            this.Button13 = new System.Windows.Forms.Button();
            this.Button14 = new System.Windows.Forms.Button();
            this.pid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pb = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pf = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.a = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.b = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.c = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.d = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.e = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.f = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Panel1.SuspendLayout();
            this.PageControl1.SuspendLayout();
            this.TabSheet1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid1)).BeginInit();
            this.TabSheet2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid2)).BeginInit();
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
            this.Panel1.Text = "Controle de Pagamentos";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(164, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(306, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Controle de Pagamentos";
            // 
            // PageControl1
            // 
            this.PageControl1.Controls.Add(this.TabSheet1);
            this.PageControl1.Controls.Add(this.TabSheet2);
            this.PageControl1.Location = new System.Drawing.Point(0, 49);
            this.PageControl1.Name = "PageControl1";
            this.PageControl1.SelectedIndex = 0;
            this.PageControl1.Size = new System.Drawing.Size(632, 381);
            this.PageControl1.TabIndex = 1;
            // 
            // TabSheet1
            // 
            this.TabSheet1.Controls.Add(this.label7);
            this.TabSheet1.Controls.Add(this.label6);
            this.TabSheet1.Controls.Add(this.label5);
            this.TabSheet1.Controls.Add(this.label4);
            this.TabSheet1.Controls.Add(this.label3);
            this.TabSheet1.Controls.Add(this.label2);
            this.TabSheet1.Controls.Add(this.Button1);
            this.TabSheet1.Controls.Add(this.Grid1);
            this.TabSheet1.Controls.Add(this.EditMes);
            this.TabSheet1.Controls.Add(this.EditAno);
            this.TabSheet1.Controls.Add(this.EditVencimento);
            this.TabSheet1.Controls.Add(this.EditBloqueio);
            this.TabSheet1.Controls.Add(this.EditLiberado);
            this.TabSheet1.Controls.Add(this.Button2);
            this.TabSheet1.Controls.Add(this.Memo1);
            this.TabSheet1.Controls.Add(this.Button3);
            this.TabSheet1.Controls.Add(this.Button4);
            this.TabSheet1.Controls.Add(this.Button5);
            this.TabSheet1.Controls.Add(this.Button6);
            this.TabSheet1.Controls.Add(this.Button7);
            this.TabSheet1.Controls.Add(this.EditChaveDesbloqueio);
            this.TabSheet1.Location = new System.Drawing.Point(4, 22);
            this.TabSheet1.Name = "TabSheet1";
            this.TabSheet1.Size = new System.Drawing.Size(624, 355);
            this.TabSheet1.TabIndex = 0;
            this.TabSheet1.Text = "Via Banco";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(301, 271);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(103, 13);
            this.label7.TabIndex = 20;
            this.label7.Text = "Chave Desbloqueio:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(152, 312);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(66, 13);
            this.label6.TabIndex = 19;
            this.label6.Text = "Liberado [e]:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(76, 313);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 13);
            this.label5.TabIndex = 18;
            this.label5.Text = "Bloqueio [d]:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(76, 271);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(81, 13);
            this.label4.TabIndex = 17;
            this.label4.Text = "Vencimento [c]:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(8, 312);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(44, 13);
            this.label3.TabIndex = 16;
            this.label3.Text = "Ano [b]:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(8, 271);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 13);
            this.label2.TabIndex = 15;
            this.label2.Text = "Mês [a]:";
            // 
            // Button1
            // 
            this.Button1.Location = new System.Drawing.Point(397, 325);
            this.Button1.Name = "Button1";
            this.Button1.Size = new System.Drawing.Size(109, 25);
            this.Button1.TabIndex = 0;
            this.Button1.Text = "Inserir";
            this.Button1.Click += new System.EventHandler(this.Button1_Click);
            // 
            // Grid1
            // 
            this.Grid1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.pid,
            this.pa,
            this.pb,
            this.pc,
            this.pd,
            this.pe,
            this.pf});
            this.Grid1.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.Grid1.Font = new System.Drawing.Font("Tahoma", 8F);
            this.Grid1.Location = new System.Drawing.Point(3, 3);
            this.Grid1.MultiSelect = false;
            this.Grid1.Name = "Grid1";
            this.Grid1.RowHeadersWidth = 25;
            this.Grid1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Grid1.ShowEditingIcon = false;
            this.Grid1.Size = new System.Drawing.Size(618, 126);
            this.Grid1.TabIndex = 1;
            // 
            // EditMes
            // 
            this.EditMes.Location = new System.Drawing.Point(8, 287);
            this.EditMes.Name = "EditMes";
            this.EditMes.Size = new System.Drawing.Size(65, 20);
            this.EditMes.TabIndex = 2;
            // 
            // EditAno
            // 
            this.EditAno.Location = new System.Drawing.Point(8, 327);
            this.EditAno.Name = "EditAno";
            this.EditAno.Size = new System.Drawing.Size(65, 20);
            this.EditAno.TabIndex = 3;
            // 
            // EditVencimento
            // 
            this.EditVencimento.Location = new System.Drawing.Point(79, 287);
            this.EditVencimento.Name = "EditVencimento";
            this.EditVencimento.Size = new System.Drawing.Size(75, 20);
            this.EditVencimento.TabIndex = 4;
            // 
            // EditBloqueio
            // 
            this.EditBloqueio.Location = new System.Drawing.Point(79, 327);
            this.EditBloqueio.Name = "EditBloqueio";
            this.EditBloqueio.Size = new System.Drawing.Size(70, 20);
            this.EditBloqueio.TabIndex = 5;
            // 
            // EditLiberado
            // 
            this.EditLiberado.Location = new System.Drawing.Point(155, 327);
            this.EditLiberado.Name = "EditLiberado";
            this.EditLiberado.Size = new System.Drawing.Size(62, 20);
            this.EditLiberado.TabIndex = 6;
            // 
            // Button2
            // 
            this.Button2.Location = new System.Drawing.Point(512, 325);
            this.Button2.Name = "Button2";
            this.Button2.Size = new System.Drawing.Size(109, 25);
            this.Button2.TabIndex = 7;
            this.Button2.Text = "Consultar";
            this.Button2.Click += new System.EventHandler(this.Button2_Click);
            // 
            // Memo1
            // 
            this.Memo1.Location = new System.Drawing.Point(3, 135);
            this.Memo1.Name = "Memo1";
            this.Memo1.Size = new System.Drawing.Size(502, 130);
            this.Memo1.TabIndex = 8;
            this.Memo1.Text = "";
            // 
            // Button3
            // 
            this.Button3.Location = new System.Drawing.Point(511, 135);
            this.Button3.Name = "Button3";
            this.Button3.Size = new System.Drawing.Size(110, 25);
            this.Button3.TabIndex = 9;
            this.Button3.Text = "Decifrar";
            this.Button3.Click += new System.EventHandler(this.Button3_Click);
            // 
            // Button4
            // 
            this.Button4.Location = new System.Drawing.Point(511, 166);
            this.Button4.Name = "Button4";
            this.Button4.Size = new System.Drawing.Size(110, 25);
            this.Button4.TabIndex = 10;
            this.Button4.Text = "Verificar Hash";
            this.Button4.Click += new System.EventHandler(this.Button4_Click);
            // 
            // Button5
            // 
            this.Button5.Location = new System.Drawing.Point(511, 209);
            this.Button5.Name = "Button5";
            this.Button5.Size = new System.Drawing.Size(110, 25);
            this.Button5.TabIndex = 11;
            this.Button5.Text = "Verificar Adimplência";
            this.Button5.Click += new System.EventHandler(this.Button5_Click);
            // 
            // Button6
            // 
            this.Button6.Location = new System.Drawing.Point(511, 240);
            this.Button6.Name = "Button6";
            this.Button6.Size = new System.Drawing.Size(110, 25);
            this.Button6.TabIndex = 12;
            this.Button6.Text = "Chave Desbloqueio";
            this.Button6.Click += new System.EventHandler(this.Button6_Click);
            // 
            // Button7
            // 
            this.Button7.Location = new System.Drawing.Point(511, 286);
            this.Button7.Name = "Button7";
            this.Button7.Size = new System.Drawing.Size(110, 25);
            this.Button7.TabIndex = 13;
            this.Button7.Text = "Desbloquear Sistema";
            this.Button7.Click += new System.EventHandler(this.Button7_Click);
            // 
            // EditChaveDesbloqueio
            // 
            this.EditChaveDesbloqueio.Location = new System.Drawing.Point(304, 288);
            this.EditChaveDesbloqueio.Name = "EditChaveDesbloqueio";
            this.EditChaveDesbloqueio.Size = new System.Drawing.Size(202, 20);
            this.EditChaveDesbloqueio.TabIndex = 14;
            // 
            // TabSheet2
            // 
            this.TabSheet2.Controls.Add(this.label8);
            this.TabSheet2.Controls.Add(this.Grid2);
            this.TabSheet2.Controls.Add(this.Memo2);
            this.TabSheet2.Controls.Add(this.EditChaveDesbloqueioArquivo);
            this.TabSheet2.Controls.Add(this.Button8);
            this.TabSheet2.Controls.Add(this.Button10);
            this.TabSheet2.Controls.Add(this.Button11);
            this.TabSheet2.Controls.Add(this.Button12);
            this.TabSheet2.Controls.Add(this.Button13);
            this.TabSheet2.Controls.Add(this.Button14);
            this.TabSheet2.Location = new System.Drawing.Point(4, 22);
            this.TabSheet2.Name = "TabSheet2";
            this.TabSheet2.Size = new System.Drawing.Size(624, 355);
            this.TabSheet2.TabIndex = 1;
            this.TabSheet2.Text = "Via Arquivo";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(301, 271);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(103, 13);
            this.label8.TabIndex = 21;
            this.label8.Text = "Chave Desbloqueio:";
            // 
            // Grid2
            // 
            this.Grid2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.a,
            this.b,
            this.c,
            this.d,
            this.e,
            this.f});
            this.Grid2.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.Grid2.Font = new System.Drawing.Font("Tahoma", 8F);
            this.Grid2.Location = new System.Drawing.Point(3, 3);
            this.Grid2.MultiSelect = false;
            this.Grid2.Name = "Grid2";
            this.Grid2.RowHeadersWidth = 25;
            this.Grid2.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Grid2.ShowEditingIcon = false;
            this.Grid2.Size = new System.Drawing.Size(618, 126);
            this.Grid2.TabIndex = 0;
            // 
            // Memo2
            // 
            this.Memo2.Location = new System.Drawing.Point(3, 135);
            this.Memo2.Name = "Memo2";
            this.Memo2.Size = new System.Drawing.Size(502, 130);
            this.Memo2.TabIndex = 1;
            this.Memo2.Text = "";
            // 
            // EditChaveDesbloqueioArquivo
            // 
            this.EditChaveDesbloqueioArquivo.Location = new System.Drawing.Point(304, 287);
            this.EditChaveDesbloqueioArquivo.Name = "EditChaveDesbloqueioArquivo";
            this.EditChaveDesbloqueioArquivo.Size = new System.Drawing.Size(201, 20);
            this.EditChaveDesbloqueioArquivo.TabIndex = 2;
            // 
            // Button8
            // 
            this.Button8.Location = new System.Drawing.Point(511, 283);
            this.Button8.Name = "Button8";
            this.Button8.Size = new System.Drawing.Size(110, 25);
            this.Button8.TabIndex = 3;
            this.Button8.Text = "Desbloquear Sistema";
            this.Button8.Click += new System.EventHandler(this.Button8_Click);
            // 
            // Button10
            // 
            this.Button10.Location = new System.Drawing.Point(511, 325);
            this.Button10.Name = "Button10";
            this.Button10.Size = new System.Drawing.Size(109, 25);
            this.Button10.TabIndex = 4;
            this.Button10.Text = "Inserir";
            this.Button10.Click += new System.EventHandler(this.Button10_Click);
            // 
            // Button11
            // 
            this.Button11.Location = new System.Drawing.Point(511, 135);
            this.Button11.Name = "Button11";
            this.Button11.Size = new System.Drawing.Size(110, 25);
            this.Button11.TabIndex = 5;
            this.Button11.Text = "Decifrar";
            this.Button11.Click += new System.EventHandler(this.Button11_Click);
            // 
            // Button12
            // 
            this.Button12.Location = new System.Drawing.Point(511, 166);
            this.Button12.Name = "Button12";
            this.Button12.Size = new System.Drawing.Size(110, 25);
            this.Button12.TabIndex = 6;
            this.Button12.Text = "Verificar Hash";
            this.Button12.Click += new System.EventHandler(this.Button12_Click);
            // 
            // Button13
            // 
            this.Button13.Location = new System.Drawing.Point(511, 209);
            this.Button13.Name = "Button13";
            this.Button13.Size = new System.Drawing.Size(110, 25);
            this.Button13.TabIndex = 7;
            this.Button13.Text = "Verificar Adimplência";
            this.Button13.Click += new System.EventHandler(this.Button13_Click);
            // 
            // Button14
            // 
            this.Button14.Location = new System.Drawing.Point(511, 240);
            this.Button14.Name = "Button14";
            this.Button14.Size = new System.Drawing.Size(110, 25);
            this.Button14.TabIndex = 8;
            this.Button14.Text = "Chave Desbloqueio";
            this.Button14.Click += new System.EventHandler(this.Button14_Click);
            // 
            // pid
            // 
            this.pid.DataPropertyName = "id";
            this.pid.HeaderText = "id";
            this.pid.Name = "pid";
            // 
            // pa
            // 
            this.pa.DataPropertyName = "a";
            this.pa.HeaderText = "a";
            this.pa.Name = "pa";
            // 
            // pb
            // 
            this.pb.DataPropertyName = "b";
            this.pb.HeaderText = "b";
            this.pb.Name = "pb";
            // 
            // pc
            // 
            this.pc.DataPropertyName = "c";
            this.pc.HeaderText = "c";
            this.pc.Name = "pc";
            // 
            // pd
            // 
            this.pd.DataPropertyName = "d";
            this.pd.HeaderText = "d";
            this.pd.Name = "pd";
            // 
            // pe
            // 
            this.pe.DataPropertyName = "e";
            this.pe.HeaderText = "e";
            this.pe.Name = "pe";
            // 
            // pf
            // 
            this.pf.DataPropertyName = "f";
            this.pf.HeaderText = "f";
            this.pf.Name = "pf";
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.HeaderText = "id";
            this.id.Name = "id";
            // 
            // a
            // 
            this.a.DataPropertyName = "a";
            this.a.HeaderText = "a";
            this.a.Name = "a";
            // 
            // b
            // 
            this.b.DataPropertyName = "b";
            this.b.HeaderText = "b";
            this.b.Name = "b";
            // 
            // c
            // 
            this.c.DataPropertyName = "c";
            this.c.HeaderText = "c";
            this.c.Name = "c";
            // 
            // d
            // 
            this.d.DataPropertyName = "d";
            this.d.HeaderText = "d";
            this.d.Name = "d";
            // 
            // e
            // 
            this.e.DataPropertyName = "e";
            this.e.HeaderText = "e";
            this.e.Name = "e";
            // 
            // f
            // 
            this.f.DataPropertyName = "f";
            this.f.HeaderText = "f";
            this.f.Name = "f";
            // 
            // Form1
            // 
            this.ClientSize = new System.Drawing.Size(632, 430);
            this.Controls.Add(this.Panel1);
            this.Controls.Add(this.PageControl1);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "T2Ti - Segurança";
            this.Panel1.ResumeLayout(false);
            this.Panel1.PerformLayout();
            this.PageControl1.ResumeLayout(false);
            this.TabSheet1.ResumeLayout(false);
            this.TabSheet1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid1)).EndInit();
            this.TabSheet2.ResumeLayout(false);
            this.TabSheet2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid2)).EndInit();
            this.ResumeLayout(false);

		}
		#endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridViewTextBoxColumn pid;
        private System.Windows.Forms.DataGridViewTextBoxColumn pa;
        private System.Windows.Forms.DataGridViewTextBoxColumn pb;
        private System.Windows.Forms.DataGridViewTextBoxColumn pc;
        private System.Windows.Forms.DataGridViewTextBoxColumn pd;
        private System.Windows.Forms.DataGridViewTextBoxColumn pe;
        private System.Windows.Forms.DataGridViewTextBoxColumn pf;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn a;
        private System.Windows.Forms.DataGridViewTextBoxColumn b;
        private System.Windows.Forms.DataGridViewTextBoxColumn c;
        private System.Windows.Forms.DataGridViewTextBoxColumn d;
        private System.Windows.Forms.DataGridViewTextBoxColumn e;
        private System.Windows.Forms.DataGridViewTextBoxColumn f;

	}
}
