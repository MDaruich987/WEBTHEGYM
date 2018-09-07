using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;
using System.Data;

namespace thegym19_08
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static string id;
        private static string IdSuc;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            tbfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
            tbhora.Text = DateTime.Now.ToString("hh:mm tt");
            tbestado.Text = "Apertura";
            id = "3";
            


            if (Session["inicio"] != null)
            {
                //declaramos una variale sesion para mantener el dato del usuario
                string usuario = (string)Session["Usuario"];
                tbusuario.Text = usuario;
                //id= (string)Session["IdEmpleado"];
                

                /*if (Request.Params["parametro"] != null)
                {
                    //para que el label capte el nombre y apellido enviado desde el form de acceso
                    lblmensajebienvenida.Text = "Bienvenido " + Request.Params["parametro"];
                }
                else
                {
                    //si no, muestra un mensaje de bienvenida solamente
                    lblmensajebienvenida.Text = "Bienvenido";
                }
                */

            }
            else
            {
                //si no se ha iniciado sesion me manda al inicio
                //Response.Redirect("InicioLogin.aspx");
            }

            CargaSucursal();
            CargaCaja(); 

        }
        private void CargaSucursal()
        {
            TheGym k = new TheGym
            {
                IdEmpleadoCargaSuc = id
            };
            DataTable dt = k.GetAllSucursal();
            tbsucursal.Text = dt.Rows[0][0].ToString();
            IdSuc = dt.Rows[0][1].ToString();
        }

        private void CargaCaja()
        {
            TheGym k = new TheGym
            {
                IdSucursalCarga = IdSuc
            };

            DataTable dt = new DataTable();
            dt = k.GetAllCaja();
            if (dt.Rows.Count>0)
            {
                ddlcaja.DataValueField = "id_caja";
                ddlcaja.DataTextField = "descripcion";
                ddlcaja.DataSource = dt;
                ddlcaja.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (tbmonto.Text == string.Empty)
            {
                lblerror.Text = "Se debe ingresar un monto";
                lblerror.Visible = true;
            }
            else
            {
                TheGym k = new TheGym
                {
                    FK_empleado = id,
                    FK_caja = ddlcaja.SelectedValue,
                    Estadocaja = tbestado.Text,
                    FechaCaja = tbfecha.Text,
                    Monto = tbmonto.Text
                };

                k.AperturaDeCaja();
            }
            
        }
    }
}