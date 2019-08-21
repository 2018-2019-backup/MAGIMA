using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinanceApplication
{
    public partial class CustomeSearchPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            gv.Visible = false;
            if (customer.Text != "")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from customer where CustomerName like '" + customer.Text + "%'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (!object.Equals(ds, null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        gv.DataSource = ds.Tables[0];
                        gv.DataBind();
                        gv.Visible = true;
                    }
                }
                con.Close();
                //System.Threading.Thread.Sleep(5000);
            }
        }

        protected void Btn2_Click(object sender, EventArgs e)
        {
            if (mobile.Text != "" && mobile.Text.Length == 10)
            {
                con.Open();
                SqlCommand cmmd = new SqlCommand("select * from customer where MobileNumber like '" + mobile.Text + "%'", con);
                SqlDataAdapter dat = new SqlDataAdapter(cmmd);
                DataSet dss = new DataSet();
                dat.Fill(dss);
                if (!object.Equals(dss, null))
                {
                    if (dss.Tables[0].Rows.Count > 0)
                    {
                        gv.DataSource = dss.Tables[0];
                        gv.DataBind();
                        //gv.HeaderStyle.BackColor = Color.DarkBlue;
                        //gv.HeaderStyle.ForeColor = Color.White;
                        //gv.BackColor = Color.White;
                        //gv.ForeColor = Color.Black;
                    }
                }
                con.Close();
                //System.Threading.Thread.Sleep(5000);
            }
        }

 
        protected void select_Click(object sender, EventArgs e)
        {
            Button edit = (Button)sender;
            GridViewRow row = (GridViewRow)edit.NamingContainer;
            ViewState["ri"] = row.RowIndex;
            ViewState["id"] = gv.Rows[row.RowIndex].Cells[0].Text;
            Session["id"] = ViewState["id"];
            string name = gv.Rows[row.RowIndex].Cells[2].Text;
            Session["name"] = name;
            string fname = gv.Rows[row.RowIndex].Cells[3].Text;
            Session["fname"] = fname;
            string dob = gv.Rows[row.RowIndex].Cells[4].Text;
            Session["dob"] = dob;
            string gen = gv.Rows[row.RowIndex].Cells[5].Text;
            Session["gen"] = gen;
            string occupation = gv.Rows[row.RowIndex].Cells[6].Text;
            Session["occupation"] = occupation;
            string mobile = gv.Rows[row.RowIndex].Cells[7].Text;
            Session["mobile"] = mobile;
            string alternativemobile = gv.Rows[row.RowIndex].Cells[8].Text;
            Session["alternativemobile"] = alternativemobile;
            string landline = gv.Rows[row.RowIndex].Cells[9].Text;
            Session["landline"] = landline;
            string proof = gv.Rows[row.RowIndex].Cells[10].Text;
            Session["proof"] = proof;
            string num = gv.Rows[row.RowIndex].Cells[11].Text;
            Session["num"] = num;
            string address = gv.Rows[row.RowIndex].Cells[12].Text;
            Session["address"] = address;
            string city = gv.Rows[row.RowIndex].Cells[13].Text;
            Session["city"] = city;
            string refs = gv.Rows[row.RowIndex].Cells[14].Text;
            Session["refs"] = refs;
            string refrel = gv.Rows[row.RowIndex].Cells[15].Text;
            Session["refrel"] = refrel;
            string image = gv.Rows[row.RowIndex].Cells[16].Text;
            Session["imgs"] = image;
            int id = Convert.ToInt32(Session["id"]);
            //System.Threading.Thread.Sleep(5000);
            Response.Redirect("customerdetail.aspx?unique="+ id);

        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            //System.Threading.Thread.Sleep(5000);
            
            Response.Redirect("Dashboard.aspx");
        }
    }
}