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
        DataTable dt = db.selectquery("select * from career where cid not in(select cid from interviewscheduling)");
        //DataTable dt = db.selectquery("select * from career");

        gridview1.DataSource = dt;
        gridview1.DataBind();
    }

    protected void DownloadFile(object sender, EventArgs e)
    {

        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in gridview1.Rows)
        {
            if ((row.FindControl("CheckBox1") as CheckBox).Checked)
            {
                HiddenField hdnid =(HiddenField)row.FindControl("hdnId");
                int c = Convert.ToInt32(hdnid.Value);
               
                string name = row.Cells[2].Text;
                string toAddress = row.Cells[4].Text;
                

                var fromAddress = "mysoft.123@gmail.com";             

                const string fromPassword = "mysoft123";             

                string subject = "Interview Call Letter";

                string body = "Hi,: " + name + "\n";

                body += "\n";

                body += "Your  interview has been scheduled on '"+txt_date.Text.ToString()+"' at '"+txt_fromtime.Text+"' "+ "\n" ;
                body += "to '" + txt_totime.Text + "' Please be available at the same " + "\n";              

                var smtp = new System.Net.Mail.SmtpClient();

                {

                    smtp.Host = "smtp.gmail.com";

                    smtp.Port = 587;

                    smtp.EnableSsl = true;

                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

                    smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);

                    smtp.Timeout = 20000;

                }

                // Passing values to smtp object

                smtp.Send(fromAddress, toAddress, subject, body);

                int a = db.exequery("insert into interviewscheduling(cid,date,fromtime,totime,status)values('" + c+ "', '" + txt_date.Text + "','" + txt_fromtime.Text + "','" + txt_totime.Text + "','scheduled')");
               // int b = db.exequery("delete from career where cid='" + c + "'");
            }
        }



        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}