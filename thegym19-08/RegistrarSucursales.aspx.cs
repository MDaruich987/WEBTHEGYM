using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;

namespace thegym19_08
{
    public partial class RegistrarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblbienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
                string usuario = Session["inicio"].ToString();
            }
            else
            {
                //df
            }

        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            //string Nombre;
            //string Direccion;
            //int Telefono;

            //Nombre = tbnombre.Text;
            //Direccion = tbdireccion.Text;
            //Telefono = Convert.ToInt16(tbtelefono.Text);

            TheGym k = new TheGym
            {
                NombreSucursal = tbnombre.Text,
                DireccionSucursal = tbdireccion.Text,
                TelefonoSucursal = Convert.ToInt64(tbtelefono.Text)
            };

            k.AddNewSucursal();


            tbnombre.Text = string.Empty;
            tbdireccion.Text = string.Empty;
            tbtelefono.Text = string.Empty;
        }
    }
}