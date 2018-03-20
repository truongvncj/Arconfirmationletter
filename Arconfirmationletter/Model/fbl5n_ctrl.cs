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
            batable.Columns.Add("DocumentType", typeof(string));
            batable.Columns.Add("BusinessArea", typeof(string));
            batable.Columns.Add("DocumentNumber", typeof(double));
            batable.Columns.Add("Amountinlocalcurrency", typeof(double));





            int Accountid = -1;
            int Assignmentid = -1;
            int PostingDateid = -1;
            int DocumentTypeid = -1;
            int DocumentNumberid = -1;
            int BusinessAreaid = -1;
            int Amountinlocalcurrencyid = -1;
            
            for (int rowid = 0; rowid < 5; rowid++)
            {
                // headindex = 1;
                for (int columid = 0; columid < sourceData.Columns.Count; columid++)
                {
                    #region
                    string value = sourceData.Rows[rowid][columid].ToString();
                    //            MessageBox.Show(value +":"+ rowid);

                    if (value != null && value != "")
                    {

                        //    #region setcolum
                        if (value.Trim()==("Account"))
                        {
                            Accountid = columid;
                            //  headindex = rowid;
                        }

                        if (value.Trim()==("Assignment"))
                        {

                            Assignmentid = columid;
                            //    headindex = 0;

                        }


                        if (value.Trim()==("Posting Date"))
                        {

                            PostingDateid = columid;
                            //   headindex = 0;



                        }


                        if (value.Trim()==("Document Type")  )
                        {
                            DocumentTypeid = columid;

                        }
                        if (value.Trim()==("Document Number")    )
                        {
                            DocumentNumberid = columid;

                        }



                        if (value.Trim()==("Amount in local currency")    )
                        {
                            Amountinlocalcurrencyid = columid;

                        }
                        if (value.Trim()==("Business Area")    )
                        {
                            BusinessAreaid = columid;

                        }

                    }
                    #endregion


                }// colum

            }// roww off heatder


            if (Accountid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Account","Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
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

            for (int rowixd = 0; rowixd < sourceData.Rows.Count; rowixd++)
            {

                #region


                //   string valuepricelist = Utils.GetValueOfCellInExcel(worksheet, rowid, columpricelist);
                string Account = sourceData.Rows[rowixd][Accountid].ToString();
                if (Account != "" && Utils.IsValidnumber(Account))
                {

                    if (double.Parse(Account) > 0)
                    {
                        DataRow dr = batable.NewRow();
                        dr["Account"] = double.Parse(sourceData.Rows[rowixd][Accountid].ToString());//.Trim();
                        dr["Assignment"] = sourceData.Rows[rowixd][Assignmentid].ToString().Trim();
                        dr["PostingDate"] = Utils.chageExceldatetoData(sourceData.Rows[rowixd][PostingDateid].ToString());
                        dr["DocumentType"] = sourceData.Rows[rowixd][DocumentTypeid].ToString().Trim();
                        dr["DocumentNumber"] = double.Parse(sourceData.Rows[rowixd][DocumentNumberid].ToString());//.Trim();
                        dr["Amountinlocalcurrency"] = double.Parse(sourceData.Rows[rowixd][Amountinlocalcurrencyid].ToString());//.Trim();
                        dr["BusinessArea"] = sourceData.Rows[rowixd][BusinessAreaid].ToString().Trim();




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

                bulkCopy.DestinationTableName = "tblFBL5N";
                // Write from the source to the destination.
                bulkCopy.ColumnMappings.Add("[Account]", "[Account]");
                bulkCopy.ColumnMappings.Add("[Assignment]", "[Assignment]");
                bulkCopy.ColumnMappings.Add("[PostingDate]", "[Posting Date]");
                bulkCopy.ColumnMappings.Add("[DocumentType]", "[Document Type]");
                bulkCopy.ColumnMappings.Add("[DocumentNumber]", "[Document Number]");
                bulkCopy.ColumnMappings.Add("[BusinessArea]", "[Business Area]");
                bulkCopy.ColumnMappings.Add("[Amountinlocalcurrency]", "[Amount in local currency]");

                
                
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



    //private void importsexcelold(object obj)
    //{
    //    string connection_string = Utils.getConnectionstr();
    //    LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);

    //    //     List<tblFBL5N> fbl5n_ctrllist = new List<tblFBL5N>();
    //    fbl5n_ctrl md = new fbl5n_ctrl();

    //    bool kq = md.deleteFbl5n();

    //    datainportF inf = (datainportF)obj;

    //    string filename = inf.filename;

    //    string connectionString = "";
    //    if (filename.Contains(".xlsx") || filename.Contains(".XLSX"))
    //    {
    //        connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + filename + ";" + "Extended Properties=Excel 12.0;";
    //    }
    //    else
    //    {
    //        connectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source= " + filename + ";" + "Extended Properties=Excel 8.0;";
    //    }

    //    //------
    //    //---------------fill data

    //    System.Data.DataTable sourceData = new System.Data.DataTable();
    //    using (OleDbConnection conn =
    //                           new OleDbConnection(connectionString))
    //    {
    //        try
    //        {
    //            conn.Open();
    //        }
    //        catch (Exception ex)
    //        {

    //            MessageBox.Show(ex.ToString(), "Thông báo lỗi Open conext !", MessageBoxButtons.OK, MessageBoxIcon.Error);
    //        }


    //        // Get the data from the source table as a SqlDataReader.
    //        OleDbCommand command = new OleDbCommand(
    //                            @"SELECT [Account], [Assignment],[Posting Date],[Document Type],
    //                                [Document Number], [Business Area], [Amount in local currency] FROM [Sheet1$]
    //                                 WHERE ( [Posting Date] is not null  ) AND ISNUMERIC ([Account])", conn); //


    //        OleDbDataAdapter adapter = new OleDbDataAdapter(command);
    //        adapter.FillSchema(sourceData, SchemaType.Source);
    //        sourceData.Columns["Posting Date"].DataType = typeof(DateTime);
    //        //sourceData.Columns["Invoice Doc Nr"].DataType = typeof(float);
    //        //sourceData.Columns["Billed Qty"].DataType = typeof(float);
    //        //sourceData.Columns["Cond Value"].DataType = typeof(float);
    //        //sourceData.Columns["Sales Org"].DataType = typeof(string);
    //        //sourceData.Columns["Cust Name"].DataType = typeof(string);
    //        //sourceData.Columns["Outbound Delivery"].DataType = typeof(string);
    //        //sourceData.Columns["Mat Group"].DataType = typeof(string);
    //        //sourceData.Columns["Mat Group Text"].DataType = typeof(string);
    //        //sourceData.Columns["UoM"].DataType = typeof(string);


    //        try
    //        {

    //            adapter.Fill(sourceData);
    //        }
    //        catch (Exception ex)
    //        {

    //            MessageBox.Show(ex.ToString(), "Thông báo lỗi Fill !", MessageBoxButtons.OK, MessageBoxIcon.Error);
    //        }

    //        conn.Close();
    //    }

    //    //    Utils util = new Utils();
    //    string destConnString = Utils.getConnectionstr();

    //    //---------------fill data


    //    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
    //    {

    //        bulkCopy.DestinationTableName = "tblFBL5N";
    //        // Write from the source to the destination.
    //        bulkCopy.ColumnMappings.Add("[Account]", "[Account]");
    //        bulkCopy.ColumnMappings.Add("[Assignment]", "[Assignment]");
    //        bulkCopy.ColumnMappings.Add("[Posting Date]", "[Posting Date]");
    //        bulkCopy.ColumnMappings.Add("[Document Type]", "[Document Type]");
    //        bulkCopy.ColumnMappings.Add("[Document Number]", "[Document Number]");
    //        bulkCopy.ColumnMappings.Add("[Business Area]", "[Business Area]");
    //        bulkCopy.ColumnMappings.Add("[Amount in local currency]", "[Amount in local currency]");




    //        #region   tìm id
    //        //   "Account"
    //        //    "Assignment"
    //        //    "Posting Date"
    //        //  "Document Type"
    //        //     "Document Number"
    //        //   "Business Area"
    //        //     "Amount in local currency"


    //        #endregion




    //        try
    //        {
    //            bulkCopy.WriteToServer(sourceData);
    //        }
    //        catch (Exception ex)
    //        {

    //            MessageBox.Show(ex.ToString(), "Thông báo lỗi Bulk Copy !", MessageBoxButtons.OK, MessageBoxIcon.Error);
    //            Thread.CurrentThread.Abort();
    //        }

    //    }
    //}




    private void showwait()
    {
        View.Caculating wat = new View.Caculating();
        wat.ShowDialog();


    }

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

            Thread t2 = new Thread(showwait);
            t2.Start();
            //   autoEvent.WaitOne(); //join
            t1.Join();
            if (t1.ThreadState != ThreadState.Running)
            {



                Thread.Sleep(1999);
                t2.Abort();
            }


        }



        //  return true;



    }



} // en class
} // endname space
