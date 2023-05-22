using NegocioN;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TEIKOK
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProductosN ProductosN;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        string script;

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            ProductosN = new ProductosN();
            bool? respuesta = ProductosN.InsertaProductosD(txtNombreProducto.Text, 
                Convert.ToDecimal(txtPrecio.Text) ,
                Convert.ToInt16(ddlCategoria.SelectedValue) );

            if (respuesta == true)
            {

                script = "alert('El Producto se a registrado correctamente.');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

                Limpiar();

            }
            else
            {

                script = "alert('El Producto tuvo un error y no se pudo registrar.');";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);

                Limpiar();

            }
        }

        public void Limpiar()
        {
            txtNombreProducto.Text= string.Empty;
            txtPrecio.Text= string.Empty;
            ddlCategoria.SelectedIndex = 1;
        }

        public void CargarProductos(string strFiltro)
        {
            ProductosN = new ProductosN();
            var items = ProductosN.listadoProductos(strFiltro);
            dtgListadoProductos.DataSource = items;
            dtgListadoProductos.DataBind();
        }

        protected void btnBuscarProductos(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtFiltro.Text))
            {
                CargarProductos(txtFiltro.Text);


            }
            else
            {

            }
        }
        protected void btnApa_Click(object sender, EventArgs e)
        {
            pnlAgregarProducto.Visible = true;
        }

        protected void dtgListadoProductos_SelectedIndexChanged(object sender, EventArgs e)
        {
            pnlAgregarProducto.Visible = true;
            txtNombreProducto.Text = HttpUtility.HtmlDecode(dtgListadoProductos.SelectedRow.Cells[1].Text);
            txtPrecio.Text = HttpUtility.HtmlDecode(dtgListadoProductos.SelectedRow.Cells[2].Text);
            ddlCategoria.Text = HttpUtility.HtmlDecode(dtgListadoProductos.SelectedRow.Cells[3].Text);
            
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            ProductosN = new ProductosN();
            bool? respuesta = ProductosN.ActualizarProducto(txtNombreProducto.Text, 
            Convert.ToDecimal(txtPrecio.Text), Convert.ToInt16(ddlCategoria.SelectedValue));
            if (respuesta == true)
            {

                lblRegistro.Text = "Se actualizo  correctamente";
                lblRegistro.Visible = true;
                pnlListadoProductos.Visible = false;
                Limpiar();
                CargarProductos("%");
            }
            else
            {
                lblRegistro.Text = "No se Actualizo el cliente";
                lblRegistro.Visible = true;
            }
        }
    }
}