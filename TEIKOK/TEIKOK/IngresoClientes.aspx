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
            <h1>Clientes</h1>
            <asp:Panel ID="pnlListadoClientes" runat="server" Width="100%" >
                        <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar Clientes" OnClick="btnBuscar_Click" BorderColor="#009900" ForeColor="Black" BackColor="#99FF66" />
                
                <asp:GridView ID="dtgListadoClientes" runat="server" AutoGenerateColumns="false"
                    AutoGenerateSelectButton="true" Width="100%" OnSelectedIndexChanged="dtgListadoClientes_SelectedIndexChanged" HeaderStyle-Font-Bold="false" BackColor="#ffcccc">
                            
                            <Columns>
                                <asp:BoundField DataField="CI" HeaderText="Cédula"/>
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre"/>
                                <asp:BoundField DataField="Apellido" HeaderText="Apellido"/>
                                <asp:BoundField DataField="Direccion" HeaderText="Dirección"/>
                                <asp:BoundField DataField="Telefono" HeaderText="Teléfono"/>
                                <asp:BoundField DataField="Correo" HeaderText="Correo"/>
                            </Columns>

                        </asp:GridView>

                
                    </asp:Panel>
                <br />
                    <div>
                    <asp:Button ID="btnApa" runat="server" Text="Agregar Cliente" OnClick="btnApa_Click" BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                </div>

        <asp:Panel ID="pnlAgregarCliente" runat="server" Width="100%" Visible="false" > 
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
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar Informacion" Onclick="BtnGuardar_Click"  BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                     &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar Informacion" Onclick="BtnUpdate_Click"  BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                    &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="btnBorrar" runat="server" Text="Borrar Informacion" Onclick="BtnGuardar_Click"  BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                    </div>

                    
                    



                    </div>
                
                    


                </div>
            </asp:Panel>
            </div>

        
    </form>
</body>
</html>
