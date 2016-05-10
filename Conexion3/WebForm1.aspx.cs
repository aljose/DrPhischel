using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conexion3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceWeb.WebServicePruebaSoapClient servidor = new ServiceWeb.WebServicePruebaSoapClient();

            string error = "";

            bool conectado = servidor.openConexion(ref error);

            if (conectado == true)
            {
                lblerror.Text = "Conexion realizada exitosamenteyyyyy";
               // lblerror.Text = servidor.insertarDrugstore("Famatica", "846541561");
            } else
            {
                lblerror.Text = error;
            }

            servidor.closeConexion(ref error);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("WebForm2.aspx");

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}