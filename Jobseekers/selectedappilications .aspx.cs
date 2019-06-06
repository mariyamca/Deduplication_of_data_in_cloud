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
        DataTable dt = db.selectquery("select * from joindate j join regjob  r on j.skrid=r.regid  where r.regid='" + Session["regid"] + "'");

        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

   

   
}