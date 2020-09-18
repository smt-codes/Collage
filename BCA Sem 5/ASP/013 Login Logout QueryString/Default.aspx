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
            <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
        </div>
        <% if (Session["user"] != null ){%>
            <div>
                <h1>Welcome <%=Session["user"] %></h1>
            </div>
            <br />
            <div>
                <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click"/>
            </div>
        <% }else{ %>
            <div>
                <label>Username : </label>
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <label>Password : </label>
                <asp:TextBox ID="txt_pass" runat="server"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click"/>
            </div>
        <% }%>
    </div>
    </form>
</body>
</html>
