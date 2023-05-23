<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoProducto.aspx.cs" Inherits="TEIKOK.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingreso Productos</title>

    <script type="text/javascript">

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keycode;
            if (charCode != 44 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            else {
                return true;
            }
        }
    
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; margin-left:auto; margin-right:auto; text-align:center; padding: 3em">
            <h1>Productos</h1>
            <asp:Panel ID="pnlListadoProductos" runat="server" Width="100%">
                        <asp:TextBox ID="txtFiltro" runat="server"></asp:TextBox>
<asp:Button ID="btnBuscar" runat="server" Text="Buscar Productos" OnClick="btnBuscarProductos" BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                        <asp:GridView ID="dtgListadoProductos" runat="server" AutoGenerateColumns="false" 
                            AutoGenerateSelectButton="true" Width="100%" OnSelectedIndexChanged="dtgListadoProductos_SelectedIndexChanged" HeaderStyle-Font-Bold="false" BackColor="#ffcccc">
                            
                            <Columns>
                                <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto"/>
                                <asp:BoundField DataField="Precio" HeaderText="Precio"/>
                                <asp:BoundField DataField="Categoria" HeaderText="Categoria"/>
                                <asp:BoundField DataField="CodigoProducto" HeaderText="Código Producto"/>
                                
                            </Columns>

                        </asp:GridView>

                    </asp:Panel>
            <br />
            <div>
                <asp:Button ID="btnApa" runat="server" Text="Agregar Producto" OnClick="btnApa_Click" BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
            </div>

            <asp:Panel ID="pnlAgregarProducto" runat="server" Width="100%" Visible="false" > 
            <h1>Ingrese Productos</h1>
            <div class="container">
                <div class="room">
                    <div class="row">
                    <div class="col">
                        <asp:Label ID="lblNombreProducto" runat="server" Text="Ingrese el Nombre del Producto"></asp:Label>
                        &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtNombreProducto" runat="server"></asp:TextBox>
                    </div>
                        </div>
                    <br />
                    <div class="row">
                    <div class="col">
                        <asp:Label ID="lblPrecio" runat="server" Text="Ingrese el Precio del Producto"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:TextBox ID="txtPrecio" runat="server" onkeypress="return isNumberKey(event)"></asp:TextBox>
                    </div>
                        </div>
                    <br />
                    <div class="row">
                    <div class="col">
                        <asp:Label ID="lblCategoria" runat="server" Text="Ingrese la Categoria"></asp:Label>
                        &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp
                         &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                        <asp:DropDownList ID="ddlCategoria" runat="server" >
                            <asp:ListItem  Text="Camisa" value="1"></asp:ListItem>
                            <asp:ListItem  Text="Zapatos" value="2"></asp:ListItem>
                            <asp:ListItem  Text="Pantalones" value="3"></asp:ListItem>
                            <asp:ListItem  Text="Gorra" value="4"></asp:ListItem>
                            <asp:ListItem  Text="Chompas" value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                        </div>
                   <br />
                    
                    <div class="col">
                        <asp:Label ID="lblRegistro" runat="server" Text="" Visible="true"></asp:Label>
                    </div>
                    
                    <br />
                    <div class="row">
                    <div class="col">
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar Informacion" Onclick="BtnGuardar_Click" BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                        &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar Informacion" Onclick="BtnUpdate_Click"  BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                        &nbsp &nbsp &nbsp &nbsp
                        <asp:Button ID="btnBorrar" runat="server" Text="Borrar Informacion" Onclick="BtnGuardar_Click"  BorderColor="#009900" ForeColor="Black" BackColor="#99FF66"/>
                    </div>
                        </div>

                </div>
                </div>
                </asp:Panel>

            </div>
    </form>
</body>
</html>
