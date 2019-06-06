using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_Completedworks : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dtt = db.selectquery("select *  from  work");
            if (dtt.Rows.Count > 0)
            {

                ddl_wrk.DataSource = dtt;
                ddl_wrk.DataValueField = "wid";
                ddl_wrk.DataTextField = "projectname";
                ddl_wrk.DataBind();
                ddl_wrk.Items.Insert(0, "select");

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("~/wrkup/" + FileUpload2.FileName);
        FileUpload2.SaveAs(path);
        int a = db.exequery("insert into compltedwrk (wid,eid,wrkfile,description,date)values('" + ddl_wrk.SelectedValue + "','" + Session["regid"] + "','" + FileUpload2.FileName + "','" + txt_ds.Text + "','" + DateTime.Now + "')");
        if(a>0)
        {

        }


    }
}