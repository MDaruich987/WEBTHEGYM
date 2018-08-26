using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thegym19_08
{
    public partial class WebInicioempleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                            if (Request.Params["parametro"]!=null)
                {
                    //para que el label capte el nombre y apellido enviado desde el form de acceso
                    lblmensajebienvenida.Text = "Bienvenido "+Request.Params["parametro"];
                }
                else
                {
                    lblmensajebienvenida.Text = "Bienvenido";
                }

            }

        }
    }
