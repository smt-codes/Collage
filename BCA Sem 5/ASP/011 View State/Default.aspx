<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" EnableViewState="false" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br /><br />
        View State Example
        <br /><br />
        <asp:Label ID="lbl_count" runat="server"></asp:Label>
        <br /><br />
        <asp:Button ID="btn_add" runat="server" Text="Add Count" OnClick="btn_add_Click"/>
    </div>
    </form>
</body>
</html>
