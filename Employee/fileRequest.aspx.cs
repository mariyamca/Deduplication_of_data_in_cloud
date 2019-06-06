using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patients_fileRequest : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.selectquery("select * from upload");
        GridView1.DataBind();

    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "rqst")
        {
            int a=db.exequery("update upload set status='request',eid='"+Session["regid"]+ "' where upid='" + e.CommandArgument+"' ");
            if(a>0)

            {
           Label1.Text="check your mail";

            
            }
        }

    }
}