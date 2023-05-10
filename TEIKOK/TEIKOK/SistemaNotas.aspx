<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SistemaNotas.aspx.cs" Inherits="TEIKOK.SistemaNotas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sistema de notas ITQ</title>

</head>
<body style="width: 340px">
    
    <form id="form1" runat="server">
        <asp:Panel ID="PlnNotas" runat="server" HorizontalAlign="Center" Width="100%" Visible="false">
        
        <div style="border-style: solid; border-width: thin; padding: 10px; margin: 10px; width: 100%; text-align: center; background-color:lightcyan; height: 620px;">
            <br />
        <center>
            <asp:Label ID="TituloITQ" runat="server" Text="Sistema de notas ITQ" BackColor="#0099FF" text-align="center" Font-Size="Larger" ForeColor="White"></asp:Label></center>

        <br />
        <br />

        <asp:Label ID="P1" runat="server" Text="Primer Parcial" text-align="center" ForeColor="blue"></asp:Label>
        <br />
        <br />
        <asp:Label ID="AA1" runat="server" Text="Aprendizaje Autonomo" ForeColor="#0000CC">
        </asp:Label>
        &nbsp  
        <asp:TextBox ID="Nt1" runat="server" OnTextChanged="N1" BorderColor="#3366FF"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Exa1" runat="server" Text="Examen" ForeColor="#0000CC"></asp:Label>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
        <asp:TextBox ID="Ex1" runat="server" BorderColor="#33CCFF" OnTextChanged="E1"></asp:TextBox>
        <br />
            <asp:Label ID="ResultadoP1" runat="server" Text="" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="P2" runat="server" Text="Segundo Parcial" text-align="center" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <asp:Label ID="AA2" runat="server" Text="Aprendizaje Autonomo" ForeColor="#0000CC"></asp:Label>
        &nbsp 
    <asp:TextBox ID="Nt2" runat="server" BorderColor="#0099FF" OnTextChanged="N2"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Exa2" runat="server" Text="Examen" ForeColor="Blue"></asp:Label>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
    <asp:TextBox ID="Ex2" runat="server" BorderColor="#3399FF" OnTextChanged="E2"></asp:TextBox>
        <br />
            <asp:Label ID="ResultadoP2" runat="server" Text="" ></asp:Label>
        <br />
        <br />
        <asp:Label ID="P3" runat="server" Text="Tercer Parcial" text-align="center" BorderColor="#339933" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <asp:Label ID="AA3" runat="server" Text="Aprendizaje Autonomo" ForeColor="blue"></asp:Label>
        &nbsp 
    <asp:TextBox ID="Nt3" runat="server" BorderColor="#0099FF" OnTextChanged="N3" ></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Exa3" runat="server" Text="Examen" ForeColor="blue"></asp:Label>
        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  
    <asp:TextBox ID="Ex3" runat="server" BorderColor="Aqua" OnTextChanged="E3"></asp:TextBox>
        <br />
            <asp:Label ID="ResultadoP3" runat="server" Text="" ></asp:Label>
        <br />
        <br />


        <asp:Button ID="Calcular" runat="server" Text="Calcular" OnClick="Calcular_Click" BackColor="#0066FF" BorderStyle="Inset" ForeColor="White"/>
        <br /><br />
        <div aria-checked="undefined">
    <asp:Label ID="Resultado" runat="server" Text=""></asp:Label>
        </div>
    <asp:Label ID="Error" runat="server" Text="" Visible="false"></asp:Label>
        </div>
        </asp:Panel>
        <asp:Button ID="BtnOC" runat="server" Text="Panel Calculadora" OnClick="JpClick"/>
        <br />
        <asp:Panel ID="PlnMeses" runat="server" HorizontalAlign="Center" Width="50%" Visible="true" >
            
            <asp:DropDownList ID="ddlMeses" runat="server" AutoPostBack="true" OnselectedIndexChanged="ddlMeses_selectedIndexChanged">
                <asp:ListItem  Text="Enero" value="1"></asp:ListItem>
                <asp:ListItem  Text="Febrero" value="2"></asp:ListItem>
                <asp:ListItem  Text="Marzo" value="3"></asp:ListItem>
                <asp:ListItem  Text="Abril" value="4"></asp:ListItem>
                <asp:ListItem  Text="Mayo" value="5"></asp:ListItem>
                <asp:ListItem  Text="Junio" value="6"></asp:ListItem>
                <asp:ListItem  Text="Julio" value="7"></asp:ListItem>
                <asp:ListItem  Text="Agosto" value="8"></asp:ListItem>
                <asp:ListItem  Text="Septiembre" value="9"></asp:ListItem>
                <asp:ListItem  Text="Octubre" value="10"></asp:ListItem>
                <asp:ListItem  Text="Noviembre" value="11"></asp:ListItem>
                <asp:ListItem  Text="Diciembre" value="12"></asp:ListItem>

            </asp:DropDownList>
            
         <asp:TextBox ID="txtMes" runat="server"></asp:TextBox>
        </asp:Panel>

    </form>
</body>

</html>
