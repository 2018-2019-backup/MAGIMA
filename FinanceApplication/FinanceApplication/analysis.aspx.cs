using Microsoft.Office.Interop.Excel;
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
    public partial class analysis : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("analysisinterest", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            gv1.DataSource = ds;
            gv1.DataBind();



            SqlCommand cmdd = new SqlCommand("analysisemi", con);
            cmdd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter add = new SqlDataAdapter(cmdd);
            DataSet dss = new DataSet();
            add.Fill(dss);
            gv2.DataSource = dss;
            gv2.DataBind();
            con.Close();
        }

        protected void excel_Click(object sender, EventArgs e)
        {
            string FileName = "MIGMA_ANALYSIS" + DateTime.Now + ".xls";
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