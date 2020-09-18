using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["msg"] != null)
        {
            lbl_msg.Text = Request.QueryString["msg"];
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        string uname = txt_uname.Text;
        string pass = txt_pass.Text;
        if(uname == "smit" && pass == "123")
        {
            Session["user"] = "smit";
            lbl_msg.Text = "";
            Response.Redirect("Default.aspx?msg=" + HttpUtility.UrlEncode("Login Successfully"));
        }
        else
        {
            if(uname != "smit")
            {
                Response.Redirect("Default.aspx?msg=" + HttpUtility.UrlEncode("Invalid Username"));
            }
            else
            {
                Response.Redirect("Default.aspx?msg=" + HttpUtility.UrlEncode("Invalid Password"));
            }
        }
    }
    protected void btn_logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
}