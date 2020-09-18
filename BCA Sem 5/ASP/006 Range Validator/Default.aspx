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
            <label>Enter Number(1-5) :</label>
            <asp:TextBox ID="txt_num" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please Enter Number Between 1-5" ControlToValidate="txt_num" MaximumValue="5" MinimumValue="1" Type="Integer"></asp:RangeValidator>
        </div>
        <br />
        <div>
            <label>Enter Any Date of Year 2001 :</label>
            <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Please Enter Valid Date" ControlToValidate="txt_date" MaximumValue="12-31-2001" MinimumValue="01-01-2001" Type="Date"></asp:RangeValidator>
        </div>
    </div>
    </form>
</body>
</html>
