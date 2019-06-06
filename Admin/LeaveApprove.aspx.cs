using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Department_LeaveApprove : System.Web.UI.Page
{
    DB cs = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        // DataTable dt = cs.selectquery("select * from Leave where uid='2'");
        DataTable dt = cs.selectquery("select * from Leave l join registration r on l.uid=r.regid and l.status='pending'");
       // DataTable dt = cs.selectquery("select * from Leave l join registration r on l.uid=r.usertype");
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="view")
        {
            int a = cs.exequery("update Leave set status='Approved' where lid='" + e.CommandArgument + "'");
            Response.Redirect("LeaveApprove.aspx");
        }
    }
}