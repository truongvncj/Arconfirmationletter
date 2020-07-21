using arconfirmationletter.View;
using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace arconfirmationletter.Model
{
    class fREEGALSSES_CTRL
    {


        public bool deleteallFreglassesBEgin()
        {
            string connection_string = Utils.getConnectionstr();
            var db = new LinqtoSQLDataContext(connection_string);
            //    var rs = from tbl_FreGlass in db.tbl_FreGlasses
            //              select tbl_FreGlass;

            db.ExecuteCommand("DELETE FROM tblFBL5NNewCol3year  where tblFBL5NNewCol3year.TypeDoc =  'Begin' ");
            //    dc.tblFBL5Nnewthisperiods.DeleteAllOnSubmit(rsthisperiod);
            db.SubmitChanges();

            return true;
        }


        public bool deleteallClearFreglassestemp()
        {
            string connection_string = Utils.getConnectionstr();
            var db = new LinqtoSQLDataContext(connection_string);
            //    var rs = from tbl_FreGlass in db.tbl_FreGlasses
            //              select tbl_FreGlass;

            db.ExecuteCommand("DELETE FROM tbl_FreGlassCleartemp");
            //    dc.tblFBL5Nnewthisperiods.DeleteAllOnSubmit(rsthisperiod);
            db.SubmitChanges();

            return true;
        }


        //public bool deleteallwitreroffFreeglassestable()
        //{
        //    string connection_string = Utils.getConnectionstr();
        //    var db = new LinqtoSQLDataContext(connection_string);
        //    //    var rs = from tbl_FreGlass in db.tbl_FreGlasses
        //    //              select tbl_FreGlass;

        //    db.ExecuteCommand("DELETE FROM tblFBL5NNewWritteroff");
        //    //    dc.tblFBL5Nnewthisperiods.DeleteAllOnSubmit(rsthisperiod);
        //    db.SubmitChanges();

        //    return true;
        //}

        class datainportF
        {

            public string filename { get; set; }
            public DateTime writteroffdate { get; set; }
        }



        public void Freglasses_input()
        {


            //      BackgroundWorker backgroundWorker1;
            //   CultureInfo provider = CultureInfo.InvariantCulture;
            //     backgroundWorker1 = new BackgroundWorker();

            OpenFileDialog theDialog = new OpenFileDialog();
            theDialog.Title = "Open Excel File Free Glasses Begin excel";
            theDialog.Filter = "Excel files|*.xlsx; *.xls";
            theDialog.InitialDirectory = @"C:\";
            if (theDialog.ShowDialog() == DialogResult.OK)
            {
                string filename = theDialog.FileName.ToString();


                Thread t1 = new Thread(importFreglassessexcel);
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


            // MessageBox.Show(theDialog.FileName.ToString());
            //    return true;

            //    


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

        //private void importFreglassessexcel2(object obj)
        //{
        //    string connection_string = Utils.getConnectionstr();

        //    LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);

        //    fREEGALSSES_CTRL Rm = new fREEGALSSES_CTRL();

        //    bool kq = Rm.deleteallFreglasses();


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
        //                            @"SELECT [CUSTOMER], [SALORG],[COLAMT],[PERNO]
        //                             FROM [Sheet1$]
        //                             WHERE ( [CUSTOMER] is not null ) ", conn);


        //        OleDbDataAdapter adapter = new OleDbDataAdapter(command);
        //        //  adapter.FillSchema(sourceData, SchemaType.Source);
        //        //     sourceData.Columns["Posting Date"].DataType = typeof(DateTime);
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

        ////    Utils util = new Utils();
        //    string destConnString = Utils.getConnectionstr();

        //    //---------------fill data


        //    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
        //    {

        //        bulkCopy.DestinationTableName = "tbl_FreGlass";
        //        // Write from the source to the destination.
        //        bulkCopy.ColumnMappings.Add("[CUSTOMER]", "[CUSTOMER]");
        //        bulkCopy.ColumnMappings.Add("[SALORG]", "[SALORG]");
        //        bulkCopy.ColumnMappings.Add("[COLAMT]", "[COLAMT]");
        //        bulkCopy.ColumnMappings.Add("[PERNO]", "[PERNO]");




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

        private void importwitteroffFreglassessexcel(object obj)
        {
            string connection_string = Utils.getConnectionstr();

            LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);

            fREEGALSSES_CTRL Rm = new fREEGALSSES_CTRL();

            string username = Utils.getusername();

            //   bool kq = Rm.deleteallwitreroffFreeglassestable();

            datainportF inf = (datainportF)obj;

            string filename = inf.filename;
            DateTime witteroffdate = inf.writteroffdate;


            //OleDbCommand command = new OleDbCommand(
            //              @"SELECT [CUSTOMER], [SALORG],[COLAMT],[PERNO]
            //                         FROM [Sheet1$]
            //                         WHERE ( [CUSTOMER] is not null ) ", conn);


            //    ExcelProvider ExcelProvide = new ExcelProvider();
            //#endregion
            System.Data.DataTable sourceData = ExcelProvider.GetDataFromExcel(filename);

            System.Data.DataTable batable = new System.Data.DataTable();

            batable.Columns.Add("CUSTOMER", typeof(double));
            batable.Columns.Add("SALORG", typeof(string));
            //  batable.Columns.Add("PERNO", typeof(string));
            batable.Columns.Add("QuantityGlassesWritteroff", typeof(int));
            batable.Columns.Add("AmountWritteroffglassesValue", typeof(double));
            batable.Columns.Add("AmountWritteroffglassesValue2", typeof(double));
            batable.Columns.Add("TypeDoc", typeof(string));
            batable.Columns.Add("userupdate", typeof(string));
            batable.Columns.Add("Posting_Date", typeof(DateTime));





            int CUSTOMERid = -1;
            int SALORGid = -1;
            int QuantityGlassesWritteroffid = -1;

            int AmountWritteroffglassesValueid = -1;

            int rowseet = sourceData.Rows.Count;
            if (rowseet > 5)
            {
                rowseet = 5;
            }
            for (int rowid = 0; rowid < rowseet; rowid++)
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
                        if (value.Trim() == ("CUSTOMER"))
                        {
                            CUSTOMERid = columid;
                            //  headindex = rowid;
                        }

                        if (value.Trim() == ("SALORG"))
                        {

                            SALORGid = columid;
                            //    headindex = 0;

                        }


                        if (value.Trim() == ("QuantityGlassesWritteroff"))
                        {

                            QuantityGlassesWritteroffid = columid;
                            //   headindex = 0;



                        }




                        if (value.Trim() == ("AmountWritteroffglassesValue"))
                        {
                            AmountWritteroffglassesValueid = columid;

                        }



                    }
                    #endregion


                }// colum

            }// roww off heatder


            if (CUSTOMERid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột CUSTOMER", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (SALORGid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột SALORG", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (QuantityGlassesWritteroffid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột QuantityGlassesWritteroff", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }


            if (AmountWritteroffglassesValueid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột AmountFreeglassesValue", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }



            for (int rowixd = 0; rowixd < sourceData.Rows.Count; rowixd++)
            {

                #region


                //   string valuepricelist = Utils.GetValueOfCellInExcel(worksheet, rowid, columpricelist);
                string CUSTOMERvl = sourceData.Rows[rowixd][CUSTOMERid].ToString();
                if (CUSTOMERvl != "" && Utils.IsValidnumber(CUSTOMERvl))
                {

                    if (double.Parse(CUSTOMERvl) > 0)
                    {
                        DataRow dr = batable.NewRow();
                        dr["CUSTOMER"] = double.Parse(sourceData.Rows[rowixd][CUSTOMERid].ToString());//.Trim();
                        dr["SALORG"] = sourceData.Rows[rowixd][SALORGid].ToString().Trim();

                        if (sourceData.Rows[rowixd][QuantityGlassesWritteroffid].ToString() != "")
                        {
                            dr["QuantityGlassesWritteroff"] = -int.Parse(sourceData.Rows[rowixd][QuantityGlassesWritteroffid].ToString().Trim());
                        }
                        else
                        {
                            dr["QuantityGlassesWritteroff"] = 0;
                        }



                        if (sourceData.Rows[rowixd][AmountWritteroffglassesValueid].ToString() != "")
                        {
                            dr["AmountWritteroffglassesValue"] = int.Parse(sourceData.Rows[rowixd][AmountWritteroffglassesValueid].ToString().Trim());
                            dr["AmountWritteroffglassesValue2"] = -int.Parse(sourceData.Rows[rowixd][AmountWritteroffglassesValueid].ToString().Trim());


                        }
                        else
                        {
                            dr["AmountWritteroffglassesValue"] = 0;
                            dr["AmountWritteroffglassesValue2"] = 0;
                        }



                        dr["TypeDoc"] = "WF";//.Trim();//sourceData.Rows[rowixd][COLAMTid].ToString().Trim();

                        dr["userupdate"] = username;


                        dr["Posting_Date"] = witteroffdate;



                        batable.Rows.Add(dr);


                    }

                }

                #endregion

                //    Utils util = new Utils();


                //---------------fill data
            }
            string destConnString = Utils.getConnectionstr();
            using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
            {

                bulkCopy.DestinationTableName = "tblFBL5Nnew";
                // Write from the source to the destination.
                bulkCopy.ColumnMappings.Add("TypeDoc", "[Document Type]");
                bulkCopy.ColumnMappings.Add("userupdate", "[userupdate]");
                bulkCopy.ColumnMappings.Add("CUSTOMER", "[Account]");
                bulkCopy.ColumnMappings.Add("Posting_Date", "[Posting Date]");
                bulkCopy.ColumnMappings.Add("SALORG", "[Business Area]");
                bulkCopy.ColumnMappings.Add("QuantityGlassesWritteroff", "[Ketvothuong]");

                //   bulkCopy.ColumnMappings.Add("AmountWritteroffglassesValue", "[Amount in local currency]");
                bulkCopy.ColumnMappings.Add("AmountWritteroffglassesValue2", "[Deposit amount]");
                bulkCopy.ColumnMappings.Add("AmountWritteroffglassesValue", "[Adjusted amount]");


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

        private void importFreglassessexcel(object obj)
        {
            string connection_string = Utils.getConnectionstr();

            LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);

            fREEGALSSES_CTRL Rm = new fREEGALSSES_CTRL();

            string username = Utils.getusername();

            bool kq = Rm.deleteallFreglassesBEgin();

            datainportF inf = (datainportF)obj;

            string filename = inf.filename;
            //OleDbCommand command = new OleDbCommand(
            //              @"SELECT [CUSTOMER], [SALORG],[COLAMT],[PERNO]
            //                         FROM [Sheet1$]
            //                         WHERE ( [CUSTOMER] is not null ) ", conn);


            //    ExcelProvider ExcelProvide = new ExcelProvider();
            //#endregion
            System.Data.DataTable sourceData = ExcelProvider.GetDataFromExcel(filename);

            System.Data.DataTable batable = new System.Data.DataTable();

            batable.Columns.Add("CUSTOMER", typeof(double));
            batable.Columns.Add("SALORG", typeof(string));
            //  batable.Columns.Add("PERNO", typeof(string));
            batable.Columns.Add("Freeglass3years", typeof(int));
            batable.Columns.Add("Freeglass3phantram", typeof(int));
            batable.Columns.Add("AmountFreeglassesValue", typeof(double));
            batable.Columns.Add("TypeDoc", typeof(string));
            batable.Columns.Add("userupdate", typeof(string));
            batable.Columns.Add("Posting_Date", typeof(DateTime));
            //        CUSTOMER SALORG  Freeglass3years Freeglass3phantram  AmountFreeglassesValue





            int CUSTOMERid = -1;
            int SALORGid = -1;
            int Freeglass3yearsid = -1;
            int Freeglass3phantramid = -1;
            int AmountFreeglassesValueid = -1;

            int rowseet = sourceData.Rows.Count;
            if (rowseet > 5)
            {
                rowseet = 5;
            }
            for (int rowid = 0; rowid < rowseet; rowid++)
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
                        if (value.Trim() == ("CUSTOMER"))
                        {
                            CUSTOMERid = columid;
                            //  headindex = rowid;
                        }

                        if (value.Trim() == ("SALORG"))
                        {

                            SALORGid = columid;
                            //    headindex = 0;

                        }


                        if (value.Trim() == ("Freeglass3years"))
                        {

                            Freeglass3yearsid = columid;
                            //   headindex = 0;



                        }


                        if (value.Trim() == ("Freeglass3phantram"))
                        {
                            Freeglass3phantramid = columid;

                        }

                        if (value.Trim() == ("AmountFreeglassesValue"))
                        {
                            AmountFreeglassesValueid = columid;

                        }



                    }
                    #endregion


                }// colum

            }// roww off heatder


            if (CUSTOMERid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột CUSTOMER", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (SALORGid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột SALORG", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (Freeglass3yearsid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Freeglass3years", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (Freeglass3phantramid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột Freeglass3phantram", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (AmountFreeglassesValueid == -1)
            {
                MessageBox.Show("Dữ liệu thiếu cột AmountFreeglassesValue", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }



            for (int rowixd = 0; rowixd < sourceData.Rows.Count; rowixd++)
            {

                #region


                //   string valuepricelist = Utils.GetValueOfCellInExcel(worksheet, rowid, columpricelist);
                string CUSTOMERvl = sourceData.Rows[rowixd][CUSTOMERid].ToString();
                if (CUSTOMERvl != "" && Utils.IsValidnumber(CUSTOMERvl))
                {

                    if (double.Parse(CUSTOMERvl) > 0)
                    {
                        DataRow dr = batable.NewRow();
                        dr["CUSTOMER"] = double.Parse(sourceData.Rows[rowixd][CUSTOMERid].ToString());//.Trim();
                        dr["SALORG"] = sourceData.Rows[rowixd][SALORGid].ToString().Trim();

                        if (sourceData.Rows[rowixd][Freeglass3yearsid].ToString() != "")
                        {
                            dr["Freeglass3years"] = int.Parse(sourceData.Rows[rowixd][Freeglass3yearsid].ToString().Trim());
                        }
                        else
                        {
                            dr["Freeglass3years"] = 0;
                        }

                        //----------------
                        if (sourceData.Rows[rowixd][Freeglass3phantramid].ToString() != "")
                        {
                            dr["Freeglass3phantram"] = int.Parse(sourceData.Rows[rowixd][Freeglass3phantramid].ToString().Trim());
                        }
                        else
                        {
                            dr["Freeglass3phantram"] = 0;
                        }

                        ///----

                        if (sourceData.Rows[rowixd][Freeglass3yearsid].ToString() != "")
                        {
                            dr["AmountFreeglassesValue"] = int.Parse(sourceData.Rows[rowixd][AmountFreeglassesValueid].ToString().Trim());
                        }
                        else
                        {
                            dr["AmountFreeglassesValue"] = 0;
                        }



                        dr["TypeDoc"] = "Begin";//.Trim();//sourceData.Rows[rowixd][COLAMTid].ToString().Trim();

                        dr["userupdate"] = username;
                        dr["Posting_Date"] = DateTime.Today;



                        batable.Rows.Add(dr);


                    }

                }

                #endregion

                //    Utils util = new Utils();


                //---------------fill data
            }
            string destConnString = Utils.getConnectionstr();
            using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
            {

                bulkCopy.DestinationTableName = "tblFBL5NNewCol3year";
                // Write from the source to the destination.
                bulkCopy.ColumnMappings.Add("CUSTOMER", "[Customer code]");
                bulkCopy.ColumnMappings.Add("SALORG", "[Region]");
                bulkCopy.ColumnMappings.Add("Freeglass3years", "[Freeglass3years]");
                bulkCopy.ColumnMappings.Add("Freeglass3phantram", "[Freeglass3phantram]");
                bulkCopy.ColumnMappings.Add("AmountFreeglassesValue", "[AmountFreeglassesValue]");
                bulkCopy.ColumnMappings.Add("TypeDoc", "TypeDoc");
                bulkCopy.ColumnMappings.Add("userupdate", "[userupdate]");

                bulkCopy.ColumnMappings.Add("Posting_Date", "[Posting Date]");

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


        //private void importClearFreglassessexcel(object obj)
        //{
        //    string connection_string = Utils.getConnectionstr();

        //    LinqtoSQLDataContext db = new LinqtoSQLDataContext(connection_string);

        //    fREEGALSSES_CTRL Rm = new fREEGALSSES_CTRL();

        //    bool kq = Rm.deleteallClearFreglassestemp();

        //    datainportF inf = (datainportF)obj;

        //    string filename = inf.filename;
        //    //OleDbCommand command = new OleDbCommand(
        //    //              @"SELECT [CUSTOMER], [SALORG],[COLAMT],[PERNO]
        //    //                         FROM [Sheet1$]
        //    //                         WHERE ( [CUSTOMER] is not null ) ", conn);


        //    //    ExcelProvider ExcelProvide = new ExcelProvider();
        //    //#endregion
        //    System.Data.DataTable sourceData = ExcelProvider.GetDataFromExcel(filename);

        //    System.Data.DataTable batable = new System.Data.DataTable();

        //    batable.Columns.Add("CUSTOMER", typeof(double));
        //    batable.Columns.Add("SALORG", typeof(string));
        //    batable.Columns.Add("COLAmount", typeof(double));
        //    batable.Columns.Add("COLQuantity", typeof(double));
        //    batable.Columns.Add("Remarks", typeof(string));





        //    int CUSTOMERid = -1;
        //    int SALORGid = -1;
        //    int COLAmountid = -1;
        //    int COLQuantityid = -1;
        //    int Remarksid = -1;

        //    for (int rowid = 0; rowid < 5; rowid++)
        //    {
        //        // headindex = 1;
        //        for (int columid = 0; columid < sourceData.Columns.Count; columid++)
        //        {
        //            #region
        //            string value = sourceData.Rows[rowid][columid].ToString();
        //            //            MessageBox.Show(value +":"+ rowid);

        //            if (value != null && value != "")
        //            {

        //                //    #region setcolum
        //                if (value.Trim() == ("CUSTOMER"))
        //                {
        //                    CUSTOMERid = columid;
        //                    //  headindex = rowid;
        //                }

        //                if (value.Trim() == ("SALORG"))
        //                {

        //                    SALORGid = columid;
        //                    //    headindex = 0;

        //                }


        //                if (value.Trim() == ("COL Amount"))
        //                {

        //                    COLAmountid = columid;
        //                    //   headindex = 0;



        //                }


        //                if (value.Trim() == ("COL Quantity"))
        //                {
        //                    COLQuantityid = columid;

        //                }


        //                if (value.Trim() == ("Remarks"))
        //                {
        //                    Remarksid = columid;

        //                }


        //            }
        //            #endregion


        //        }// colum

        //    }// roww off heatder




        //    if (CUSTOMERid == -1)
        //    {
        //        MessageBox.Show("Dữ liệu thiếu cột CUSTOMER", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        return;
        //    }

        //    if (SALORGid == -1)
        //    {
        //        MessageBox.Show("Dữ liệu thiếu cột SALORG", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        return;
        //    }

        //    if (COLAmountid == -1)
        //    {
        //        MessageBox.Show("Dữ liệu thiếu cột COL Amount", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        return;
        //    }

        //    if (COLQuantityid == -1)
        //    {
        //        MessageBox.Show("Dữ liệu thiếu cột COL Quantity", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        return;
        //    }

        //    if (Remarksid == -1)
        //    {
        //        MessageBox.Show("Dữ liệu thiếu cột Remarks", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //        return;
        //    }


        //    for (int rowixd = 0; rowixd < sourceData.Rows.Count; rowixd++)
        //    {

        //        #region


        //        //   string valuepricelist = Utils.GetValueOfCellInExcel(worksheet, rowid, columpricelist);
        //        string CUSTOMERvl = sourceData.Rows[rowixd][CUSTOMERid].ToString();
        //        if (CUSTOMERvl != "" && Utils.IsValidnumber(CUSTOMERvl))
        //        {

        //            if (double.Parse(CUSTOMERvl) > 0)
        //            {
        //                DataRow dr = batable.NewRow();
        //                dr["CUSTOMER"] = double.Parse(sourceData.Rows[rowixd][CUSTOMERid].ToString());//.Trim();
        //                dr["SALORG"] = sourceData.Rows[rowixd][SALORGid].ToString().Trim();
        //                if (Utils.IsValidnumber(sourceData.Rows[rowixd][COLAmountid].ToString()))
        //                {
        //                    dr["COLAmount"] = double.Parse(sourceData.Rows[rowixd][COLAmountid].ToString()); //sourceData.Rows[rowixd][COLAmountid].ToString().Trim();//  Utils.chageExceldatetoData(sourceData.Rows[rowixd][PERNOid].ToString());

        //                }
        //                else
        //                {
        //                    dr["COLAmount"] = 0;
        //                }

        //                if (Utils.IsValidnumber(sourceData.Rows[rowixd][COLQuantityid].ToString()))
        //                {
        //                    dr["COLQuantity"] = double.Parse(sourceData.Rows[rowixd][COLQuantityid].ToString());//.Trim();//sourceData.Rows[rowixd][COLAMTid].ToString().Trim();

        //                }
        //                else
        //                {
        //                    dr["COLQuantity"] = 0;
        //                }
        //                dr["Remarks"] = sourceData.Rows[rowixd][Remarksid].ToString().Trim();//  Utils.chageExceldatetoData(sourceData.Rows[rowixd][PERNOid].ToString());


        //                batable.Rows.Add(dr);




        //            }

        //        }

        //        #endregion

        //        //    Utils util = new Utils();


        //        //---------------fill data
        //    }
        //    string destConnString = Utils.getConnectionstr();
        //    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(destConnString))
        //    {

        //        bulkCopy.DestinationTableName = "tbl_FreGlassCleartemp";
        //        // Write from the source to the destination.
        //        bulkCopy.ColumnMappings.Add("CUSTOMER", "[CUSTOMER]");
        //        bulkCopy.ColumnMappings.Add("SALORG", "[SALORG]");
        //        bulkCopy.ColumnMappings.Add("COLAmount", "[COL Amount]");
        //        bulkCopy.ColumnMappings.Add("COLQuantity", "[COL Quantity]");
        //        bulkCopy.ColumnMappings.Add("Remarks", "[Remarks]");




        //        try
        //        {
        //            bulkCopy.WriteToServer(batable);
        //        }
        //        catch (Exception ex)
        //        {

        //            MessageBox.Show(ex.ToString(), "Thông báo lỗi Bulk Copy !", MessageBoxButtons.OK, MessageBoxIcon.Error);
        //            Thread.CurrentThread.Abort();
        //        }

        //    }
        //}









        public void witteroffFreglasses_input(DateTime witteroffdate)
        {
            //      BackgroundWorker backgroundWorker1;
            //   CultureInfo provider = CultureInfo.InvariantCulture;
            //     backgroundWorker1 = new BackgroundWorker();

            OpenFileDialog theDialog = new OpenFileDialog();
            theDialog.Title = "Open Excel File Witter off Free Glasses excel";
            theDialog.Filter = "Excel files|*.xlsx; *.xls";
            theDialog.InitialDirectory = @"C:\";
            if (theDialog.ShowDialog() == DialogResult.OK)
            {
                string filename = theDialog.FileName.ToString();


                Thread t1 = new Thread(importwitteroffFreglassessexcel);
                t1.IsBackground = true;
                t1.Start(new datainportF() { filename = filename, writteroffdate = witteroffdate });


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


            // MessageBox.Show(theDialog.FileName.ToString());
            //    return true;

            //    





            //   throw new NotImplementedException();
        }
    }
}
