﻿using AcessoDatosD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NegocioN
{
    public class ClientesN
    {

        ClientesD ClientesD = new ClientesD();

        public bool? InsertaClienteD(String @strCedula, String @strNombre, String @strApellido, String @strTelefono, String @strDireccion, String @strEmail)
        {
            ClientesD = new ClientesD();


            return ClientesD.InsertaClienteD(strCedula, strNombre, strApellido, strTelefono, @strDireccion, strEmail);


        }
    }
}
