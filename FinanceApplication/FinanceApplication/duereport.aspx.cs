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
    public partial class duereport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void search_Click(object sender, EventArgs e)
        {
            if (type.SelectedIndex == 0)
            {
                DataSet dds = new DataSet();
                SqlDataAdapter add = new SqlDataAdapter();
                DataSet nw = new DataSet();
                SqlDataAdapter temp1 = new SqlDataAdapter();
                DataSet dds2 = new DataSet();
                SqlDataAdapter add2 = new SqlDataAdapter();



                // loan id count
                con.Open();
                SqlCommand sc = new SqlCommand("loanid1", con);
                sc.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sad = new SqlDataAdapter(sc);
                DataSet das = new DataSet();
                sad.Fill(das);
                ViewState["loanid"] = das.Tables[0].Rows[0]["loanid"].ToString();
                int loanid = Convert.ToInt32(ViewState["loanid"]);
                con.Close();

                for (int i = 1; i <= loanid; i++)
                {
                    //fill repayprincipal data
                    con.Open();
                    SqlCommand cmd = new SqlCommand("dueins", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ilid", i);
                    SqlDataAdapter ad = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    ad.Fill(ds);
                    ViewState["installment"] = ds.Tables[0].Rows.Count;
                    con.Close();

                    //month value from interest table
                    con.Open();
                    SqlCommand ccmd = new SqlCommand("interestdue2", con);
                    ccmd.CommandType = CommandType.StoredProcedure;
                    ccmd.Parameters.AddWithValue("@ilid", i);
                    SqlDataReader rd = ccmd.ExecuteReader();
                    while (rd.Read())
                    {
                        ViewState["rate"] = Convert.ToInt32(rd["interest"]);
                        ViewState["months"] = Convert.ToInt32(rd["months"]);
                        ViewState["totalamount"] = Convert.ToDouble(rd["totalamount"]);
                        ViewState["lcdate"] = rd["createddate"].ToString();
                    }
                    rd.Close();
                    con.Close();


                    //balance amount after repay principal from repayprincipal1
                    con.Open();
                    SqlCommand aa = new SqlCommand("newbalance", con);
                    aa.CommandType = CommandType.StoredProcedure;
                    aa.Parameters.AddWithValue("@ilid", i);
                    SqlDataReader aar = aa.ExecuteReader();
                    while (aar.Read())
                    {
                        ViewState["newbalamt"] = Convert.ToDouble(aar["newpricipalamount"]);

                    }
                    aar.Close();
                    con.Close();


                    //repay interest amount sum value
                    con.Open();
                    SqlCommand cc = new SqlCommand("pay", con);
                    cc.CommandType = CommandType.StoredProcedure;
                    cc.Parameters.AddWithValue("@ilid", i);
                    SqlDataAdapter adap = new SqlDataAdapter(cc);
                    DataSet dats = new DataSet();
                    adap.Fill(dats);


                    if (dats.Tables[0].Rows.Count > 0)
                    {
                        string pay = dats.Tables[0].Rows[0]["amountpaid"].ToString();
                        ViewState["pay"] = pay;
                    }
                    con.Close();

                    //repay principal amount
                    con.Open();
                    SqlCommand dd = new SqlCommand("finalprincipal", con);
                    dd.CommandType = CommandType.StoredProcedure;
                    dd.Parameters.AddWithValue("@ilid", i);
                    SqlDataAdapter aaa = new SqlDataAdapter(dd);
                    DataSet ss = new DataSet();
                    aaa.Fill(ss);

                    //if (ss.Tables[0].Rows.Count>0)
                    //{
                    string principalamount = ss.Tables[0].Rows[0]["payamount"].ToString();
                    //ViewState["principalamount"] = principalamount;
                    //}
                    con.Close();

                    //before 1st installment process(loan created date)
                    if (ds.Tables[0].Rows.Count == 0)
                    {
                        string sfrom = from.Text;
                        ViewState[sfrom] = sfrom;
                        string sto = till.Text;
                        ViewState[sto] = sto;
                        DateTime myDateTime = Convert.ToDateTime(ViewState["lcdate"]);
                        DateTime fromd = Convert.ToDateTime(ViewState[sfrom]);
                        DateTime to = Convert.ToDateTime(ViewState[sto]);
                        if (myDateTime > fromd && myDateTime > to)
                        {
                        }
                        else
                        {
                            con.Open();
                            SqlCommand cmdd = new SqlCommand("loanduereportinterestjoins", con);
                            cmdd.CommandType = CommandType.StoredProcedure;
                            //string sfrom = from.Text;
                            //string sto = till.Text;
                            cmdd.Parameters.AddWithValue("@ilid", i);
                            cmdd.Parameters.AddWithValue("@from", sfrom);
                            cmdd.Parameters.AddWithValue("@to", sto);
                            add.SelectCommand = cmdd;
                           
                            add.Fill(dds);

                            ViewState["first"] = dds;
                            con.Close();
                        }

                    }
                    else
                    {
                        //take date from repayinterest
                        con.Open();
                        SqlCommand cmmd = new SqlCommand("dueins", con);
                        cmmd.CommandType = CommandType.StoredProcedure;
                        cmmd.Parameters.AddWithValue("@ilid", i);
                        SqlDataReader rdd = cmmd.ExecuteReader();
                        while (rdd.Read())
                        {
                            string dnew = rdd["date"].ToString();
                            Session["dnew"] = dnew;
                        }
                        con.Close();

                        int install = Convert.ToInt32(ViewState["installment"]);
                        double inspay = Convert.ToDouble(ViewState["pay"]);
                        Double totalamount = Convert.ToDouble(ViewState["totalamount"]);

                        if (principalamount == "")
                        {

                            Double balance = totalamount - inspay;
                            //if (balance != 0)
                            //{

                            string sfrom = from.Text;
                            ViewState[sfrom] = sfrom;
                            string still = till.Text;
                            ViewState[still] = still;
                            DateTime myDateTime = Convert.ToDateTime(Session["dnew"]);
                            DateTime fromd = Convert.ToDateTime(ViewState[sfrom]);
                            DateTime to = Convert.ToDateTime(ViewState[still]);
                            //DateTime ddnew = Convert.ToDateTime(Session["dnew"]);
                            //int result1 = DateTime.Compare(myDateTime, fromd);
                            //int result2 = DateTime.Compare(myDateTime, to);
                            if (myDateTime >= fromd && myDateTime <= to)
                            {

                            }
                            else
                            {
                                if (myDateTime > fromd && myDateTime > to)
                                {

                                }
                                else
                                {
                                    con.Open();
                                    //using (SqlConnection con1 = new SqlConnection(CS))
                                    //{
                                    SqlCommand cmdd1 = new SqlCommand("loanduereportinterestjoins2", con);
                                    cmdd1.CommandType = CommandType.StoredProcedure;
                                    string sdnew = Session["dnew"].ToString();
                                    cmdd1.Parameters.AddWithValue("@ilid", i);



                                    cmdd1.Parameters.AddWithValue("@from", sfrom);
                                    cmdd1.Parameters.AddWithValue("@to", still);
                                    cmdd1.Parameters.AddWithValue("@dnew", sdnew);
                                    cmdd1.Parameters.AddWithValue("@balance", balance);
                                    //cmdd1.Parameters.AddWithValue("@month", month);


                                    temp1.SelectCommand = cmdd1;

                                    temp1.Fill(nw);
                                    ViewState["second"] = nw;


                                    //}
                                    con.Close();
                                }
                            }
                        }
                        else
                        {
                            //double sprincipalamount = Convert.ToDouble(ViewState["principalamount"]);
                            double sprincipalamount = Convert.ToDouble(principalamount);

                            //int month = Convert.ToInt32(ViewState["months"]);

                            //    int rate=Convert.ToInt32(ViewState["rate"]);
                            double newbalprincipalamount = Convert.ToDouble(ViewState["newbalamt"]);
                            //int installment=Convert.ToInt32(ViewState["installment"]);
                            // int balmon=month-installment;
                            // double totalins=(newbalprincipalamount*(balmon/12)*rate);
                            // double newtotalamount=(balmon*totalins)+newbalprincipalamount;
                            //double balance = totalamount - (inspay + sprincipalamount);

                            //if(newbalprincipalamount==0)
                            //{
                            //     //double balance=0;

                            //}
                            //else
                            //{
                            double balance = totalamount - (inspay + sprincipalamount);
                            //if (balance != 0)
                            if (newbalprincipalamount == 0)
                            {
                            }
                            else{
                                string sfrom = from.Text;
                                Session[sfrom] = sfrom;
                                string still = till.Text;
                                Session[still] = still;
                                DateTime myDateTime = Convert.ToDateTime(Session["dnew"]);
                                DateTime fromd = Convert.ToDateTime(Session[sfrom]);
                                DateTime to = Convert.ToDateTime(Session[still]);
                                //DateTime dddnew = Convert.ToDateTime(Session["dnew"]);
                                int result1 = DateTime.Compare(myDateTime, fromd);
                                int result2 = DateTime.Compare(myDateTime, to);
                                if (myDateTime >= fromd && myDateTime <= to)
                                {

                                }
                                else
                                {
                                    //if (fromd.Date < myDateTime.Date && to.Date < myDateTime.Date)
                                    //{
                                    //}
                                    if (myDateTime > fromd && myDateTime > to)
                                    {

                                    }
                                    else
                                    {
                                        con.Open();
                                        SqlCommand cmdd2 = new SqlCommand("loanduereportinterestjoins2", con);
                                        cmdd2.CommandType = CommandType.StoredProcedure;
                                        cmdd2.Parameters.AddWithValue("@ilid", i);
                                        string sdnew = Session["dnew"].ToString();

                                        cmdd2.Parameters.AddWithValue("@from", sfrom);
                                        cmdd2.Parameters.AddWithValue("@to", still);
                                        cmdd2.Parameters.AddWithValue("@dnew", sdnew);
                                        cmdd2.Parameters.AddWithValue("@balance", balance);
                                        //cmdd2.Parameters.AddWithValue("@month", month);
                                        add2.SelectCommand = cmdd2;
                                        add2.Fill(dds2);
                                        ViewState["third"] = dds2;
                                        con.Close();
                                    }
                                }
                            }
                            }
                            //}
                        }
                    }
                
                //DataSet d1 = (DataSet)ViewState["first"];
                //DataSet d2 = (DataSet)ViewState["second"];
                //DataSet d3 = (DataSet)ViewState["third"];
                //gv1.DataSource = d1;
                //gv1.DataBind();

                //gv2.DataSource = d2;
                //gv2.DataBind();

                //gv3.DataSource = d3;
                //gv3.DataBind();

                if (ViewState["first"] != null && ViewState["second"] != null && ViewState["third"] != null)
                {
                    DataSet d1 = (DataSet)ViewState["first"];
                    DataSet d2 = (DataSet)ViewState["second"];
                    DataSet d3 = (DataSet)ViewState["third"];

                    d2.Merge(d3);
                    d1.Merge(d2);
                    gv1.DataSource = d1;
                    gv1.DataBind();

                }
                else if (ViewState["third"] == null && ViewState["first"] != null && ViewState["second"] != null)
                {
                    DataSet d1 = (DataSet)ViewState["first"];
                    DataSet d2 = (DataSet)ViewState["second"];
                    d1.Merge(d2);
                    gv1.DataSource = d1;
                    gv1.DataBind();
                }
                else if (ViewState["first"] == null && ViewState["second"] != null && ViewState["third"] != null)
                {

                    DataSet d2 = (DataSet)ViewState["second"];
                    DataSet d3 = (DataSet)ViewState["third"];

                    d2.Merge(d3);
                    gv1.DataSource = d2;
                    gv1.DataBind();
                }
                else if (ViewState["first"] != null && ViewState["second"] == null && ViewState["third"] != null)
                {
                    DataSet d1 = (DataSet)ViewState["first"];
                    DataSet d3 = (DataSet)ViewState["third"];
                    d1.Merge(d3);
                    gv1.DataSource = d1;
                    gv1.DataBind();
                }
                else if (ViewState["first"] != null && ViewState["second"] == null && ViewState["third"] == null)
                {
                    DataSet d1 = (DataSet)ViewState["first"];
                    gv1.DataSource = d1;
                    gv1.DataBind();
                }
                else if (ViewState["first"] == null && ViewState["second"] != null && ViewState["third"] == null)
                {
                    DataSet d2 = (DataSet)ViewState["second"];
                    gv1.DataSource = d2;
                    gv1.DataBind();
                }
                else if (ViewState["first"] == null && ViewState["second"] == null && ViewState["third"] != null)
                {
                    DataSet d3 = (DataSet)ViewState["third"];
                    gv1.DataSource = d3;
                    gv1.DataBind();
                }
            }
            else
            {

                SqlDataAdapter add = new SqlDataAdapter();
                DataSet dds = new DataSet();
                DataSet dds4 = new DataSet();
                SqlDataAdapter add4 = new SqlDataAdapter();
                con.Open();
                SqlCommand sc = new SqlCommand("emiloanid", con);
                sc.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sad = new SqlDataAdapter(sc);
                DataSet das = new DataSet();
                sad.Fill(das);
                ViewState["loanid"] = das.Tables[0].Rows[0]["loanid"].ToString();
                int loanid = Convert.ToInt32(ViewState["loanid"]);
                con.Close();


                for (int i = 1; i <= loanid; i++)
                {
                    con.Open();
                    SqlCommand cd = new SqlCommand("dueemi", con);
                    cd.CommandType = CommandType.StoredProcedure;
                    cd.Parameters.AddWithValue("@ilid", i);
                    SqlDataAdapter pt = new SqlDataAdapter(cd);
                    DataSet da = new DataSet();
                    pt.Fill(da);
                    Session["emiinstallment"] = da.Tables[0].Rows.Count;
                    con.Close();


                    //month value from interest table
                    con.Open();
                    SqlCommand ccd = new SqlCommand("emidue2", con);
                    ccd.CommandType = CommandType.StoredProcedure;
                    ccd.Parameters.AddWithValue("@ilid", i);
                    SqlDataReader rrd = ccd.ExecuteReader();
                    while (rrd.Read())
                    {
                        Session["month"] = rrd["months"].ToString();
                        Session["tamount"] = rrd["totalamount"].ToString();
                    }
                    rrd.Close();
                    con.Close();


                    con.Open();
                    SqlCommand cc1 = new SqlCommand("payemi", con);
                    cc1.CommandType = CommandType.StoredProcedure;
                    cc1.Parameters.AddWithValue("@ilid", i);
                    SqlDataAdapter adap1 = new SqlDataAdapter(cc1);
                    DataSet dats1 = new DataSet();
                    adap1.Fill(dats1);


                    if (dats1.Tables[0].Rows.Count > 0)
                    {
                        string pay1 = dats1.Tables[0].Rows[0]["pay"].ToString();
                        ViewState["pay1"] = pay1;
                    }
                    con.Close();


                    if (da.Tables[0].Rows.Count == 0)
                    {
                        string sfrom = from.Text;
                        Session[sfrom] = sfrom;
                        string still = till.Text;
                        Session[still] = still;
                        DateTime myDateTime = Convert.ToDateTime(Session["lcdate"]);
                        DateTime fromd = Convert.ToDateTime(Session[sfrom]);
                        DateTime to = Convert.ToDateTime(Session[still]);
                        if ((myDateTime > fromd) && (myDateTime > to))
                        {

                        }
                        else
                        {

                            con.Open();
                            SqlCommand cmdd = new SqlCommand("loanduereportemi", con);
                            cmdd.CommandType = CommandType.StoredProcedure;
                            cmdd.Parameters.AddWithValue("@ilid", i);
                            cmdd.Parameters.AddWithValue("@efrom", sfrom);
                            cmdd.Parameters.AddWithValue("@eto", still);
                            add.SelectCommand = cmdd;
                            add.Fill(dds);
                            //gv4.DataSource = dds;
                            //gv4.DataBind();
                            ViewState["emifirst"] = dds;
                            con.Close();
                        }
                    }
                    else
                    {

                        con.Open();
                        SqlCommand cmmd = new SqlCommand("dueemi", con);
                        cmmd.CommandType = CommandType.StoredProcedure;
                        cmmd.Parameters.AddWithValue("@ilid", i);
                        SqlDataReader red = cmmd.ExecuteReader();
                        while (red.Read())
                        {
                            string dnew = red["date"].ToString();
                            Session["dnew"] = dnew;
                        }
                        con.Close();

                        int install = Convert.ToInt32(Session["emiinstallment"]);
                        int month = Convert.ToInt32(Session["month"]);
                        double emipay = Convert.ToDouble(ViewState["pay1"]);
                        Double emitotalamount = Convert.ToDouble(Session["tamount"]);
                        Math.Round(emitotalamount, 2);
                        double emibalance = emitotalamount - emipay;
                        if (install <= month)
                        {
                            if (emibalance == 0 || emibalance<0)
                            {

                            }
                            else
                            {
                                string sfrom = from.Text;
                                Session[sfrom] = sfrom;
                                string still = till.Text;
                                Session[still] = still;
                                DateTime myDateTime = Convert.ToDateTime(Session["dnew"]);
                                DateTime fromd = Convert.ToDateTime(Session[sfrom]);
                                DateTime to = Convert.ToDateTime(Session[still]);
                                if (myDateTime >= fromd && myDateTime <= to)
                                {

                                }
                                else
                                {
                                    if ((myDateTime > fromd) && (myDateTime > to))
                                    {

                                    }
                                    else
                                    {
                                        con.Open();
                                        SqlCommand cmdd4 = new SqlCommand("loanduereportemi2", con);
                                        cmdd4.CommandType = CommandType.StoredProcedure;
                                        cmdd4.Parameters.AddWithValue("@ilid", i);
                                        string sdnew = Session["dnew"].ToString();
                                        cmdd4.Parameters.AddWithValue("@efrom", sfrom);
                                        cmdd4.Parameters.AddWithValue("@eto", still);
                                        cmdd4.Parameters.AddWithValue("@dnew", sdnew);
                                        cmdd4.Parameters.AddWithValue("@emibalance", emibalance);
                                        add4.SelectCommand = cmdd4;
                                        add4.Fill(dds4);

                                        ViewState["emisecond"] = dds4;
                                        con.Close();
                                    }
                                }
                            }
                        }
                    }
                }
                if(ViewState["emifirst"]!=null&&ViewState["emisecond"]==null)
                {
                DataSet emi1 = (DataSet)ViewState["emifirst"];
                gv4.DataSource = emi1;
                gv4.DataBind();
                }
                else if(ViewState["emifirst"]!=null&&ViewState["emisecond"]!=null)
                {
                DataSet emi1 = (DataSet)ViewState["emifirst"];
                DataSet emi2 = (DataSet)ViewState["emisecond"];
                emi1.Merge(emi2);
                gv4.DataSource = emi1;
                gv4.DataBind();
                //gv5.DataSource = emi2;
                //gv5.DataBind();
                }
                else if (ViewState["emifirst"] == null && ViewState["emisecond"] != null)
                {
                    DataSet emi2 = (DataSet)ViewState["emisecond"];
                    gv4.DataSource = emi2;
                    gv4.DataBind();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report1.aspx");
        }

        protected void excel_Click(object sender, EventArgs e)
        {
            string FileName = "MAGIMA_DUEREPORT" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gv1.GridLines = GridLines.Both;
            gv1.HeaderStyle.Font.Bold = true;
            gv1.RenderControl(htmltextwrtter);

            gv4.GridLines = GridLines.Both;
            gv4.HeaderStyle.Font.Bold = true;
            gv4.RenderControl(htmltextwrtter);
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