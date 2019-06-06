using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class company_addvacancy : System.Web.UI.Page
{
    DB cs = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
     
        int a = cs.exequery("insert into Addvacancy(vacancy,jobcode,experience,salarypackage,skills,description)values('" + txt_addvcncy.Text + "','" + txt_code.Text + "','" + txt_exp.Text + "','" + txtsalary.Text + "','" + txtskill.Text + "','" + txtdesc.Text + "')");
        txtdesc.Text = "";
        txtsalary.Text = "";
        txtskill.Text = "";
        txt_code.Text = "";
        txt_exp.Text = "";
        txt_addvcncy.Text = "";

    }
}