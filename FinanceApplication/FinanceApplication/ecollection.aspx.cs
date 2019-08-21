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
    public partial class ecollection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("emiread", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                cmd.Parameters.AddWithValue("@lid1", Request.QueryString["loanid1"].ToString());
                SqlDataReader rd = cmd.ExecuteReader();
                while(rd.Read())
                {
                    Session["custid"] = rd["customerid1"].ToString();
                    Loan.Text = rd["loanid1"].ToString();
                    lamount.Text = rd["principalamount1"].ToString();
                    //instalmentNumber.Text = rd[""].ToString();
                    double emi = Convert.ToInt32(rd["Emi"]);
                    double emi1 = Math.Round(emi, 2);
                    intrestAmount.Text = emi1.ToString();
                    paymentIntrest.Text = emi1.ToString();
                       Session["month"]=rd["months"].ToString();
                    //Loan.Text = rd[""].ToString();
                     
                    Session["loanid"] = Loan.Text;
                }
                con.Close();
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Session["installmentnumber"] = instalmentNumber.Text;
            double mon=Convert.ToDouble(Session["month"]);
            double installno=Convert.ToDouble(Session["installmentnumber"]);


            if (installno <= mon)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("emidetaiins", con);
                cmd.CommandType = CommandType.StoredProcedure;
                int scustomerid = Convert.ToInt32(Session["custid"]);
                int sloanid = Convert.ToInt32(Loan.Text);
                double sloanamount = Convert.ToDouble(lamount.Text);
                double sloanamount1 = Math.Round(sloanamount,2); 
                int sinstallment = Convert.ToInt32(instalmentNumber.Text);
                double semiinterest = Convert.ToDouble(intrestAmount.Text);
                double semiinterest1 = Math.Round(semiinterest);
                double spay = Convert.ToDouble(paymentIntrest.Text);
                double spay1 = Math.Round(spay,2);
                string sdate = ldate.Text;
                cmd.Parameters.AddWithValue("@customerid", scustomerid);
                cmd.Parameters.AddWithValue("@loanid", sloanid);
                cmd.Parameters.AddWithValue("@loanamount", sloanamount1);
                cmd.Parameters.AddWithValue("@installment", sinstallment);
                cmd.Parameters.AddWithValue("@emiinterest", semiinterest1);
                cmd.Parameters.AddWithValue("@pay", spay1);
                cmd.Parameters.AddWithValue("@date", sdate);
                cmd.ExecuteNonQuery();
                con.Close();

                int id2 = Convert.ToInt32(Session["custid"]);
                int loan1 = Convert.ToInt32(Session["loanid"]);
                Response.Redirect("EmiCollection.aspx?unique=" + id2 + "&loanid1=" + loan1);
            }
            else
            {
                Response.Write("<Script>alert('No More Amount need to pay'); </Script>");

            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomeSearchPage.aspx");
        }
    }
}