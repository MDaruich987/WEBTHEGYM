using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;

namespace thegym19_08
{
    public partial class CierreCaja : System.Web.UI.Page
    {

        private static string id;
        private static string IdSuc;
        //cadena mili
        SqlConnection conex = new SqlConnection("Data Source=DESKTOP-T2J3I6L;Initial Catalog=TheGym;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            //formato fecha
            tbfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
            //formato dia
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fecha;
            string id;
            try
            {
                //preguntamos si ya hay un cierre hecho 
                fecha = tbfecha.Text;

                TheGym k = new TheGym
                {
                    FechaIdDetCaja = fecha
                };

                DataTable dt = new DataTable();
                dt = k.GetEstadoDetCaja();

                if (dt.Rows.Count == 0)
                {
                    dt = k.GetIdDetCaja();
                    id = dt.Rows[0][0].ToString();
                    k.FK_det_caja = id;
                    DataTable dt1 = new DataTable();
                    dt1 = k.CierreDeCaja();
                    
                    if (dt1.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        lblmonto.Visible = true;
                        tbmonto0.Visible = true;
                        tbmonto0.Text = GridView1.Rows[0].Cells[0].Text;
                    }
                    else
                    {
                        lblerror.Text = "Error en movimientos de caja";
                    }
                }
                else
                {
                    lblerror.Text = "Caja ya cerrada";
                }
            }
            catch
            {
                lblerror.Text = "ERROR TOTAL";
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}