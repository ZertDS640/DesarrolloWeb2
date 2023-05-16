<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoClientes.aspx.cs" Inherits="TEIKOK.IngresoClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingreso Clientes</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; margin-left:auto; margin-right:auto; text-align: center; padding: 3em;">
            <h1>Ingrese Datos Clientes</h1>
            <div class="container">
                <div class="room">
                    <div class="col">
                        <asp:Label ID="lblCedula" runat="server" Text="Ingrese su Cedula"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblNombre" runat="server" Text="Ingrese su Nombre"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblApellido" runat="server" Text="Ingrese su Apellido"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblTelefono" runat="server" Text="Ingrese su Telefono"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblDireccion" runat="server" Text="Ingrese su Direccion"></asp:Label>
                        &nbsp  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblEmail" runat="server" Text="Ingrese su Email"></asp:Label>
                        &nbsp&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Label ID="lblRegistro" runat="server" Text="" Visible="true"></asp:Label>
                    </div>
                    <br />
                    <div class="col">
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar Informacion" Onclick="BtnGuardar_Click"/>
                    </div>

                    </div>
                
                    


                </div>

            </div>

        
    </form>
</body>
</html>
