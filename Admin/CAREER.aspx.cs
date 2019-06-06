using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showroom_CAREER : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string Cv;
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Cv/" + str));
            Cv = "~/Cv/" + str.ToString();
            int a = db.exequery("insert into career(referedby,name,dob,ph,email,address,lastemployer,currentctc,expectedctc,uploadcv) values('" + txt_recfer.Text + "','" + txt_name.Text + "','" + txt_dob.Text + "','" + txt_number.Text + "','" + txt_email.Text + "','" + txt_adrs.Text + "','" + txt_lastemployer.Text + "','" + txt_ctc.Text + "','" + txt_expctc.Text + "','" + Cv + "')");
            if(a>0)
            {
                Label1.Text = "Thank you for sending your application.We will contact you if we find you suited for a position at our team.";
            }

        }
    }
}