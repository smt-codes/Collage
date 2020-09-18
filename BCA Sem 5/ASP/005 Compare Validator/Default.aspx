<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#4cff00; position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); padding:50px;">
        <!--
            Add in Web.config
            <appSettings>
                <add key="ValidationSettings:UnobtrusiveValidationMode" value="None"/>
            </appSettings>    
        -->
        <div>
            <label>Number 1 : </label>
            <asp:TextBox ID="txt_num_1" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <label>Number 2 : </label>
            <asp:TextBox ID="txt_num_2" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Number 1 and Number 2 Need to Be Same" ControlToCompare="txt_num_1" ControlToValidate="txt_num_2"></asp:CompareValidator>
        </div>
    </div>
    </form>
</body>
</html>
