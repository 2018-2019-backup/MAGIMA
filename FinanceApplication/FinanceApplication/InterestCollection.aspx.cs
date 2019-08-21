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
    public partial class InterestCollection : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            double interestpermon, tenure;
            //string myValue = Context.Items["variable"].ToString();
            //ViewState["sfamount"] = Context.Items["variable"].ToString();
            if (!IsPostBack)
            {
                
                if (ViewState["sfamount"] == null)
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("incollect2", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                    cmd.Parameters.AddWithValue("@lid", Request.QueryString["loanid"].ToString());
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        Session["id"] = rd["customerid"].ToString();
                        Session["newid"] = rd["ID"].ToString();
                        llnum.Text = rd["loanid"].ToString();
                        ttype.Text = rd["loantype"].ToString();
                        ppamount.Text = rd["principalamount"].ToString();
                        Session["principalfinalamount"] = rd["principalamount"].ToString();
                        //ppamountfinal.Text = rd["principalamount"].ToString();
                        double totalamount = Convert.ToDouble(rd["totalamount"]);
                        double totalamount1 = Math.Round(totalamount,2);
                        ttamount.Text = totalamount1.ToString();
                        double totalinterest = Convert.ToDouble(rd["totalinterest"]);
                        double totalinterest1 = Math.Round(totalinterest,2);
                        iinpa.Text = totalinterest1.ToString();
                     
                        ddat.Text = rd["createddate"].ToString();
                        Session["pamount"] = ppamount.Text;
                        interestpermon = Convert.ToDouble(iinpa.Text);
                        tenure = Convert.ToDouble(rd["months"]);

                        Session["month"] = rd["months"];
                        Session["intpermon"] = iinpa.Text;
                        Session["lid"] = llnum.Text;
                        //Session["principalfinalamount"] = ppamountfinal.Text;
                    }
                    rd.Close();
                    con.Close();

                }
                else
                {
                 

                    SqlCommand cmd = new SqlCommand("incollect2", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", Request.QueryString["unique"].ToString());
                    cmd.Parameters.AddWithValue("@lid", Request.QueryString["loanid"].ToString());
                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        Session["id"] = rd["customerid"].ToString();
                        Session["newid"] = rd["ID"].ToString();
                        llnum.Text = rd["loanid"].ToString();
                        ttype.Text = rd["loantype"].ToString();

                        ppamount.Text = rd["principalamount"].ToString();
                        //pamountfinal.Text = ViewState["sfamount"].ToString();
                        //ppamountfinal.Text = ViewState["sfamount"].ToString();
                        double totalamount = Convert.ToDouble(rd["totalamount"]);
                        double totalamount1 = Math.Round(totalamount,2);
                        ttamount.Text = totalamount1.ToString();
                        double totalinterest = Convert.ToDouble(rd["totalinterest"]);
                        double totalinterest1 = Math.Round(totalinterest,2);
                        iinpa.Text = totalinterest1.ToString();
                        //ttten.Text = rd["months"].ToString();
                        ddat.Text = rd["createddate"].ToString();
                        //pamountfinal.Text = Session["famount"].ToString();
                        Session["pamount"] = ppamount.Text;
                        interestpermon = Convert.ToDouble(iinpa.Text);
                        tenure = Convert.ToDouble(rd["months"]);
                        //Session["intpermon"] = interestpermon / tenure;
                        Session["intpermon"] = iinpa.Text;
                        //Session["principalfinalamount"] = ppamountfinal.Text;
                    }
                    rd.Close();
                    con.Close();
                }
                int cid = Convert.ToInt32(Session["id"]);
            }
        }
        

        protected void principal_Click(object sender, EventArgs e)
        {
            int cid = Convert.ToInt32(Session["id"]);
            int loanid = Convert.ToInt32(Session["lid"]);
            Response.Redirect("RepayPrincipal.aspx?unique=" + cid + "&siloanid=" + loanid);
        }

        protected void interest_Click(object sender, EventArgs e)
        {
            int cid = Convert.ToInt32(Session["id"]);
            int loanid = Convert.ToInt32(Session["lid"]);
            Response.Redirect("Repay Interest.aspx?unique=" + cid + "&siloanid=" + loanid);
        }

       
        }
    }
