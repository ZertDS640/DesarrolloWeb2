using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace AcessoDatosD
{
    public class ClientesD
    {
    

    public bool? InsertaClienteD(String @strCedula, String @strNombre, String @strApellido, String @strTelefono,
        String @strDireccion, String @strEmail)
        {
            bool? respuesta = false;
            try
            {
                using (EJEMPLO1Entities context = new AcessoDatosD.EJEMPLO1Entities())
                {
                    var sp = context.sp_insertar_clientes(strCedula, strNombre, strApellido,
                                                         strTelefono, strDireccion, strEmail);
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


