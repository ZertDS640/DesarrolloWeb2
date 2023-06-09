﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TEIKOK
{
    public partial class SistemaNotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }

        

        protected void N1(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Nt1.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Nt1.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal\";\r\n            }";
            }
        }

        protected void E1(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Ex1.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Ex1.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal\";\r\n            }";
            }
        }

        protected void N2(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Nt2.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Nt2.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal";
            }
        }

        protected void E2(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Ex2.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Ex2.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal\";\r\n            }";
            }
        }

        protected void N3(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Nt3.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Nt3.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal\";\r\n            }";
            }
        }

        protected void E3(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Ex3.Text))
            {
                Error.Visible = true;
                Error.Text = "La nota es requerida";
                return;
            }
            if (ValidarNota(Convert.ToDecimal(Ex3.Text)))
            {
                Error.Visible = false;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "La nota sobrepasa el 10 por lo que el resultado se vera afectado modifique la nota para que salga correcta o sino es por que uso . en vez de , y su dispositivo lo reconoce como aparte en vez de decimal\";\r\n            }";
            }
        }



        protected void Calcular_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Nt1.Text) || string.IsNullOrWhiteSpace(Ex1.Text) || string.IsNullOrWhiteSpace(Nt2.Text) || string.IsNullOrWhiteSpace(Ex2.Text) || string.IsNullOrWhiteSpace(Nt3.Text) || string.IsNullOrWhiteSpace(Ex3.Text))
            {
                Error.Visible = true;
                Error.Text = "Todos los campos son requeridos";
                return;
            }

            decimal nota1 = Convert.ToDecimal(Nt1.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.67m + Convert.ToDecimal(Ex1.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.33m;
            decimal nota2 = Convert.ToDecimal(Nt2.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.67m + Convert.ToDecimal(Ex2.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.33m;
            decimal nota3 = Convert.ToDecimal(Nt3.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.67m + Convert.ToDecimal(Ex3.Text.Replace(",", "."), CultureInfo.InvariantCulture) * 0.33m;
            decimal notaFinal = (nota1 + nota2 + nota3) / 3;

            if (notaFinal >= 7.0m)
            {
                string p1 = $"Nota Primer Parcial {nota1.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP1.Text = p1;
                string p2 = $"Nota Segundo Parcial {nota2.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP2.Text = p2;
                string p3 = $"Nota Tercero Parcial {nota3.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP3.Text = p3;
                string mensaje = $"Tu nota final es {notaFinal.ToString("0.00", CultureInfo.InvariantCulture)} y has APROBADO.";
                Resultado.Text = mensaje;
            }
            else
            {
                string p1 = $"Nota Primer Parcial {nota1.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP1.Text = p1;
                string p2 = $"Nota Segundo Parcial {nota2.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP2.Text = p2;
                string p3 = $"Nota Tercero Parcial {nota3.ToString("0.00", CultureInfo.InvariantCulture)}";
                ResultadoP3.Text = p3;
                string mensaje = $"Tu nota final es {notaFinal.ToString("0.00", CultureInfo.InvariantCulture)} y has REPROBADO.";
                Resultado.Text = mensaje;
            }
        }


        public bool ValidarNota(decimal nota)
        {
            return (nota >= 0 && nota <= 10);
        }

        protected void JpClick(object sender, EventArgs e)
        {
           
            if(PlnNotas.Visible==true){
                PlnNotas.Visible = false;
            }else {
                PlnNotas.Visible = true;
            }
        }

        public void ddlMeses_selectedIndexChanged(object sender, EventArgs e)
        {
            txtMes.Text = "Se a escogido el mes " + ddlMeses.SelectedItem.ToString();
        }


   
            }




        }


