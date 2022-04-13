using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Xml;



namespace arconfirmationletter.View
{
    public partial class Login : Form
    {



        public Login()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //
            String current = System.IO.Directory.GetCurrentDirectory();

            string fileName = current + "\\Connectstring.txt";
            string connection_string = "";
            string st1 = "";
            string st2 = "";
            string st3 = "";
            string st4 = "";


         
            const Int32 BufferSize = 128;
           
                string line;
             


                    Model.SercurityFucntion bm2 = new Model.SercurityFucntion();
                    line = bm2.Readtextfromfile(fileName);
                    string line2 = bm2.Decryption(line);




                    string[] parts = line2.Split(';');

                    st1 = parts[0].Trim();
                    st2 = parts[1].Trim();
                    st3 = parts[2].Trim();
                    st4 = parts[3].Trim();


                    //string[] parts = line.Split(';');

                    //st1 = parts[0].Trim();
                    //st2 = parts[1].Trim();
                    //st3 = parts[2].Trim();
                    //st4 = parts[3].Trim();


                   // string s = txtservername.Text + ";" + txtusername.Text + ";" + txtpassword.Text + ";" + txt_dbname.Text;
            
                  
                    connection_string = ("Data Source =" + st1 + "; Initial Catalog = " + st4 + "; User Id =" + st2 + "; Password =" + st3).Trim();
                   
                    //       connection_string = "Data Source = DESKTOP-8D4F853\\SQLEXPRESS; Initial Catalog = ARconfirmationletter; User Id = SA; Password = 123123";



              
            

            if (txtusername.Text != "" & txtpassword.Text != "")
            {
                string queryText = @"SELECT Count(*) FROM tbl_Temp 
                             WHERE username = @Username AND password = @Password";
                using (SqlConnection cn = new SqlConnection(connection_string))
                using (SqlCommand cmd = new SqlCommand(queryText, cn))
                {
                    cmd.CommandTimeout = 60;
                    try
                    {
                        cn.Open();
                    }
                    catch (Exception ex)
                    {

                        MessageBox.Show(ex.ToString()+ "Lỗi đường truyền dữ liệu !", "Connection !", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }

                    cmd.Parameters.AddWithValue("@Username", txtusername.Text);
                    cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
                    int result = (int)cmd.ExecuteScalar();
                    if (result > 0)
                    {

                     

                        #region ghi vao data pass, user, connectstring


                        string s1 = st1 + ";" + st2 + ";" + st3 + ";" + st4 + ";" + txtusername.Text ;

                       
                        Model.SercurityFucntion bm = new Model.SercurityFucntion();
                        string s2 = bm.Encryption(s1);

                        bm.WritestringtoFile(fileName, s2);

                        #endregion





                        Username user = new Username();
                        int Ver = user.Version;


                        if (Ver == 20)
                        {


                            this.Hide();
                            View.Main main = new Main(); //
                            main.Closed += (s, args) => this.Close();
                            main.Show();
                        }
                        else
                        {

                            MessageBox.Show("You are using old version \n please use the new KA Version: "+ Ver.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                            this.Close();


                        }



                    }
                    else
                        MessageBox.Show("Wrong Username and Password !", "Connection !", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }







        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            View.Serversetup stup = new Serversetup();
            stup.Show();
        }

        private void textBox1_Enter(object sender, EventArgs e)
        {
            //   textBox2.
        }

        private void textBox2_Enter(object sender, EventArgs e)
        {
            //    button1.Focus();
        }

        private void textBox2_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                this.btlogin.Focus();
            }
        }

        private void textBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                this.txtpassword.Focus();
            }
        }
    }

}
