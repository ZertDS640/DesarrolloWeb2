﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoProducto.aspx.cs" Inherits="TEIKOK.WebForm1" %>

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
                    <br />
                    <div class="row">
                    <div class="col">
                        <asp:Button ID="BtnGuardar" runat="server" Text="Guardar Informacion" Onclick="BtnGuardar_Click"/>
                    </div>
                        </div>

                    </div>
                
                    


                </div>

            </div>
    </form>
</body>
</html>