using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Feelancer : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdetails();
        }

    }
    private void showdetails()
    {
        Label1.Text = "";
        DataTable dt1 = db.selectquery("select * from registration where usertype='2' ");
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }


    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Label1.Text = "";
        //  int index = Convert.ToInt32(e.CommandArgument);
        //GridViewRow row = GridView1.Rows[index];  // row which u have created..
        //string requestNo = row.Cells[0].Text;
        //string mail = row.Cells[4].Text;
        int a = db.exequery("update registration set Status='Approved'  where regid='" + e.CommandArgument + "'");
        if (a > 0)
        {
            Label1.Text = " Successfully Approved !!!!";
        }
        showdetails();
    }
}