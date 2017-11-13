namespace arconfirmationletter.View
{
    partial class fRM_AROPTION
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fRM_AROPTION));
            this.label2 = new System.Windows.Forms.Label();
            this.pk_todate = new System.Windows.Forms.DateTimePicker();
            this.bt_okthuchien = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.datelinePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.pik_fromdate = new System.Windows.Forms.DateTimePicker();
            this.Regioncheck = new System.Windows.Forms.CheckBox();
            this.SuspendLayout();
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(12, 81);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 19);
            this.label2.TabIndex = 3;
            this.label2.Text = "Đến ngày:";
            // 
            // pk_todate
            // 
            this.pk_todate.CustomFormat = "dd.MM.yyyy";
            this.pk_todate.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pk_todate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.pk_todate.Location = new System.Drawing.Point(123, 75);
            this.pk_todate.Name = "pk_todate";
            this.pk_todate.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.pk_todate.Size = new System.Drawing.Size(131, 26);
            this.pk_todate.TabIndex = 2;
            this.pk_todate.Value = new System.DateTime(2015, 11, 22, 11, 48, 55, 0);
            this.pk_todate.ValueChanged += new System.EventHandler(this.pk_todate_ValueChanged);
            this.pk_todate.KeyDown += new System.Windows.Forms.KeyEventHandler(this.pk_todate_KeyDown);
            // 
            // bt_okthuchien
            // 
            this.bt_okthuchien.Location = new System.Drawing.Point(156, 184);
            this.bt_okthuchien.Name = "bt_okthuchien";
            this.bt_okthuchien.Size = new System.Drawing.Size(97, 27);
            this.bt_okthuchien.TabIndex = 4;
            this.bt_okthuchien.Text = "Thực hiện";
            this.bt_okthuchien.UseVisualStyleBackColor = true;
            this.bt_okthuchien.Click += new System.EventHandler(this.bt_okthuchien_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Lucida Fax", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(24, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(229, 18);
            this.label3.TabIndex = 5;
            this.label3.Text = "OPTION TO MAKE REPORTS";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(12, 129);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(89, 19);
            this.label6.TabIndex = 13;
            this.label6.Text = "Ngày trả thư:";
            // 
            // datelinePicker1
            // 
            this.datelinePicker1.CustomFormat = "dd.MM.yyyy";
            this.datelinePicker1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.datelinePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.datelinePicker1.Location = new System.Drawing.Point(123, 123);
            this.datelinePicker1.Name = "datelinePicker1";
            this.datelinePicker1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.datelinePicker1.Size = new System.Drawing.Size(131, 26);
            this.datelinePicker1.TabIndex = 12;
            this.datelinePicker1.Value = new System.DateTime(2015, 11, 27, 5, 55, 4, 0);
            this.datelinePicker1.KeyDown += new System.Windows.Forms.KeyEventHandler(this.datelinePicker1_KeyDown);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(23, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 19);
            this.label1.TabIndex = 15;
            this.label1.Text = "Từ ngày:";
            // 
            // pik_fromdate
            // 
            this.pik_fromdate.Checked = false;
            this.pik_fromdate.CustomFormat = "dd.MM.yyyy";
            this.pik_fromdate.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pik_fromdate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.pik_fromdate.Location = new System.Drawing.Point(122, 43);
            this.pik_fromdate.Name = "pik_fromdate";
            this.pik_fromdate.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.pik_fromdate.Size = new System.Drawing.Size(131, 26);
            this.pik_fromdate.TabIndex = 14;
            this.pik_fromdate.Value = new System.DateTime(2015, 11, 22, 11, 48, 31, 0);
            // 
            // Regioncheck
            // 
            this.Regioncheck.AutoSize = true;
            this.Regioncheck.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Regioncheck.Location = new System.Drawing.Point(122, 155);
            this.Regioncheck.Name = "Regioncheck";
            this.Regioncheck.Size = new System.Drawing.Size(130, 19);
            this.Regioncheck.TabIndex = 16;
            this.Regioncheck.Text = "By Region (Yes/no)";
            this.Regioncheck.UseVisualStyleBackColor = true;
            // 
            // fRM_AROPTION
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScrollMargin = new System.Drawing.Size(10, 10);
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(286, 224);
            this.Controls.Add(this.Regioncheck);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.pik_fromdate);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.datelinePicker1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.bt_okthuchien);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pk_todate);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "fRM_AROPTION";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "AR letter option";
            this.TopMost = true;
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker pk_todate;
        private System.Windows.Forms.Button bt_okthuchien;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DateTimePicker datelinePicker1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker pik_fromdate;
        private System.Windows.Forms.CheckBox Regioncheck;
    }
}