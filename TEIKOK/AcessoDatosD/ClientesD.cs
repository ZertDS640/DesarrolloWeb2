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

        public List<ListadoClientesE> ListadoClientes(string @strFiltro)
        {

            List<ListadoClientesE> Doc = new List<ListadoClientesE>();
            using (EJEMPLO1Entities context = new AcessoDatosD.EJEMPLO1Entities())
            {
                var sp = context.sp_buscar_cliente(@strFiltro);
                foreach (var item in sp)
                {
                    ListadoClientesE doc = new ListadoClientesE();
                    doc.CI = item.Cl;
                    doc.Nombre = item.Nombre;
                    doc.Apellido = item.Apellido;
                    doc.Telefono = item.Telefono;
                    doc.Direccion = item.Direccion;
                    doc.Correo = item.Correo;

                    Doc.Add(doc);
                }
            }
            return Doc;
        }

    }

    

}


