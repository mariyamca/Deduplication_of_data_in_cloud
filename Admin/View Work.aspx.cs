using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admin_View_Work : System.Web.UI.Page
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
        DataTable dt1 = db.selectquery("select * from work w join worktype t on w.wrktype = t.tyid ");
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //Label1.Text = "";
        ////GridViewRow row = (sender as LinkButton).NamingContainer as GridViewRow;
        ////GridView1.SelectedIndex = row.RowIndex;

        ////var customerId = GridView1.Rows[GridView1.SelectedIndex].FindControl("hiddenEmployeeId") as HtmlInputHidden;
        //GridViewRow gvr = (GridViewRow)(((LinkButton)e.CommandSource).NamingContainer);
        //GridView1.SelectedIndex = gvr.RowIndex;

        //Label ID = gvr.Cells[10].FindControl("Label1") as Label;
     
        //string type = gvr.Cells[1].Text.ToString().Trim();
        //var customerId = GridView1.Rows[GridView1.SelectedIndex].FindControl("tyid") as HtmlInputHidden;
        //// int index = Convert.ToInt32(e.CommandArgument);
        ////GridViewRow row = GridView1.Rows[index];
        ////string wid = row.Cells[0].Text;
        ////string type = row.Cells[1].Text;
        ////string date = row.Cells[6].Text;
        //DataTable dt = db.selectquery("select * from registration where usertype='2' and specializtion='" + ID.Text + "'");
        //for (int i = 0; i < dt.Rows.Count - 0; i++)
        //{
        //    int Userid = Convert.ToInt32(dt.Rows[i]["regid"]);
        //    int a = db.exequery("insert into sendingwork (wid,freid,status)values('" + e.CommandArgument + "','" + Userid + "','waiting')");
        //    if (a > 0)
        //    {

        //        Label1.Text = " work Send Successfully  !!!!";
        //    }
        //}

    }
}
