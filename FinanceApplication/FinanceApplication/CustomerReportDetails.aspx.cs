using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Office.Interop;
using Microsoft.Office.Interop.Excel;
using System.IO;

namespace FinanceApplication
{
    public partial class CustomerReportDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("CustomerDetail2", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Session["id"] = rd["id"].ToString();
                    ccname.Text = rd["CustomerName"].ToString();
                    ffname.Text = rd["FathersName"].ToString();
                    ddob.Text = rd["Dob"].ToString();
                    ggender.Text = rd["Sex"].ToString();
                    ooccupation.Text = rd["Occupation"].ToString();
                    mmnumber.Text = rd["MobileNumber"].ToString();
                    almnumber.Text = rd["alternativemobilenumber"].ToString();
                    llnumber.Text = rd["LandLineNumber"].ToString();
                    pproof.Text = rd["IdProof"].ToString();
                    iidnum.Text = rd["IdNumber"].ToString();
                    aaddress.Text = rd["Address"].ToString();
                    ccity.Text = rd["City"].ToString();
                    rReference.Text = rd["Reference"].ToString();
                    rrefrelation.Text = rd["ReferenceRelationship"].ToString();

                }
                rd.Close();
                con.Close();
            }
            con.Open();
            SqlCommand cmdd = new SqlCommand("customerreportins", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            cmdd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            SqlDataAdapter ad = new SqlDataAdapter(cmdd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            gv.DataSource = ds;
            gv.DataBind();
            con.Close();

            con.Open();
            SqlCommand cmmd = new SqlCommand("customerreportemi", con);
            cmmd.CommandType = CommandType.StoredProcedure;
            cmmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            SqlDataAdapter add = new SqlDataAdapter(cmmd);
            DataSet dss = new DataSet();
            add.Fill(dss);
            gv2.DataSource = dss;
            gv2.DataBind();
            con.Close();
        }

        protected void excel_Click(object sender, EventArgs e)
        {
            //Microsoft.Office.Interop.Excel.Application xla = new Microsoft.Office.Interop.Excel.Application();
            //Workbook wb = xla.Workbooks.Add(XlSheetType.xlWorksheet);
            //Worksheet ws = (Worksheet)xla.ActiveSheet;
            // xla.Visible = true;
            // ws.Cells[1, 1] = lb.Text;
            // ws.Cells[1, 2] = Label1.Text;
            // ws.Cells[1, 3] = Label2.Text;
            // ws.Cells[1, 4] = Label3.Text;
            // ws.Cells[1, 5] = Label4.Text;
            // ws.Cells[1, 6] = Label5.Text;
            // ws.Cells[1, 7] = Label13.Text;
            // ws.Cells[1, 8] = Label6.Text;
            // ws.Cells[1, 9] = Label7.Text;
            // ws.Cells[1, 10] = Label8.Text;
            // ws.Cells[1, 11] = Label9.Text;
            // ws.Cells[1, 12] = Label10.Text;
            // ws.Cells[1, 13] = Label11.Text;
            // ws.Cells[1, 14] = Label12.Text;

            //        con.Open();
            //        SqlCommand cmd = new SqlCommand("CustomerDetail2", con);
            //        cmd.CommandType = CommandType.StoredProcedure;
            //        cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
            //        SqlDataReader rd = cmd.ExecuteReader();
            //        while (rd.Read())
            //        {
            //ws.Cells[2, 1] = rd["CustomerName"].ToString();
            //ws.Cells[2, 2] = rd["FathersName"].ToString();
            //ws.Cells[2, 3] = rd["Dob"].ToString();
            //ws.Cells[2, 4] = rd["Sex"].ToString();
            //ws.Cells[2, 5] = rd["Occupation"].ToString();
            //ws.Cells[2, 6] = rd["MobileNumber"].ToString();
            //ws.Cells[2, 7] = rd["alternativemobilenumber"].ToString();
            //ws.Cells[2, 8] = rd["LandLineNumber"].ToString();
            //ws.Cells[2, 9] = rd["IdProof"].ToString();
            //ws.Cells[2, 10] = rd["IdNumber"].ToString();
            //ws.Cells[2, 11] = rd["Address"].ToString();
            //ws.Cells[2, 12] = rd["City"].ToString();
            //ws.Cells[2, 13] = rd["Reference"].ToString();
            //ws.Cells[2, 14] = rd["ReferenceRelationship"].ToString();
            //         }
            //    rd.Close();
            //    con.Close();


                //con.Open();
                //Response.Clear();
                //Response.Buffer = true;
                //Response.ClearContent();
                //Response.ClearHeaders();
                //Response.Charset = "";
                string FileName = "MIGMA_LOAN" + DateTime.Now + ".xls";
                StringWriter strwritter = new StringWriter();
                HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
                gv.GridLines = GridLines.Both;
                gv.HeaderStyle.Font.Bold = true;
                gv.RenderControl(htmltextwrtter);

                gv2.GridLines = GridLines.Both;
                gv2.HeaderStyle.Font.Bold = true;
                gv2.RenderControl(htmltextwrtter);
                Response.Write(strwritter.ToString());
                Response.End();
                
                //Response.Clear();
                //Response.Buffer = true;
                //Response.ClearContent();
                //Response.ClearHeaders();
                //Response.Charset = "";
                //string FileNames = "MIGMA" + DateTime.Now + ".xls";
                //StringWriter strwritters = new StringWriter();
                //HtmlTextWriter htmltextwrtters = new HtmlTextWriter(strwritter);
                //Response.Cache.SetCacheability(HttpCacheability.NoCache);
                //Response.ContentType = "application/vnd.ms-excel";
                //Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
                //gv2.GridLines = GridLines.Both;
                //gv2.HeaderStyle.Font.Bold = true;
                //gv2.RenderControl(htmltextwrtter);
                //Response.Write(strwritter.ToString());
                //Response.End();
                //con.Close();
            }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }

        //protected void interestdue_Click(object sender, EventArgs e)
        //{
        //    System.Web.UI.WebControls.Button interestdue = (System.Web.UI.WebControls.Button)sender;
        //    GridViewRow row = (GridViewRow)interestdue.NamingContainer;
        //    ViewState["ri"] = row.RowIndex;
        //    Session["cid"] = gv.Rows[row.RowIndex].Cells[0].Text;
        //    int cid = Convert.ToInt32(Session["cid"]);
        //    Session["loanid"] = gv.Rows[row.RowIndex].Cells[2].Text;
        //    int loanid = Convert.ToInt32(Session["loanid"]);
        //    Response.Redirect("duereport.aspx?unique=" + cid + "&siloanid=" + loanid);


        //}

        //protected void Emidue_Click(object sender, EventArgs e)
        //{
        //    System.Web.UI.WebControls.Button emidue = (System.Web.UI.WebControls.Button)sender;
        //    GridViewRow row = (GridViewRow)emidue.NamingContainer;
        //    ViewState["ri"] = row.RowIndex;
        //    Session["eid"] = gv2.Rows[row.RowIndex].Cells[0].Text;
        //    int eid = Convert.ToInt32(Session["eid"]);
        //    Session["eloanid"] = gv2.Rows[row.RowIndex].Cells[2].Text;
        //    int eloanid = Convert.ToInt32(Session["eloanid"]);
        //    Response.Redirect("duereport.aspx?unique=" + eid + "&siloanid=" + eloanid);
        //}
        
        }
    }
