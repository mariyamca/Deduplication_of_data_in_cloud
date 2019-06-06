using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Distributor1_viewduties : System.Web.UI.Page
{
    DB db = new DB();
    string did;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            showvalue();
        }
    }

    private void showvalue()
    {
         did = Session["did"].ToString();
        //   Label1.Text = DateTime.Now.ToString("MM-dd-yyyy h:mmtt");

        
        DataTable dt = db.selectquery(" select a.allocateddate,a.allocationid,p.model,a.quantity from allocateproduct a  join Product p on a.productid = p.pid  join distributer d on a.distributorid=d.did where a.status = 'Waiting' and d.did='"+did+"'");
        //DataTable dt = db.selectquery("select a.allocateddate,a.allocationid,s.showroomname,p.model,a.quantity from allocateproduct a  join Product p on a.productid=p.pid join showroom s on a.showroomid=s.showroomid  where  a.status='Waiting'");


        gridview1.DataSource = dt;
        gridview1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        //LinkButton lbtn = sender as LinkButton;
        //GridViewRow grow = lbtn.NamingContainer as GridViewRow;
        //int gid = Convert.ToInt16(gridview1.DataKeys[grow.RowIndex].Value.ToString());
        //int a = db.exequery("update allocateproduct set status='allocated'   where allocationid='" + gid + "'");


        //showvalue();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        LinkButton lbtn = sender as LinkButton;
        GridViewRow grow = lbtn.NamingContainer as GridViewRow;
        int gid = Convert.ToInt16(gridview1.DataKeys[grow.RowIndex].Value.ToString());
        int a = db.exequery("update allocateproduct set status='allocated'   where allocationid='" + gid + "'");


        showvalue();
    }

    protected void gridview1_RowCommand(object sender, GridViewCommandEventArgs e)
    {if (e.CommandName == "allow")
        {
            foreach (GridViewRow row in gridview1.Rows)
            {
                if ((row.FindControl("CheckBox1") as CheckBox).Checked)
                {

                    int a = db.exequery("update allocateproduct set status='allocated'   where allocationid='" + e.CommandArgument + "'");

                }
            }
        }
        showvalue();

    }
}