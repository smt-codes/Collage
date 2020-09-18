<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gv_person" runat="server" AutoGenerateColumns="false"  DataKeyNames="id" AllowPaging="true" PageSize="2" OnRowEditing="gv_person_RowEditing" OnRowCancelingEdit="gv_person_RowCancelingEdit" Width="500" OnRowDeleting="gv_person_RowDeleting" OnRowUpdating="gv_person_RowUpdating" OnPageIndexChanging="gv_person_PageIndexChanging">
            <Columns>
                 <asp:TemplateField HeaderText="id">
                       <ItemTemplate>
                           <asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id")%>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="txt_id" runat="server" Text='<%#Eval("id")%>'></asp:TextBox>
                       </EditItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="name">
                       <ItemTemplate>
                           <asp:Label ID="lbl_name" runat="server" Text='<%#Eval("name")%>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="txt_name" runat="server" Text='<%#Eval("name")%>'></asp:TextBox>
                       </EditItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="age">
                       <ItemTemplate>
                           <asp:Label ID="lbl_age" runat="server" Text='<%#Eval("age")%>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="txt_age" runat="server" Text='<%#Eval("age")%>'></asp:TextBox>
                       </EditItemTemplate>
                 </asp:TemplateField>
                <asp:TemplateField HeaderText="mobile">
                       <ItemTemplate>
                           <asp:Label ID="lbl_mobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label>
                       </ItemTemplate>
                       <EditItemTemplate>
                           <asp:TextBox ID="txt_mobile" runat="server" Text='<%# Eval("mobile") %>'></asp:TextBox>
                       </EditItemTemplate>
                 </asp:TemplateField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="true" ShowEditButton="true"/>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
