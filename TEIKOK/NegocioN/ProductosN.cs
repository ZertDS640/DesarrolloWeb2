using AcessoDatosD;
using EntidadesE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NegocioN
{
    public class ProductosN
    {

        ProductosD ProductosD = new ProductosD();

        public bool? InsertaProductosD(String @strNombreProducto, decimal @decPrecio, int @intCategoria)
        {
            ProductosD = new ProductosD();


            return ProductosD.InsertaProductosD(strNombreProducto, decPrecio, intCategoria);


        }

        public List<ListadoProductosE> listadoProductos(string @strFiltro)
        {
            ProductosD = new ProductosD();
            return ProductosD.ListadoProductos(strFiltro);
        }

    }

    
}
