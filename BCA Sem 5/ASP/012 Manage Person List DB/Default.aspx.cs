using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Get_Data();
        }
    }
    public void Get_Data()
    {
        string conString = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
        SqlConnection con = new SqlConnection(conString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from person", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        gv_person.DataSource = ds;
        gv_person.DataBind();
    }
    protected void Btn_Add_Click(object sender, EventArgs e)
    {
        string name = Txt_Name.Text;
        string age = Txt_Age.Text;
        string mobile = Txt_Mobile.Text;
        if(name != "" && age != "" && mobile != "")
        {
            string conString = ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString;
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT MAX(id) FROM person", con);
            SqlDataReader dr = cmd1.ExecuteReader();
            int id = 1;
            if(dr.Read())
            {
                if(dr[0].ToString() != "")
                {
                    id = Convert.ToInt32(dr[0].ToString());
                    id += 1;
                }
            }
            dr.Close();
            SqlCommand cmd = new SqlCommand("INSERT INTO person VALUES('" + id.ToString() + "', '" + name + "', '" + age + "', '" + mobile + "')", con);
            int res = cmd.ExecuteNonQuery();
            if(res > 0)
            {
                Response.Write("Data Inserted");
                Txt_Name.Text = "";
                Txt_Age.Text = "";
                Txt_Mobile.Text = "";
            }
            else
            {
                Response.Write("Data Not Inserted");
            }
            Get_Data();
        }
        else
        {
            Response.Write("No Data Available");
        }
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
        if(a > 0)
        {
            Response.Write("Data Deleted");
        }
        else
        {
            Response.Write("Data Not Deleted");
        }
        Get_Data();
    }
    protected void gv_person_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv_person.PageIndex = e.NewPageIndex;
        this.Get_Data();
    }


}