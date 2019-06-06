using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sitemstr_Register : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int a = db.exequery("insert into regjob (name,email,phone,username,password,utype)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtph.Text + "','" + txtemail.Text + "','" + txtpswd.Text + "','3')");
        if (a > 0)
        {

            lbl_msg.Text = "Registrated successfully ";

            txtpswd.Text = " ";
            txtph.Text = " ";
            txtuname.Text = " ";
            txtemail.Text = " ";
            txtname.Text = " ";
           
            Response.Redirect("Login.aspx");

        }
        else
        {
            lbl_msg.Text = "some error occur,please try again!!";
        }

    }

 
}