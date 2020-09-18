<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <label>Name : </label>
            <asp:TextBox ID="Txt_Name" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <label>Age : </label>
            <asp:TextBox ID="Txt_Age" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <label>Mobile : </label>
            <asp:TextBox ID="Txt_Mobile" runat="server"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="Btn_Add" runat="server" Text="Add Data" OnClick="Btn_Add_Click"/>
        </div>
        <br />
        <asp:GridView ID="gv_person" runat="server" DataKeyNames="id" AutoGenerateColumns="false" OnRowDeleting="gv_person_RowDeleting" AllowPaging="True" PageSize="5" OnPageIndexChanging="gv_person_PageIndexChanging">
            <Columns>
                <asp:BoundField AccessibleHeaderText="ID" DataField="id" HeaderText="ID" />
                <asp:BoundField AccessibleHeaderText="Name" DataField="name" HeaderText="Name" />
                <asp:BoundField AccessibleHeaderText="Age" DataField="age" HeaderText="Age" />
                <asp:BoundField AccessibleHeaderText="Mobile" DataField="mobile" HeaderText="Mobile" />
                <asp:CommandField ButtonType="Link" ShowDeleteButton="true" ShowEditButton="false"/>
            </Columns>
        </asp:GridView>
        <br /> 
    </div>
    </form>
</body>
</html>
