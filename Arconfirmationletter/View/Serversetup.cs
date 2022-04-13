using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace arconfirmationletter.View
{
    public partial class Serversetup : Form
    {
        public Serversetup()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {

            String current = System.IO.Directory.GetCurrentDirectory();

            string fileName = current + "\\Connectstring.txt";

            if (txtservername.Text != "" && txtusername.Text != "" && txtpassword.Text != "" && txt_dbname.Text != "")
            {


                //   string[] names = new string[] { "Zara Ali", "Nuha Ali" };
                string s = txtservername.Text + ";" + txtusername.Text + ";" + txtpassword.Text+";"+ txt_dbname.Text;
            
            using (StreamWriter sw = new StreamWriter(fileName))
            {

                    try
                    {
                        #region ghi vao data pass, user, connectstring


                     //   string s1 = st1 + ";" + st2 + ";" + st3 + ";" + st4;

                        //   string s1 = st1 + ";" + st2 + ";" + st3 + ";" + st4 + ";" + textBox1.Text;

                        Model.SercurityFucntion bm = new Model.SercurityFucntion();
                        string s2 = bm.Encryption(s);


                        sw.WriteLine(s2);
                        //  bm.WritestringtoFile(fileName, s2);

                        #endregion




                   
                    }
                    catch (Exception ex)
                    {

                        MessageBox.Show("Không ghi được !" +ex.ToString(),"Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                   
            }
                this.Close();  
            //  MessageBox.Show(s);
            }
        }
    }
}
