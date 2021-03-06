using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using arconfirmationletter.View;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;
using System.Data.OleDb;
using System.Threading;
using System.Data.SqlClient;
using System.Data;
using arconfirmationletter.shared;

namespace arconfirmationletter.Model
{
    class fbl5n_ctrl
    {
        public IQueryable fbl5nsetlect_all(LinqtoSQLDataContext dblink)
        {

            // var db = new LinqtoSQLDataContext(connection_string);
            var rs = from tblFBL5N in dblink.tblFBL5Ns
                     select tblFBL5N;

            return rs;

        }

        public bool deleteFbl5n()
        {
            string connection_string = Utils.getConnectionstr();
            var db = new LinqtoSQLDataContext(connection_string);
            //   var rs = from tblFBL5N in db.tblFBL5Ns
            //          select tblFBL5N;
            db.CommandTimeout = 0;
            try
            {
                db.ExecuteCommand("DELETE FROM tblFBL5N");

            }
            catch (Exception ex)
            {

                MessageBox.Show("Lỗi khi xóa bảng FBL5n " + ex.ToString());
            }
            //    dc.tblFBL5Nnewthisperiods.DeleteAllOnSubmit(rsthisperiod);
            db.SubmitChanges();

            return true;
        }

        class datainportF
        {

            public string filename { get; set; }

        }

