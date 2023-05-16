using System;
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
    }
}