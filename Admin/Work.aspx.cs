using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Clinet_Work : System.Web.UI.Page
{
    DB db = new DB();
    string uid;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  uid = Session["regid"].ToString();
        if (!IsPostBack)
        {
           // freelancerfill();
            worktypefill();
        }
    }

    //public void freelancerfill()
    //{
    //    DataTable dtt = db.selectquery("select *  from  registration where usertype='Freelanser'");
    //    if (dtt.Rows.Count > 0)
    //    {

    //        ddl_freelancer.DataSource = dtt;
    //        ddl_freelancer.DataValueField = "regid";
    //        ddl_freelancer.DataTextField = "name";

    //        ddl_freelancer.DataBind();
    //    }
   // }
    public void worktypefill()
    {
        DataTable dtt = db.selectquery("select *  from  worktype");
        if (dtt.Rows.Count > 0)
        {

            ddl_wrktype.DataSource = dtt;
            ddl_wrktype.DataValueField = "tyid";
            ddl_wrktype.DataTextField = "worktype";
            ddl_wrktype.DataBind();
            ddl_wrktype.Items.Insert(0, "select");
            
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = db.exequery("insert into work (wrktype,workdetails,projectname,contactno,email,startdate,enddate,eid,status)values('" + ddl_wrktype.SelectedValue + "', '" + txt_details.Text + "', '" + txt_pname.Text + "','" + txt_ph0.Text + "','" + txt_email.Text + "','" + Convert.ToDateTime(txt_Startdate.Text).ToString("yyyy-MM-dd") + "','" + Convert.ToDateTime(txt_enddate.Text).ToString("yyyy-MM-dd") + "','0','waiting')");
        if (a > 0)
        {
           
            Label1.Text = " Work Registered  successfully !!!! ";
            txt_enddate.Text = "";
            txt_details.Text = "";
            txt_email.Text = "";
            worktypefill();


        }
        else
        {
            Label1.Text = "Try  Again !!";
        }

    }

    protected void ddl_wrktype_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        //DataTable dtt = db.selectquery("select *  from  registration where usertype='Freelanser' and specializtion='"+ ddl_wrktype.SelectedValue+"' ");
        //if (dtt.Rows.Count > 0)
        //{

        //    ddl_freelancer.DataSource = dtt;
        //    ddl_freelancer.DataValueField = "regid";
        //    ddl_freelancer.DataTextField = "name";

        //    ddl_freelancer.DataBind();
        //}
    }
}