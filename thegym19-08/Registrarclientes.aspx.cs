using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;

namespace thegym19_08
{
    public partial class Registrarclientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblReg.Text = ("");

        }

        protected void btnaceptar0_Click(object sender, EventArgs e)
        {


            //Configuracion para registrar cliente en la base de datos
            //Creo el objeto k
            TheGym k = new TheGym
            {
                NombreCliente = tbnombre0.Text,
                ApellidoCliente = tbapellido0.Text,
                EmailCliente = tbemail1.Text,
                FechaCliente = tbfechanacimiento1.Text,
                TelefonoCliente = tbtelefono1.Text,
                DomicilioCliente = tbdomicilio.Text,
                DNICliente = tbdni0.Text
            };

            try
            {
                k.AddNewCliente();
                LblReg.Text = ("Cliente registrado con éxito.");

            }
            catch
            {

            }
            tbnombre0.Text = string.Empty;
            tbapellido0.Text = string.Empty;
            tbfechanacimiento1.Text = string.Empty;
            tbemail1.Text = string.Empty;
            tbtelefono1.Text = string.Empty;
            tbdomicilio.Text = string.Empty;
            tbdni0.Text = string.Empty;
        }

        protected void btncancelar_Click1(object sender, EventArgs e)
        {
            tbnombre0.Text = ("");
            tbapellido0.Text = ("");
            tbdni0.Text = ("");
            tbemail1.Text = ("");
            tbfechanacimiento1.Text = ("");
            tbtelefono1.Text = ("");
        }
    }
}