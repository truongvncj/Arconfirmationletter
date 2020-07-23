using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace arconfirmationletter.View
{
    public partial class Selectcodechoice : Form
    {
         public double Customernumber;
        public string Name_1;
        // , 
        //    public VInputchange Fromeditable;
        //    public string tablename;
        public Selectcodechoice(IQueryable rs, LinqtoSQLDataContext db, string fornname)
        {

          
         //   return false;





            InitializeComponent();
            label1.Text = fornname;
            dataGridView1.DataSource = rs;
            this.Customernumber = -1;

            this.Name_1 = "";
    }


       

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
          

        }

        private void Seachcode_FormClosed(object sender, FormClosedEventArgs e)
        {
            //if (tablename == "tblCustomer")
            //{
            //    Fromviewable.Reloadcustomer("");
            //}
            ////if (tablename == "tblFBL5Nnewthisperiod")
            ////{
            ////    Fromviewable.ReloadtblFBL5Nnewthisperiod("");
            //}



        }

        private void Seachcode_Leave(object sender, EventArgs e)
        {
         
        }

        private void Seachcode_Deactivate(object sender, EventArgs e)
        {
            this.Close();
        }

        private void sendingtext_Enter(object sender, EventArgs e)
        {
          
        }

        private void sendingtext_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {


             

            }
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dataGridView1.RowCount > 0)
            {




                if (this.dataGridView1.CurrentCell.RowIndex >= 0)
                {
                    try
                    {
                        if (Utils.IsValidnumber(this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex].Cells["Customer"].Value.ToString()))
                        {
                            this.Customernumber = (double)this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex].Cells["Customer"].Value;

                            this.Name_1 = (string)this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex].Cells["Name_1"].Value;



                            //this.Customer = -1;

                            //this.Name_1 = "";
                        }


                        this.Close();

                    }
                    catch (Exception)
                    {

                        MessageBox.Show("Please select one code !");
                    }

                }



            }




        }

        private void dataGridView1_KeyPress(object sender, KeyPressEventArgs e)
        {

            if (e.KeyChar == (char)Keys.Enter)
            {
                #region /////////////

                if (dataGridView1.RowCount > 0)
                {




                    if (this.dataGridView1.CurrentCell.RowIndex >= 0)
                    {
                        try
                        {
                            if (Utils.IsValidnumber(this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex-1].Cells["Customer"].Value.ToString()))
                            {
                                this.Customernumber = (double)this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex - 1].Cells["Customer"].Value;

                                this.Name_1 = (string)this.dataGridView1.Rows[this.dataGridView1.CurrentCell.RowIndex-1].Cells["Name_1"].Value;



                                //this.Customer = -1;

                                //this.Name_1 = "";
                            }


                            this.Close();

                        }
                        catch (Exception)
                        {

                            MessageBox.Show("Please select one code !");
                        }

                    }



                }



                #endregion      //////////////

            }


        }
    }
}
