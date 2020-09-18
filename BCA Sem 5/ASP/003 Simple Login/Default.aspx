<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#4cff00; position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); padding:50px;">
        <div>
            <label>Username : </label>
            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <label>Password : </label>
            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" />
        </div>
    </div>
    </form>
</body>
</html>
