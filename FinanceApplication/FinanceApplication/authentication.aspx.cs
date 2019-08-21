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
    public partial class authentication : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Control myControlMenu = Page.Master.FindControl("divTemp");
            if (myControlMenu != null)
            {
                myControlMenu.Visible = false;
            }
        }
        protected void login_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("authentication", con);
            cmd.CommandType = CommandType.StoredProcedure;
            Session["id"] = name.Text;
            string sname = name.Text;
            string spassword = pwd.Text;
            cmd.Parameters.AddWithValue("@name", sname);
            cmd.Parameters.AddWithValue("@password", spassword);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Session["id"] = name.Text;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Check The UserName and Password')</script>");
            }
            con.Close();
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}