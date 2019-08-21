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

    public partial class loancollection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            double emi,emi1;
            if (!IsPostBack)
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("emicollect4", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                cmd.Parameters.AddWithValue("@lid1", Request.QueryString["loanid1"].ToString());
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    Session["id"] = rd["customerid1"].ToString();
                    llnum.Text = rd["loanid1"].ToString();
                    ttype.Text = rd["loantype1"].ToString();
                    ppamount.Text = rd["principalamount1"].ToString();
                    emi = Convert.ToDouble(rd["Emi"]);
                    emi1= Math.Round(emi,2);
                    eeamount.Text = emi1.ToString();
                    eemiten.Text = rd["months"].ToString();
                    ddat.Text = rd["createdate"].ToString();
                }
                rd.Close();
                con.Close();

                con.Open();
                SqlCommand cmdd = new SqlCommand("emidetaigrid", con);
                cmdd.CommandType = CommandType.StoredProcedure;
                cmdd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                cmdd.Parameters.AddWithValue("@lid1", Request.QueryString["loanid1"].ToString());
                SqlDataAdapter ad = new SqlDataAdapter(cmdd);
                DataSet ds = new DataSet();
                ad.Fill(ds);
                gv.DataSource = ds;
                gv.DataBind();
                con.Close();

            }
        }

        protected void view_Click(object sender, EventArgs e)
        {
            int id2 = Convert.ToInt32(Session["eid"]);
            int loan1 = Convert.ToInt32(Session["loanid1"]);         
            Response.Redirect("ecollection.aspx?unique=" + id2 + "&loanid1=" + loan1);
        }

        protected void paid_Click(object sender, EventArgs e)
        {

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }
    }
}