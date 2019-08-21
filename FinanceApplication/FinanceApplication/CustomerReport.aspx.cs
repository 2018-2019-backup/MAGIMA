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
    public partial class CustomerReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("customerreport", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                customergrid.DataSource = ds;
                customergrid.DataBind();
            }
        }

        protected void reportbtn_Click(object sender, EventArgs e)
        {
            Button edit = (Button)sender;
            GridViewRow row = (GridViewRow)edit.NamingContainer;
            ViewState["ri"] = row.RowIndex;
            ViewState["id"] = customergrid.Rows[row.RowIndex].Cells[0].Text;
            Session["iid"] = ViewState["id"];
            int id5 = Convert.ToInt32(Session["iid"]);
            Response.Redirect("CustomerReportDetails.aspx?unique=" + id5);
        }
    }
}