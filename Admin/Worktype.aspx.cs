using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Worktype : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        int a = db.exequery("insert into worktype (worktype)values('" + txt_type.Text + "')");
        if (a > 0)
        {

            Label1.Text = " worktype Registrated successfully ";

        }
        else
        {
            Label1.Text = "Try  Again !!";
        }
    }
}