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
        DataTable dt = db.selectquery("select * from career c join interviewscheduling s on c.cid=s.cid");

        gridview1.DataSource = dt;
        gridview1.DataBind();
    }

   

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        foreach (GridViewRow row in gridview1.Rows)
        {
            if ((row.FindControl("CheckBox1") as CheckBox).Checked)
            {
                HiddenField hdnid = (HiddenField)row.FindControl("hdnId");
                int c = Convert.ToInt32(hdnid.Value);

                DataTable ap = db.selectquery("Select * from joindate where skrid='" + c + "' ");
                if (ap.Rows.Count > 0)
                {
                    Label1.Text = "Already Sended !!!";
                }
                else
                {
                    Label1.Text = "";
                    string name = row.Cells[2].Text;
                    string toAddress = row.Cells[4].Text;


                    var fromAddress = "mysoft.123@gmail.com";

                    const string fromPassword = "mysoft123";

                    string subject = "Offer Letter";

                    string body = "Hi,: " + name + "\n";

                    body += "\n";

                    body += "Congratulations and welcome you to Our team .You have successfully completed our initial process and we are pleased to make you an offer." + "\n";
                    body += "Listed items should be submitted on joining:" + "\n";

                    body += "All educational certificates copy,Address proof copy,2 Passport size photos,Last employer's experience certificate,Last employer's salary certificate & salary slip " + "\n";
                    body += "we will need your  confirmation immediately.Kindly send us a mail with acceptance & confirm joining on '" + txt_date.Text.ToString() + "' We look forward to you being a part of our team." + "\n";

                    body += "\n";
                    body += "HR Manager" + "\n";
                    body += "Contact:80111802777" + "\n";


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

                    int a = db.exequery("insert into  joindate (skrid,date)values('" + c + "', '" + txt_date.Text + "')");

                }


            }
        }



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;

    }
}