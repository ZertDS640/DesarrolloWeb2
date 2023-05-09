<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="TEIKOK.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" autopostback="true" Text="Button1" onclick="Button1_Click1"></asp:Button> 
            <asp:BulletedList ID="BulletedList1" runat="server"></asp:BulletedList>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="Button1_Click"></asp:CheckBoxList>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="true" />
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
        </div>
    </form>
</body>
</html>
