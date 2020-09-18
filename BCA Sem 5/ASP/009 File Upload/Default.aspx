<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br /><br />
        <div>
            <label>Select File</label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>
        <br /><br />
        <div>
            <asp:Button ID="btn_upload" runat="server" Text="Upload My File" OnClick="btn_upload_Click" />
        </div>
    </div>
    </form>
</body>
</html>
