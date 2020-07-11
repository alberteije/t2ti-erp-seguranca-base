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
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.Button1 = new System.Windows.Forms.Button();
            this.Grid1 = new System.Windows.Forms.DataGridView();
            this.pid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pb = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pc = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pd = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pe = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pf = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EditMes = new System.Windows.Forms.TextBox();
            this.EditAno = new System.Windows.Forms.TextBox();
            this.EditVencimento = new System.Windows.Forms.TextBox();
            this.EditBloqueio = new System.Windows.Forms.TextBox();
            this.EditLiberado = new System.Windows.Forms.TextBox();
            this.Button2 = new System.Windows.Forms.Button();
            this.Memo1 = new System.Windows.Forms.RichTextBox();
            this.Panel1.SuspendLayout();
            this.PageControl1.SuspendLayout();
            this.TabSheet1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Grid1)).BeginInit();
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
            this.label1.Location = new System.Drawing.Point(60, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(497, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Controle da Quantidade de Lançamentos";
            // 
            // PageControl1
            // 
            this.PageControl1.Controls.Add(this.TabSheet1);
            this.PageControl1.Location = new System.Drawing.Point(0, 49);
            this.PageControl1.Name = "PageControl1";
            this.PageControl1.SelectedIndex = 0;
            this.PageControl1.Size = new System.Drawing.Size(632, 381);
            this.PageControl1.TabIndex = 1;
            // 
            // TabSheet1
            // 
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
            this.TabSheet1.Location = new System.Drawing.Point(4, 22);
            this.TabSheet1.Name = "TabSheet1";
            this.TabSheet1.Size = new System.Drawing.Size(624, 355);
            this.TabSheet1.TabIndex = 0;
            this.TabSheet1.Text = "Via Banco";
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
            this.Memo1.Size = new System.Drawing.Size(613, 130);
            this.Memo1.TabIndex = 8;
            this.Memo1.Text = "Quantidade de Lançamentos permitida para os Pagamentos: 5";
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
            this.ResumeLayout(false);

		}
		#endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn pid;
        private System.Windows.Forms.DataGridViewTextBoxColumn pa;
        private System.Windows.Forms.DataGridViewTextBoxColumn pb;
        private System.Windows.Forms.DataGridViewTextBoxColumn pc;
        private System.Windows.Forms.DataGridViewTextBoxColumn pd;
        private System.Windows.Forms.DataGridViewTextBoxColumn pe;
        private System.Windows.Forms.DataGridViewTextBoxColumn pf;

	}
}
