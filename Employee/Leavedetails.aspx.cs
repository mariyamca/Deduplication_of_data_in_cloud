using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Student_Leavedetails : System.Web.UI.Page
{
    DB cs = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            int uid = Convert.ToInt32(Session["regid"].ToString());
            DataTable dt = cs.selectquery("select * from Leave where uid='" + uid + "'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}