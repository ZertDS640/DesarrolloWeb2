using EntidadesE;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;


namespace AcessoDatosD
{
    public class ProductosD
    {


        public bool? InsertaProductosD(String @strNombreProducto, decimal @decPrecio, int @intCategoria)
        {
            bool? respuesta = false;
            try
            {
                using (EJEMPLO1Entities context = new AcessoDatosD.EJEMPLO1Entities())
                {
                    var sp = context.sp_inserta_productos(strNombreProducto, @decPrecio, @intCategoria);
                    foreach (var item in sp)
                    {
                        respuesta = item.Respuesta;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return respuesta;
        }

        public bool? ActualizarProducto(String @strNombreProducto, Decimal @decPrecio, int @intCategoria)
        {
            bool? respuesta = false;
            try
            {
                using (EJEMPLO1Entities Context = new AcessoDatosD.EJEMPLO1Entities())
                {

                    var sp = Context.sp_actualizar_producto(strNombreProducto, decPrecio, intCategoria);
                    foreach (var item in sp)
                    {
                        respuesta = item.Value;
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
            return respuesta;

        }

        public List<ListadoProductosE> ListadoProductos(string @strFiltro)
        {
            List<ListadoProductosE> Doc = new List<ListadoProductosE>();
            using (EJEMPLO1Entities context = new AcessoDatosD.EJEMPLO1Entities())
            {
                var sp = context.sp_buscar_productos(strFiltro);
                foreach (var item in sp)
                {
                    ListadoProductosE doc = new ListadoProductosE();
                    
                    doc.NombreProducto = item.NombreProducto;
                    doc.Precio = (decimal)item.Precio;
                    doc.Categoria = (int)item.Categoria;
                    doc.CodigoProducto = (int)item.CodigoProducto;

                    Doc.Add(doc);
                }
            }
            return Doc;
        }
    }
}



