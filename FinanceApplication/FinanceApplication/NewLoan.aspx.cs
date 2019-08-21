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
    public partial class NewLoan : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            id.Text = Session["id"].ToString();
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlCommand cmd = new SqlCommand("emiins20", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //int cid = Convert.ToInt32(id.Text);
            //double amount = Convert.ToDouble(principal.Text);
            //double rate = Convert.ToDouble(Interest.Text);
            //double mon = Convert.ToDouble(Months.Text);
            //string types = type1.Text;
            //string docs = Doc.Text;
            //string guardians = Guardian.Text;
            //cmd.Parameters.AddWithValue("@cid", cid);
            //cmd.Parameters.AddWithValue("@amt", amount);
            //cmd.Parameters.AddWithValue("@rate", rate);
            //cmd.Parameters.AddWithValue("@mon", mon);
            //cmd.Parameters.AddWithValue("@types", types);
            //cmd.Parameters.AddWithValue("@doc", docs);
            //cmd.Parameters.AddWithValue("@guard", guardians);
            //cmd.ExecuteNonQuery();
            //con.Close();
           
            if (type.SelectedIndex == 0)
            {
                Session["cid"] = id.Text;
                Session["principal"] = principal.Text;
                Session["interest"] = Interest.Text;
                Session["month"] = Months.Text;
                Session["type"] = type.SelectedItem.Text;
                Session["Doc"] = Doc.Text;
                Session["Guardian"] = Guardian.Text;
                Response.Redirect("Interest.aspx");
                //int ids = Convert.ToInt32(Session["cid"]);
                //Response.Redirect("Interest.aspx?unique=" + ids);

               
            }

            if (type.SelectedIndex == 1)
            {
                Session["cid"] = id.Text;
                Session["principal"] = principal.Text;
                Session["interest"] = Interest.Text;
                Session["month"] = Months.Text;
                Session["type"] = type.SelectedItem.Text;
                Session["Doc"] = Doc.Text;
                Session["Guardian"] = Guardian.Text;
                //int ids = Convert.ToInt32(Session["cid"]);
                //Response.Redirect("Emi.aspx?unique=" + id);
                Response.Redirect("Emi.aspx");
                
            }
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void type_SelectedIndexChanged(object sender, EventArgs e)
        {
            month.Visible = true;
            Months.Visible = true;
            if (type.SelectedValue == "1")
            {
                month.Visible = false;
                Months.Visible = false;
            }
        }
    }
}