        private void importsexcel(object obj)
        {
            //     List<tblFBL5N> fbl5n_ctrllist = new List<tblFBL5N>();
            fbl5n_ctrl md = new fbl5n_ctrl();

            bool kq = md.deleteFbl5n();

            datainportF inf = (datainportF)obj;

            string filename = inf.filename;



            //      ExcelProvider ExcelProvide = new ExcelProvider();
            //#endregion
            System.Data.DataTable sourceData = ExcelProvider.GetDataFromExcel(filename);

            System.Data.DataTable batable = new System.Data.DataTable();

            batable.Columns.Add("Account", typeof(double));
            batable.Columns.Add("Assignment", typeof(string));
            batable.Columns.Add("PostingDate", typeof(DateTime));
            //     PF Inv Date
            batable.Columns.Add("PFInvDate", typeof(DateTime));
            
      //      PF Inv Number
            batable.Columns.Add("PFInvNumber", typeof(string));
            //  Invoice Registration No.
            batable.Columns.Add("InvoiceRegistration", typeof(string));


            batable.Columns.Add("DocumentType", typeof(string));
            batable.Columns.Add("BusinessArea", typeof(string));
            batable.Columns.Add("DocumentNumber", typeof(double));
            batable.Columns.Add("Amountinlocalcurrency", typeof(double));
            batable.Columns.Add("Deposit", typeof(double));

           

            int InvoiceRegistrationid = -1;
            int PFInvDateid = -1;
            int PFInvNumberid = -1;
            int Depositid = -1;
            int Accountid = -1;
            int Assignmentid = -1;
            int PostingDateid = -1;
            int DocumentTypeid = -1;
            int DocumentNumberid = -1;
            int BusinessAreaid = -1;
            int Amountinlocalcurrencyid = -1;

            int rowseet = sourceData.Rows.Count;
            if (rowseet >20)
            {
                rowseet = 20;
            }

            for (int rowid = 0; rowid < rowseet; rowid++)
            {
                // headindex = 1;
                for (int columid = 0; columid < sourceData.Columns.Count; columid++)
                {
                    #region
                    string value = "";
                    try
                    {
                        value = sourceData.Rows[rowid][columid].ToString();

                    }
                    catch (Exception)
                    {
                        value = "";
                        //  throw;
                    }
                    //            MessageBox.Show(value +":"+ rowid);

                    if (value != null && value != "")
                    {

                        //    #region setcolum
                        if (value.Trim() == ("Account"))  //Account
                        {
                            Accountid = columid;
                            //  headindex = rowid;
                        }

                        if (value.Trim() == ("Assignment"))
                        {

                            Assignmentid = columid;
                            //    headindex = 0;

                        }


                        if (value.Trim() == ("Posting Date"))
                        {

                            PostingDateid = columid;
                            //   headindex = 0;



                        }

                        if (value.Trim() == ("Deposit"))
                        {

                            Depositid = columid;
                            //   headindex = 0;



                        }


                        if (value.Trim() == ("Document Type"))
                        {
                            DocumentTypeid = columid;

                        }
                        if (value.Trim() == ("Document Number"))
                        {
                            DocumentNumberid = columid;

                        }



                        if (value.Trim() == ("Amount in local currency"))
                        {
                            Amountinlocalcurrencyid = columid;

                        }
                        if (value.Trim() == ("Business Area"))
                        {
                            BusinessAreaid = columid;

                        }
                        ////     PF Inv Date
                        // batable.Columns.Add("PFInvDate", typeof(DateTime));

                        if (value.Trim() == ("PF Inv Date"))
                        {
                            PFInvDateid = columid;

                        }

                        if (value.Trim() == ("PF Inv Number"))
                        {
                            PFInvNumberid = columid;

                        }

                        if (value.Trim() == ("Invoice Registration No."))
                        {
                            InvoiceRegistrationid = columid;

                        }

                       
                      
                    }
                    #endregion


                }// colum

            }// roww off heatder


            if (Accountid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Account", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (InvoiceRegistrationid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Invoice Registration No.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }


         
            if (Depositid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Deposit", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (Assignmentid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Assignment", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (DocumentNumberid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Document Number", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (DocumentTypeid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Document Type", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (BusinessAreaid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Business Area", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (Amountinlocalcurrencyid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Amount in local currencyid", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (PostingDateid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Posting Date", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (PFInvDateid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột PF Inv Date", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (PFInvNumberid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột PF Inv Number", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
         

            for (int rowixd = 0; rowixd < sourceData.Rows.Count; rowixd++)
            {

                #region


                //   string valuepricelist = Utils.GetValueOfCellInExcel(worksheet, rowid, columpricelist);
                string Account = sourceData.Rows[rowixd][Accountid].ToString();
                if (Account != "" && Utils.IsValidnumber(Account) && sourceData.Rows[rowixd][DocumentTypeid].ToString().Trim() != "")
                {

                    if (double.Parse(Account) > 0)
                    {
                        DataRow dr = batable.NewRow();
                        dr["Account"] = double.Parse(sourceData.Rows[rowixd][Accountid].ToString());//.Trim();
                        dr["Assignment"] = sourceData.Rows[rowixd][Assignmentid].ToString().Truncate(225).Trim();

                        dr["PFInvNumber"] = sourceData.Rows[rowixd][PFInvNumberid].ToString().Truncate(50).Trim();

                        dr["InvoiceRegistration"] = sourceData.Rows[rowixd][InvoiceRegistrationid].ToString().Truncate(50).Trim();



                        try
                        {
                            dr["PostingDate"] = Utils.chageExceldatetoData(sourceData.Rows[rowixd][PostingDateid].ToString());
                        }
                        catch (Exception)
                        {

                            dr["PostingDate"] = "";
                        }

                     

                        try
                        {
                            dr["PFInvDate"] = Utils.chageExceldatetoData(sourceData.Rows[rowixd][PFInvDateid].ToString());
                        }
                        catch (Exception )
                        {
                          
                          
                            dr["PFInvDate"] = "";
                        }





                        dr["DocumentType"] = sourceData.Rows[rowixd][DocumentTypeid].ToString().Truncate(225).Trim();

                        if (Utils.IsValidnumber(sourceData.Rows[rowixd][DocumentNumberid].ToString()))
                        {
                            dr["DocumentNumber"] = double.Parse(sourceData.Rows[rowixd][DocumentNumberid].ToString());//.Trim();

                        }
                        else
                        {
                            dr["DocumentNumber"] = 0;
                        }

                        if (Utils.IsValidnumber(sourceData.Rows[rowixd][Amountinlocalcurrencyid].ToString()))
                        {
                            dr["Amountinlocalcurrency"] = double.Parse(sourceData.Rows[rowixd][Amountinlocalcurrencyid].ToString());//.Trim();

                        }
                        else
                        {
                            dr["Amountinlocalcurrency"] = 0;
                        }
                        dr["BusinessArea"] = sourceData.Rows[rowixd][BusinessAreaid].ToString().Truncate(225).Trim();

                        if (Utils.IsValidnumber(sourceData.Rows[rowixd][Depositid].ToString().Trim()))
                        {
                            dr["Deposit"] = double.Parse(sourceData.Rows[rowixd][Depositid].ToString().Trim());

                        }
                        else
                        {
                            dr["Deposit"] = 0;
                        }



                        batable.Rows.Add(dr);


                    }

                }

                #endregion
            }

            //    Utils util = new Utils();
            string destConnString = Utils.getConnectionstr();

            //---------------fill data


            using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
            {
                bulkCopy.BulkCopyTimeout = 0;
                bulkCopy.DestinationTableName = "tblFBL5N";
                // Write from the source to the destination.
                bulkCopy.ColumnMappings.Add("[Account]", "[Account]");
                bulkCopy.ColumnMappings.Add("[Assignment]", "[Assignment]");
                bulkCopy.ColumnMappings.Add("[PostingDate]", "[Posting Date]");
                bulkCopy.ColumnMappings.Add("[DocumentType]", "[Document Type]");
                bulkCopy.ColumnMappings.Add("[DocumentNumber]", "[Document Number]");
                bulkCopy.ColumnMappings.Add("[BusinessArea]", "[Business Area]");
                bulkCopy.ColumnMappings.Add("[Amountinlocalcurrency]", "[Amount in local currency]");
                bulkCopy.ColumnMappings.Add("[Deposit]", "[Deposit]");
                bulkCopy.ColumnMappings.Add("[PFInvDate]", "[PFInvDate]");
                bulkCopy.ColumnMappings.Add("[PFInvNumber]", "[PFInvNumber]");
                bulkCopy.ColumnMappings.Add("[InvoiceRegistration]", "[InvoiceRegistration]");



                //  Invoice Registration No.
            //    batable.Columns.Add("InvoiceRegistration", typeof(string));

                
                ////      PF Inv Number
                //batable.Columns.Add("PFInvNumber", typeof(string));
                //PFInvNumberid = columid;

                try
                {
                    bulkCopy.WriteToServer(batable);
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.ToString(), "Thông báo lỗi Bulk Copy !", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Thread.CurrentThread.Abort();
                }

            }





        }

        class datashowwait
        {

            public View.Caculating wat { get; set; }


        }



        private void showwait(object obj)
        {
            // View.Caculating wat = new View.Caculating();

            //            View.Caculating wat = (View.Caculating)obj;
            datashowwait obshow = (datashowwait)obj;

            View.Caculating wat = obshow.wat;

            wat.ShowDialog();


        }

        // ThreadProclose



        public void Fbl5n_input2()
        {


            //   CultureInfo provider = CultureInfo.InvariantCulture;

            OpenFileDialog theDialog = new OpenFileDialog();
            theDialog.Title = "Open Excel File FBL5n excel";
            theDialog.Filter = "Excel files|*.xlsx; *.xls";
            theDialog.InitialDirectory = @"C:\";
            if (theDialog.ShowDialog() == DialogResult.OK)
            {


                string filename = theDialog.FileName.ToString();

                Thread t1 = new Thread(importsexcel);
                t1.IsBackground = true;
                t1.Start(new datainportF() { filename = filename });



                View.Caculating wat = new View.Caculating();
                Thread t2 = new Thread(showwait);
                t2.Start(new datashowwait() { wat = wat });


                t1.Join();
                if (t1.ThreadState != ThreadState.Running)
                {

                    // t2.Abort();

                    wat.Invoke(wat.myDelegate);



                }


            }

        }

    } // en class
} // endname space
