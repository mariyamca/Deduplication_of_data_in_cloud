using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sitemaster_reg : System.Web.UI.Page
{

    DB db = new DB();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Panel1.Visible = false;
        if (!IsPostBack)
        {
            worktypefill();
        }

    }
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
        id = 2;
        //if (RadioButtonList2.SelectedIndex == 0)
        //{
        //    id = 2;
        //}
        //else if (RadioButtonList2.SelectedIndex == 1)
        //{
        //    id = 3;
        //}
        int a = db.exequery("insert into registration (name,phone,email,password,specializtion,usertype,Status)values('" + txt_name.Text + "','" + txt_ph.Text + "','" + txt_email.Text + "','" + txt_pass.Text + "','" + ddl_wrktype.SelectedValue + "','" + id + "','Waiting')");
        if (a > 0)
        {
          

            Response.Redirect("~/sitemaster/Login.aspx");
            Label1.Text = "Registrated successfully ";

            txt_email.Text = " ";
            // txt_designation.Text = " ";
            //  ddl_district.Text= "--Select-- ";
            txt_name.Text = " ";
            txt_pass.Text = " ";
            txt_ph.Text = " ";

            //uname.Text = " ";
           // RadioButtonList2.SelectedIndex = -1;

        }
        else
        {
            Label1.Text = "some error occur,please try again!!";
        }

    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (RadioButtonList2.SelectedValue != "Client")
        //{
        //    ddl_wrktype.Visible = true;
        //    Label2.Visible = true;


        //}
        //else
        //{
        //    ddl_wrktype.Visible = false;
        //    Label2.Visible = false;

        //}
    }
}