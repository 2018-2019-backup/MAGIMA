using Microsoft.Office.Interop.Excel;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanceApplication
{
    public partial class loanreportinterest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("loanreportinterestread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            cmd.Parameters.AddWithValue("@loan", Request.QueryString["loanid"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ddate.Text = rd["createddate"].ToString();
                iId.Text = rd["ID"].ToString();
              lloanid.Text= rd["loanid"].ToString();
                ppamount.Text = rd["principalamount"].ToString();
                iinterest.Text = rd["interest"].ToString();
               mmonth.Text = rd["months"].ToString();
                lloantype.Text = rd["loantype"].ToString();
                ttotalamount.Text = rd["totalamount"].ToString();
                ttotalinterest.Text = rd["totalinterest"].ToString();
            }
            rd.Close();
            con.Close();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Microsoft.Office.Interop.Excel.Application xla = new Microsoft.Office.Interop.Excel.Application();
            Workbook wb = xla.Workbooks.Add(XlSheetType.xlWorksheet);
            Worksheet ws = (Worksheet)xla.ActiveSheet;
            xla.Visible = true;
            ws.Cells[1, 1] = label1.Text;
            ws.Cells[1, 2] = label2.Text;
            ws.Cells[1, 3] = label3.Text;
            ws.Cells[1, 4] = Label4.Text;
            ws.Cells[1, 5] = Label5.Text;
            ws.Cells[1, 6] = Label6.Text;
            ws.Cells[1, 7] = Label7.Text;
            ws.Cells[1, 8] = Label8.Text;
            ws.Cells[1, 9] = Label9.Text;


            con.Open();
            SqlCommand cmd = new SqlCommand("loanreportinterestread", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            cmd.Parameters.AddWithValue("@loan", Request.QueryString["loanid"].ToString());
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                ws.Cells[2, 1] = rd["createddate"].ToString();
                ws.Cells[2, 2] = rd["ID"].ToString();
                ws.Cells[2, 3] = rd["loanid"].ToString();
                ws.Cells[2, 4] = rd["principalamount"].ToString();
                ws.Cells[2, 5] = rd["interest"].ToString();
                ws.Cells[2, 6] = rd["months"].ToString();
                ws.Cells[2, 7] = rd["loantype"].ToString();
                ws.Cells[2, 8] = rd["totalamount"].ToString();
                ws.Cells[2, 9] = rd["totalinterest"].ToString();

            }
            rd.Close();
            con.Close();

        }
    }
}