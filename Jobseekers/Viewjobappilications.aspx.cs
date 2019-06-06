using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logistic_Viewjobappilications : System.Web.UI.Page
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
        DataTable dt = db.selectquery("select * from interviewscheduling i join career c on i.cid=c.cid where c.skrid='"+ Session["regid"]+"' ");

        gridview1.DataSource = dt;
        gridview1.DataBind();
    }

    

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}