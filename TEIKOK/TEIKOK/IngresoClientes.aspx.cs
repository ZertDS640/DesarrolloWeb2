﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NegocioN;

namespace TEIKOK
{
    public partial class IngresoClientes : System.Web.UI.Page
    {
        ClientesN clientesN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarClientes("%");
            }
        }



        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            clientesN = new ClientesN();
            bool? respuesta = clientesN.InsertaClienteD(txtCedula.Text, txtNombre.Text, txtApellido.Text, txtTelefono.Text,
                txtDireccion.Text, txtEmail.Text);

            if (respuesta == true)
            {

                lblRegistro.Text = "Se registro Correctamente";
                Limpiar();
            }
            else
            {

                lblRegistro.Text = "Ocurrio un error";
                Limpiar();
            }
        }
        public void Limpiar()
        {
            txtCedula.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtEmail.Text = string.Empty;
        }

        public void CargarClientes(string strFiltro)
        {
            clientesN = new ClientesN();
            var items = clientesN.listadoClientes(strFiltro);
            dtgListadoClientes.DataSource = items;
            dtgListadoClientes.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarClientes(txtFiltro.Text);


            }
            else
            {

            }
        }



        protected void dtgListadoClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlAgregarCliente.Visible = true;
            txtCedula.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[1].Text);
            txtNombre.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[2].Text);
            txtApellido.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[3].Text);
            txtTelefono.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[4].Text);
            txtDireccion.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[5].Text);
            txtEmail.Text = HttpUtility.HtmlDecode(dtgListadoClientes.SelectedRow.Cells[6].Text);
        }

        protected void btnApa_Click(object sender, EventArgs e)
        {
            pnlAgregarCliente.Visible = true;
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            clientesN = new ClientesN();

            bool? respuesta = clientesN.ActualizarCliente(txtCedula.Text, txtNombre.Text, txtApellido.Text, txtTelefono.Text,
                txtDireccion.Text, txtEmail.Text);

            if (respuesta == true)
            {

                lblRegistro.Text = "Se Actualizo Correctamente";
                lblRegistro.Visible = true;
                Limpiar();
                CargarClientes("%");
            }
            else
            {

                lblRegistro.Text = "Hubo un error";
                lblRegistro.Visible = true;
                Limpiar();
                CargarClientes("%");
            }
        }

        protected void btnBorrar_Click(object sender, EventArgs e)
        {
            clientesN = new ClientesN();

            bool? respuesta = clientesN.EliminarClientes(txtCedula.Text.Trim());

            if (respuesta == true)
            {

                lblRegistro.Text = "El Registro se Elimino Correctamente";
                lblRegistro.Visible = true;
                pnlAgregarCliente.Visible = false;
                Limpiar();
                CargarClientes("%");
            }
            else
            {

                lblRegistro.Text = "Hubo un error";
                lblRegistro.Visible = true;
                Limpiar();
                CargarClientes("%");
            }
        }
    }

}