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

    }
    protected void btn_select_Click(object sender, EventArgs e)
    {
        DateTime d = Calendar1.SelectedDate;
        Response.Write("Date : " + d.ToString());
        Response.Write("<br>Short Date : " + d.ToShortDateString() + ", Long Date : " + d.ToLongDateString());
        Response.Write("<br>Day : " + d.Day + ", Month : " + d.Month + ", Year : " + d.Year);
        Response.Write("<br>Day of Week : " + d.DayOfWeek + ", Day of Year : " + d.DayOfYear);
    }
}