using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//agregar estas dos librerias para que reconozca el objeto TheGym
using thegym19_08.BusinessLayer;
using System.Data;

namespace thegym19_08
{
    public partial class Consultarclientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //COMENTAR TODO!

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //si el checkbox esta chequeado, quiere decir que buscamos por el DNI
            if (CkbDNI.Checked)
            {
                TheGym k = new TheGym();
                k.DNIClienteBusc = tbbuscar.Text;
                k.NombreClienteBusc = "";
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                //si no, buscamos por el nombre
                TheGym k = new TheGym();
                k.NombreClienteBusc = tbbuscar.Text;
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }


        }


    }
}