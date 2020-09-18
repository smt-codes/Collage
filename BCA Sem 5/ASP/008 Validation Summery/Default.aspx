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
                <td><asp:TextBox ID="txt_number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Number is Required" ControlToValidate="txt_number">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label>Enter Username (Alpha Numeric) : </label></td>
                <td><asp:TextBox ID="txt_username" runat="server"> </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Username" ControlToValidate="txt_username">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td><label>Enter Name (Alphabets and Space) : </label></td>
                <td><asp:TextBox ID="txt_name" runat="server"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter You Name" ControlToValidate="txt_name">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td><label>Enter E-mail : </label></td>
                <td><asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Fill Email" ControlToValidate="txt_email">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btn" runat="server" Text="Show" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" />
                </td>
            </tr>

        </table>
        <br />
    </div>
    </form>
</body>
</html>
