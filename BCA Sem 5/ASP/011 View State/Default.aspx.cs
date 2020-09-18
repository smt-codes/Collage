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
        Response.Write("View State Status : " + Page.EnableViewState.ToString());
        lbl_count.Text = "Page Count : " + counter.ToString();
    }
    public int counter
    {
        get
        {
            if(ViewState["count"] != null)
            {
                return ((int)ViewState["count"]);
            }
            else
            {
                return 0;
            }
        }
        set
        {
            ViewState["count"] = value;
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
        counter++;
        lbl_count.Text = "Page Count : " + counter.ToString();
    }
}