using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace arconfirmationletter.View
{
    public partial class PrintLetterOption : Form
    {
        public int choice { get; set; }
        public double onlycode { get; set; }
        public double fromcode { get; set; }
        public double tocode { get; set; }

        public string groupsending { get; set; }


  
        public PrintLetterOption()
        {
            InitializeComponent();
            lbnamecode.Text = "";
            this.choice = 0;
            //   this.cb_printall.CheckState = CheckState.Checked;
            this.cb_groupprit.CheckState = CheckState.Unchecked;
            this.cb_onlycode.CheckState = CheckState.Unchecked;
            this.cb_fromcodetocode.CheckState = CheckState.Unchecked;


            #region  customer senđing grup data



            //try
            //{
                List<Viewtable.ComboboxItem> dataCollection = new List<Viewtable.ComboboxItem>();

             
                string connection_string = Utils.getConnectionstr();
                LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);
                db.CommandTimeout = 0;

                var ListCustomre = db.ExecuteQuery<string>("SELECT DISTINCT SendingGroup FROM tblCustomer WHERE tblCustomer.Reportsend = 'true'").ToList();




                foreach (var item in ListCustomre)
                {

                if (item != null)
                {
                    Viewtable.ComboboxItem itemcb = new Viewtable.ComboboxItem();

                    itemcb.Value = item;
                    itemcb.Text = item;

                    dataCollection.Add(itemcb);
                }

                   


                }


                input_groupcode.DataSource = dataCollection;



         //   }
            //catch (Exception ex)
            //{

            //    MessageBox.Show(ex.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);

            //}

            #endregion



        }

        private void cb_groupprit_CheckedChanged(object sender, EventArgs e)
        {
            if (this.cb_groupprit.CheckState == CheckState.Checked)
            {
                this.cb_onlycode.CheckState = CheckState.Unchecked;
                this.cb_fromcodetocode.CheckState = CheckState.Unchecked;
                //   this.cb_printall.CheckState = CheckState.Unchecked;
            }




        }

        private void cb_fromcodetocode_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void cb_onlycode_CheckedChanged(object sender, EventArgs e)
        {

            if (this.cb_onlycode.CheckState == CheckState.Checked)
            {
                this.cb_groupprit.CheckState = CheckState.Unchecked;
                this.cb_fromcodetocode.CheckState = CheckState.Unchecked;
                //          this.cb_printall.CheckState = CheckState.Unchecked;
            }



        }

        private void cb_fromcodetocode_CheckStateChanged(object sender, EventArgs e)
        {

            if (this.cb_fromcodetocode.CheckState == CheckState.Checked)
            {
                this.cb_onlycode.CheckState = CheckState.Unchecked;
                this.cb_groupprit.CheckState = CheckState.Unchecked;
                //          this.cb_printall.CheckState = CheckState.Unchecked;
            }




        }

        private void comboBox1_KeyPress(object sender, KeyPressEventArgs e)
        {

            this.cb_groupprit.CheckState = CheckState.Checked;


        }

        private void comboBox3_SelectedValueChanged(object sender, EventArgs e)
        {

            this.cb_fromcodetocode.CheckState = CheckState.Checked;


        }

        private void comboBox4_SelectedValueChanged(object sender, EventArgs e)
        {

            this.cb_fromcodetocode.CheckState = CheckState.Checked;

        }

        private void comboBox2_KeyPress(object sender, KeyPressEventArgs e)
        {

            this.cb_onlycode.CheckState = CheckState.Checked;

            if (e.KeyChar == (char)Keys.Enter)
            {

            

                    #region  onlycode data

                    string connection_string = Utils.getConnectionstr();
                LinqtoSQLDataContext dc = new LinqtoSQLDataContext(connection_string);
                dc.CommandTimeout = 0;

                try
                {
                 //   List<Viewtable.ComboboxItem> dataCollection = new List<Viewtable.ComboboxItem>();

                    //     tblCustomer t = new tblCustomer();
                    //  t.Name_1
                    List<Viewtable.ComboboxItem> dataCollection2 = new List<Viewtable.ComboboxItem>();

                    //var ListCustomre = db.ExecuteQuery<tblCustomer>(@"SELECT * FROM tblCustomer WHERE Cusromergroup IN (SELECT DISTINCT Cusromergroup 
                    //                                                                                               FROM tblCustomer
                    //                                                                                                WHERE tblCustomer.Reportsend = 'True'
                    //                                                                                                 And  Customer like {0}
                    //                                                                                                       )", input_onlycode.Text).AsQueryable();

                    var ListCustomre = from pp in dc.tblCustomers
                                   where pp.Reportsend == true
                                         && Convert.ToInt32(pp.Cusromergroup) .ToString().Contains( input_onlycode.Text)
                                   select pp;


                    Selectcodechoice view = new Selectcodechoice(ListCustomre, dc, "PLEASE SELECT CODE !");


                    view.ShowDialog();
                    //  int id = view.id;
                    if (view.Customer > 0 )
                    {
                        Viewtable.ComboboxItem itemcb = new Viewtable.ComboboxItem();

                        itemcb.Value = view.Customer;
                        itemcb.Text = view.Customer.ToString();

                        dataCollection2.Add(itemcb);
                        input_onlycode.DataSource = dataCollection2;
                         input_onlycode.SelectedIndex = 0;
                        lbnamecode.Text = view.Customer + ": " + view.Name_1;
                    }






                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.ToString(), "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);

                }

                #endregion


            }




        }

        private void comboBox1_SelectedValueChanged(object sender, EventArgs e)
        {

            this.cb_groupprit.CheckState = CheckState.Checked;

        }

        private void comboBox2_SelectedValueChanged(object sender, EventArgs e)
        {

            this.cb_onlycode.CheckState = CheckState.Checked;

        }

        private void comboBox3_KeyPress(object sender, KeyPressEventArgs e)
        {

            this.cb_fromcodetocode.CheckState = CheckState.Checked;

        }

        private void comboBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            this.cb_fromcodetocode.CheckState = CheckState.Checked;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //public int choice { get; set; }
            //     public float onlycode { get; set; }
            //     public float fromcode { get; set; }
            //     public float tocode { get; set; }
            //if (cb_printall.CheckState == CheckState.Checked)
            //{
            //    this.choice = 4;

            //    this.Close();

            //    //       MessageBox.Show(this.groupsending);
            //}


            if (cb_groupprit.CheckState == CheckState.Checked)
            {
                this.choice = 1;

                if (this.input_groupcode.SelectedItem != null)
                {
                    this.groupsending = this.input_groupcode.Text;


                    this.Close();
                }
                else
                {

                    MessageBox.Show("Please choose one Group to print !", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }



                //       MessageBox.Show(this.groupsending);
            }

            //   this.Close();
            if (cb_onlycode.CheckState == CheckState.Checked)
            {
                this.choice = 3;

                if (this.input_onlycode.SelectedItem != null)
                {
                    this.onlycode = double.Parse((this.input_onlycode.SelectedItem as Viewtable.ComboboxItem).Value.ToString());
                    this.Close();
                }
                else
                {

                    MessageBox.Show("Please choose one customer code !", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }


                //    MessageBox.Show(this.onlycode.ToString());





            }
            if (cb_fromcodetocode.CheckState == CheckState.Checked)
            {
                this.choice = 0;

                if (Utils.IsValidnumber(this.input_fromcode.Text.Trim()) && Utils.IsValidnumber(this.input_tocode.Text.Trim()))
                {
                    this.fromcode = double.Parse(this.input_fromcode.Text.Trim());
                    this.tocode = double.Parse(this.input_tocode.Text.Trim());
                    this.choice = 2;
                }
                else
                {

                    MessageBox.Show("Code must be Number !", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

                if (this.choice == 2)
                {

                    if (this.fromcode <= this.tocode)
                    {
                        this.Close();
                    }
                    else
                    {

                        MessageBox.Show("Fromcode phải nhỏ hơn hoặc bằng tocode !", "Note", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }






                }





            }



        }

        private void cb_printall_CheckStateChanged(object sender, EventArgs e)
        {
            //if (this.cb_printall.CheckState == CheckState.Checked)
            //{
            //    this.cb_onlycode.CheckState = CheckState.Unchecked;
            //    this.cb_groupprit.CheckState = CheckState.Unchecked;
            //    //    this.cb_printall.CheckState = CheckState.Unchecked;
            //    this.cb_fromcodetocode.CheckState = CheckState.Unchecked;
            //}
        }
    }
}
