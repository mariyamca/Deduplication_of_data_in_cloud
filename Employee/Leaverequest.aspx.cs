using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Student_Leaverequest : System.Web.UI.Page
{
    DB cs = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           
        }
    }

   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        //int uid = 2;
        // int uid = Convert.ToInt32(Session["userid"].ToString());
        int uid = Convert.ToInt32(Session["regid"].ToString());
        int a = cs.exequery("insert into Leave(uid,date,reason,status)values('" + uid + "','" + txtdate0.Text + "','" + txtreason0.Text + "','pending')");
        if (a > 0)
        {
            txtdate0.Text = "";
            txtreason0.Text = "";
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert();", true);
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}