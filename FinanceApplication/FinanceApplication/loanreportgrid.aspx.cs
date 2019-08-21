using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanceApplication
{
    public partial class loanreportgrid : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (type.SelectedIndex == 0)
            //{
            con.Open();
            SqlCommand cmd = new SqlCommand("loanreportinterest", con);
            cmd.CommandType = CommandType.StoredProcedure;
            string sfrom = Session["sfrom"].ToString();
            string etoo = Session["sto"].ToString();
            cmd.Parameters.AddWithValue("@from", sfrom);
            cmd.Parameters.AddWithValue("@to", etoo);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            gv1.DataSource = ds;
            gv1.DataBind();
            con.Close();

            //}

            //else
            //{
            con.Open();
            SqlCommand cmdd = new SqlCommand("loanreportemi", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            string efrom = Session["sfrom"].ToString();
            string eto = Session["sto"].ToString();
            cmdd.Parameters.AddWithValue("@efrom", efrom);
            cmdd.Parameters.AddWithValue("@eto", eto);
            SqlDataAdapter add = new SqlDataAdapter(cmdd);
            DataSet dds = new DataSet();
            add.Fill(dds);
            gv2.DataSource = dds;
            gv2.DataBind();
            con.Close();
            
        }

        protected void interestloanreport_Click(object sender, EventArgs e)
        {
            Button interest = (Button)sender;
            GridViewRow row = (GridViewRow)interest.NamingContainer;
            ViewState["RowIndex"] = row.RowIndex;
            Session["customerid"] = gv1.Rows[row.RowIndex].Cells[1].Text;
            Session["loanid"] = gv1.Rows[row.RowIndex].Cells[2].Text;
            string cid = Session["customerid"].ToString();
            int lid = Convert.ToInt32(Session["loanid"]);
            Response.Redirect("loanreportinterest.aspx?unique=" + cid + "&loanid=" + lid);
        }

        protected void emiloanreport_Click(object sender, EventArgs e)
        {

            Button interest = (Button)sender;
            GridViewRow row = (GridViewRow)interest.NamingContainer;
            ViewState["RowIndex"] = row.RowIndex;
            Session["customerid"] = gv2.Rows[row.RowIndex].Cells[1].Text;
            Session["loanid"] = gv2.Rows[row.RowIndex].Cells[2].Text;
            string cid = Session["customerid"].ToString();
            int lid = Convert.ToInt32(Session["loanid"]);
            Response.Redirect("loanreportemi.aspx?unique=" + cid + "&loanid=" + lid);
        }

        protected void excel_Click(object sender, EventArgs e)
        {
            string FileName = "MIGMA_Loanreport" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gv1.GridLines = GridLines.Both;
            gv1.HeaderStyle.Font.Bold = true;
            gv1.RenderControl(htmltextwrtter);

            gv2.GridLines = GridLines.Both;
            gv2.HeaderStyle.Font.Bold = true;
            gv2.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        
    }
}