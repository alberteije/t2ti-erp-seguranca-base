namespace Seguranca
{
	partial class Form1
	{
		private System.Windows.Forms.ToolTip toolTip1;
		private System.Windows.Forms.Panel Panel1;
		private System.Windows.Forms.TabControl PageControl1;
        private System.Windows.Forms.TabPage TabSheet1;
        private System.Windows.Forms.DataGridView Grid1;
        internal System.Windows.Forms.RichTextBox Memo1;
		private System.Windows.Forms.Button Button4;
		private System.Windows.Forms.Button Button5;
        private System.Windows.Forms.Button Button6;
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
            this.EditQuantidade = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.EditIdDispositivoCliente = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.EditComandoRecebido = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.Grid1 = new System.Windows.Forms.DataGridView();
            this.pid = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pb = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Memo1 = new System.Windows.Forms.RichTextBox();
            this.Button4 = new System.Windows.Forms.Button();
            this.Button5 = new System.Windows.Forms.Button();
            this.Button6 = new System.Windows.Forms.Button();
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
            this.label1.Location = new System.Drawing.Point(164, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(315, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "Controle dos Dispositivos";
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
            this.TabSheet1.Controls.Add(this.EditQuantidade);
            this.TabSheet1.Controls.Add(this.label4);
            this.TabSheet1.Controls.Add(this.EditIdDispositivoCliente);
            this.TabSheet1.Controls.Add(this.label3);
            this.TabSheet1.Controls.Add(this.EditComandoRecebido);
            this.TabSheet1.Controls.Add(this.label2);
            this.TabSheet1.Controls.Add(this.Grid1);
            this.TabSheet1.Controls.Add(this.Memo1);
            this.TabSheet1.Controls.Add(this.Button4);
            this.TabSheet1.Controls.Add(this.Button5);
            this.TabSheet1.Controls.Add(this.Button6);
            this.TabSheet1.Location = new System.Drawing.Point(4, 22);
            this.TabSheet1.Name = "TabSheet1";
            this.TabSheet1.Size = new System.Drawing.Size(624, 355);
            this.TabSheet1.TabIndex = 0;
            this.TabSheet1.Text = "Dados";
            // 
            // EditQuantidade
            // 
            this.EditQuantidade.Location = new System.Drawing.Point(353, 69);
            this.EditQuantidade.Name = "EditQuantidade";
            this.EditQuantidade.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.EditQuantidade.Size = new System.Drawing.Size(263, 20);
            this.EditQuantidade.TabIndex = 18;
            this.EditQuantidade.Text = "2";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(350, 53);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(229, 13);
            this.label4.TabIndex = 17;
            this.label4.Text = "Quantidade Máxima de Dispositivos Permitidos:";
            // 
            // EditIdDispositivoCliente
            // 
            this.EditIdDispositivoCliente.Location = new System.Drawing.Point(8, 69);
            this.EditIdDispositivoCliente.Name = "EditIdDispositivoCliente";
            this.EditIdDispositivoCliente.Size = new System.Drawing.Size(339, 20);
            this.EditIdDispositivoCliente.TabIndex = 16;
            this.EditIdDispositivoCliente.Text = "c400a910c264e53bbcbe87a9acbbd193";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(5, 53);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(175, 13);
            this.label3.TabIndex = 15;
            this.label3.Text = "Identificação do Dispositivo Cliente:";
            // 
            // EditComandoRecebido
            // 
            this.EditComandoRecebido.Location = new System.Drawing.Point(11, 25);
            this.EditComandoRecebido.Name = "EditComandoRecebido";
            this.EditComandoRecebido.Size = new System.Drawing.Size(605, 20);
            this.EditComandoRecebido.TabIndex = 14;
            this.EditComandoRecebido.Text = "http://localhost:8080/Session/c400a910c264e53bbcbe87a9acbbd193/";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(8, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(204, 13);
            this.label2.TabIndex = 13;
            this.label2.Text = "Comando Recebido da Aplicação Cliente:";
            // 
            // Grid1
            // 
            this.Grid1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.pid,
            this.pa,
            this.pb});
            this.Grid1.EditMode = System.Windows.Forms.DataGridViewEditMode.EditProgrammatically;
            this.Grid1.Font = new System.Drawing.Font("Tahoma", 8F);
            this.Grid1.Location = new System.Drawing.Point(3, 117);
            this.Grid1.MultiSelect = false;
            this.Grid1.Name = "Grid1";
            this.Grid1.RowHeadersWidth = 25;
            this.Grid1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.Grid1.ShowEditingIcon = false;
            this.Grid1.Size = new System.Drawing.Size(618, 98);
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
            this.pa.Width = 200;
            // 
            // pb
            // 
            this.pb.DataPropertyName = "b";
            this.pb.HeaderText = "b";
            this.pb.Name = "pb";
            // 
            // Memo1
            // 
            this.Memo1.Location = new System.Drawing.Point(3, 249);
            this.Memo1.Name = "Memo1";
            this.Memo1.Size = new System.Drawing.Size(502, 99);
            this.Memo1.TabIndex = 8;
            this.Memo1.Text = "";
            // 
            // Button4
            // 
            this.Button4.Location = new System.Drawing.Point(3, 218);
            this.Button4.Name = "Button4";
            this.Button4.Size = new System.Drawing.Size(618, 25);
            this.Button4.TabIndex = 10;
            this.Button4.Text = "Consultar Dispositivos Cadastrados no Banco de Dados";
            this.Button4.Click += new System.EventHandler(this.Button4_Click);
            // 
            // Button5
            // 
            this.Button5.Location = new System.Drawing.Point(511, 249);
            this.Button5.Name = "Button5";
            this.Button5.Size = new System.Drawing.Size(110, 25);
            this.Button5.TabIndex = 11;
            this.Button5.Text = "Inserir";
            this.Button5.Click += new System.EventHandler(this.Button5_Click);
            // 
            // Button6
            // 
            this.Button6.Location = new System.Drawing.Point(511, 280);
            this.Button6.Name = "Button6";
            this.Button6.Size = new System.Drawing.Size(110, 25);
            this.Button6.TabIndex = 12;
            this.Button6.Text = "Consultar";
            this.Button6.Click += new System.EventHandler(this.Button6_Click);
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
        private System.Windows.Forms.TextBox EditQuantidade;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox EditIdDispositivoCliente;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox EditComandoRecebido;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridViewTextBoxColumn pid;
        private System.Windows.Forms.DataGridViewTextBoxColumn pa;
        private System.Windows.Forms.DataGridViewTextBoxColumn pb;

	}
}
