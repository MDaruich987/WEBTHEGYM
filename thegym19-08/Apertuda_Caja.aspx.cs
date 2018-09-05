using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");

            tbhora.Text = DateTime.Now.ToString("hh:mm tt");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //agrego a la base de datos el monto de la apertura de caja a la base de datos Pago

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            //aca configuro el usuario que está logueado
        }
    }
}