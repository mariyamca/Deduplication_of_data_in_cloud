using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sitemaster_Login : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{

    //    DataTable dt = db.selectquery("select * from registration where username='" + txt_user .Text + "' and password='" + txt_pswd.Text + "' and Status='Approved'");
    //    if (dt.Rows.Count > 0)
    //    {
    //        Session["Username"] = txt_user.Text;
    //        string Usertype = dt.Rows[0]["usertype"].ToString();
    //        string Userid = dt.Rows[0]["regid"].ToString();
    //        Session["regid"] = Userid;
    //        if (Usertype == "2")
    //        {
    //            Response.Redirect("~/Freelancer/Home.aspx");

    //        }
    //        else if (Usertype == "3")
    //        {
    //            Response.Redirect("/Client/Home.aspx");
    //        }
    //        else if (Usertype == "1")
    //        {

    //            Response.Redirect("~/Admin/AdHome.aspx");


    //        }
    //    }

    //    else
    //    {
    //        Label1.Text = "Invalid user";
    //    }

    //}

    //protected void btnreg_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/sitemaster/Register.aspx");
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt1 = db.selectquery("select * from regjob where email='" + txt_username.Text + "' and password='" + txt_pswd.Text + "' ");
       
            
            DataTable dt = db.selectquery("select * from registration where email='" + txt_username.Text + "' and password='" + txt_pswd.Text + "' and Status='Approved'");
        if (dt.Rows.Count > 0)
        {
            Session["Username"] = txt_username.Text;
            string Usertype = dt.Rows[0]["usertype"].ToString();
            string regid = dt.Rows[0]["regid"].ToString();
            Session["regid"] = regid;
            if (Usertype == "2")
            {
                 Response.Redirect("~/Employee/Home.aspx");

              // http://localhost:49563/Employee/Home.aspx
              

            }
           
            else if (Usertype == "1")
            {

                Response.Redirect("~/Admin/AdHome.aspx");


            }
            
        }
        else if (dt1.Rows.Count > 0)
        {
            string regid = dt1.Rows[0]["regid"].ToString();
            Session["regid"] = regid;


            Response.Redirect("/Jobseekers/jobHome.aspx");
        }

        else
        {
            Label1.Text = "Invalid user";
        }

    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/sitemaster/Register.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {//http://localhost:11973/sitemaster/Forgotpswd.aspx
        Response.Redirect("~/sitemaster/Home.aspx");
    }
}

