using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user_viewvacancy : System.Web.UI.Page
{
    DB cs = new DB();
    string uid;
    string pend;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //uid = Session["userid"].ToString();
            //DataTable gt = cs.selectquery("select *from userreg where uid='" + uid + "'  ");
            //if (gt.Rows.Count > 0)
            //{
            //    pend = gt.Rows[0]["status"].ToString();
            //}
            //if (pend == "pending")
            //{
            //    DataTable fd = cs.selectquery("select a.companyname,b.id,b.vacancyfield,b.experience,b.salarypackage,b.skills,b.description from companyreg a join Addvacancy b on b.companyid=a.cid");
            //    DataList1.DataSource = fd;
            //    DataList1.DataBind();
            //}
            //else
            //{




                DataTable dt = cs.selectquery("select * from  Addvacancy ");
                //where b.userid!='"+uid+"'");
                DataList1.DataSource = dt;
                DataList1.DataBind();
           }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label6.Text = "";
        DataTable gt = cs.selectquery("select * from Addvacancy where vid='" +e.CommandArgument + "'  ");
        if (gt.Rows.Count > 0)
        {
            string jc = gt.Rows[0]["jobcode"].ToString();


            DataTable dt = cs.selectquery("select * from  career where skrid='" + Session["regid"] + "' and jobcode='" + jc + "'  ");
            if (dt.Rows.Count > 0)
            {
                Label6.Text = "Already Applied !!!! ";
            }
            else
            {
                Label6.Text = "";

                Response.Redirect("CAREER.aspx?vid=" + e.CommandArgument.ToString());
            }
        }
    }
}