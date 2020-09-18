<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br /><br />
    <div>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        <br /><br />
        <asp:Button ID="btn_select" runat="server" Text="Show Date Details" OnClick="btn_select_Click"/>
    </div>
    </form>
</body>
</html>
