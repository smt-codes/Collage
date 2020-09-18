<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#4cff00; position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); padding:50px;">
        <table>
            <tr>
                <td><label>Enter Only Number : </label></td>
                <td><asp:TextBox ID="txt_number" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_number" ErrorMessage="Please Enter Valid Number" ValidationExpression="[0-9]+" Height="30px" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><label>Enter Username (Alpha Numeric) : </label></td>
                <td><asp:TextBox ID="txt_username" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Only Alphabest and Numbers"  ValidationExpression="[0-9a-zA-Z]+" ControlToValidate="txt_username" Height="30px" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td><label>Enter Name (Alphabets and Space) : </label></td>
                <td><asp:TextBox ID="txt_name" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator"  ValidationExpression="[a-zA-Z\s]+" ControlToValidate="txt_name" Height="30px" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td><label>Enter E-mail : </label></td>
                <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txt_email" ValidationExpression="[A-Za-z0-9\.]+\@[A-Za-z0-9\-]+\.[A-Za-z\.]{2,}" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>


        </table>
        <br />
    </div>
    </form>
</body>
</html>
