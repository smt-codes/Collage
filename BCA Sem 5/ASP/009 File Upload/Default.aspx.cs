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
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile){
            Response.Write("<h2> File Details</h2>");
            Response.Write("<br> File Name : " + FileUpload1.FileName);
            Response.Write("<br> Has File : " + FileUpload1.HasFile);
            Response.Write("<br> Length : " + FileUpload1.FileBytes.Length);
            Response.Write("<br> Read Only : " + FileUpload1.FileBytes.IsReadOnly);

            HttpPostedFile pfile = FileUpload1.PostedFile;
            Response.Write("<br> Posted File Name : " + pfile.FileName);
            Response.Write("<br> Posted File Content Type : " + pfile.ContentType);
            Response.Write("<br> Posted File Content Lnegth : " + pfile.ContentLength);

            string PhysicalPath = System.AppDomain.CurrentDomain.BaseDirectory;
            string FileName = System.IO.Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(PhysicalPath + "/uploads/" + FileName);
            Response.Write("<h2>File " + FileName + " Uploaded</h2>");
        }
        else
        {
            Response.Write("<h2>No File Uploaded</h2>");
        }
    }
}