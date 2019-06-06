using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RequestFile : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GridView1.DataSource = db.selectquery("select u.upid,u.filename,u.date,r.name,r.email from upload u join registration r on u.eid=r.regid where u.status='request'");
            GridView1.DataBind();
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    { 
        DataTable dt = db.selectquery("select * from upload u join registration r on u.eid=r.regid where  u.upid='" + e.CommandArgument + "'");
        if (dt.Rows.Count > 0)
        {
            string Email= dt.Rows[0]["email"].ToString();
            string key = dt.Rows[0]["cipher"].ToString();
            int a = db.exequery("update upload set status='Send' where upid='" + e.CommandArgument + "'");
            
        SmtpClient smtp = new SmtpClient();

        smtp.Host = "smtp.gmail.com";

        smtp.Port = 587;

        smtp.Credentials = new System.Net.NetworkCredential("mysoft.123@gmail.com", "mysoft123");

        smtp.EnableSsl = true;

        MailMessage msg = new MailMessage();

        msg.Subject = "permitted";

            msg.Body = "Dear your permission to access is granted. "
                +"Your Secrute Key :" + key + ""; 

        string toaddress = Email;

        msg.To.Add(toaddress);

        string fromaddress = "mysoft.123@gmail.com";

        msg.From = new MailAddress(fromaddress);

        try

        {

            smtp.Send(msg);

        }

        catch

        {

            throw;

        }


    }


     
    }
}
