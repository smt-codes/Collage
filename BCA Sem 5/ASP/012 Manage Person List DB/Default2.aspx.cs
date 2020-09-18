using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Get_Data();
        }
    }

    public void Get_Data()
    {
        String strcon = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        string ssql = "select * from person";
        SqlDataAdapter da = new SqlDataAdapter(ssql, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        gv_person.DataSource = ds;
        gv_person.DataBind();
    }
    protected void gv_person_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gv_person.EditIndex = e.NewEditIndex;
        this.Get_Data();
    }
    protected void gv_person_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gv_person.EditIndex = -1;
        this.Get_Data();
    }
    protected void gv_person_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = gv_person.Rows[e.RowIndex];
        int id = Convert.ToInt32(gv_person.DataKeys[e.RowIndex].Values[0]);
        String name = (row.FindControl("txt_name") as TextBox).Text;
        String age = (row.FindControl("txt_age") as TextBox).Text;
        String mobile = (row.FindControl("txt_mobile") as TextBox).Text;
        
        String strcon = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        con.Open();

        String usql = "update person set name=@name, age=@age, mobile=@mobile where id=@id";

        SqlCommand cmd = new SqlCommand(usql, con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@age", age);
        cmd.Parameters.AddWithValue("@mobile", mobile);

        int x = cmd.ExecuteNonQuery();
        if(Convert.ToBoolean(x))
        {
            Response.Write("Data Updated");
        }
        else
        {
            Response.Write("Error");
        }
        gv_person.EditIndex = -1;
        this.Get_Data();
    }
    protected void gv_person_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        SqlConnection con = new SqlConnection(conString);
        con.Open();

        int id = Convert.ToInt32(gv_person.DataKeys[e.RowIndex].Values[0]);
        SqlCommand cmd = new SqlCommand("delete from person where id=@id", con);
        cmd.Parameters.AddWithValue("@id", id);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("Data Deleted");
        }
        else
        {
            Response.Write("Data Not Deleted");
        }
        this.Get_Data();
    }
    protected void gv_person_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_person.PageIndex = e.NewPageIndex;
        this.Get_Data();
    }
}