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
    public partial class signup : System.Web.UI.Page
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

        protected void btn_Click(object sender, EventArgs e)
        {
            con.Open();
            string sname = name.Text;
            string spassword = pwd.Text;
            string scpwd = cpwd.Text;
            if (spassword == scpwd)
            {
                SqlCommand cmd = new SqlCommand("signupins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", sname);
                cmd.Parameters.AddWithValue("@password", spassword);
                cmd.Parameters.AddWithValue("@confirmpassword", scpwd);
                cmd.ExecuteNonQuery();
                Response.Redirect("authentication.aspx");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Enter The Same Password');</script>");
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("authentication.aspx");
        }
    }
}