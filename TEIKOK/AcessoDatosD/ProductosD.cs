using System;
using System.Collections.Generic;
using System.Linq;
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
                    var sp = context.sp_inserta_productos(strNombreProducto, decPrecio, @intCategoria);
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
    }
}



