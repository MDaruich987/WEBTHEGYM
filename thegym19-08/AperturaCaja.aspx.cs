using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;
using System.Data;
using System.Data.SqlClient;

namespace thegym19_08
{
    public partial class WebForm1 : System.Web.UI.Page
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
            //CargaCaja(); 

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

        //private void CargaCaja()
        //{
        //    TheGym k = new TheGym
        //    {
        //        IdSucursalCarga = IdSuc
        //    };

        //    DataTable dt = new DataTable();
        //    dt = k.GetAllCaja();
        //    if (dt.Rows.Count>0)
        //    {
        //        ddlcaja.DataValueField = "id_caja";
        //        ddlcaja.DataTextField = "descripcion";
        //        ddlcaja.DataSource = dt;
        //        ddlcaja.DataBind();
        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //abrimos la conexion
                conex.Open();
                //creamos un comando sql, le pasamos la consulta a enviar a la base de datos y la conexion
                SqlCommand com = new SqlCommand("select * from DetalleCaja where Fecha = convert(date, getdate())", conex);
                //creamos un objetosql data adapter y le pasamos nuestro comando sql
                SqlDataAdapter dap = new SqlDataAdapter(com);
                //creamos un data table 
                DataTable dat = new DataTable();
                //para llenarlo con los datos de la tabla desde el data adapter
                dap.Fill(dat);
                //lblusuario.Text = dat.Rows[0][0].ToString()+ dat.Rows[0][1].ToString()+ dat.Rows[0][2].ToString();
                //evaluamos si la consulta nos devuelve filas quiere decir que si hay un elemento que coincida
                if (dat.Rows.Count >= 1)
                {
                    //si al contar las filas del data table tenemos uno, el login es correcto
                    //verificamos si es un admin o empleado
                    if (dat.Rows[0][0].ToString() == "3" | dat.Rows[0][0].ToString() == "4" | dat.Rows[0][0].ToString() == "5" | dat.Rows[0][0].ToString() == "6")
                    {
                        lblerror.Text = "Ya se realizó la apertura de caja diaria.";
                    }
                }
                else
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
            catch (Exception ex)
                {
                    lblerror.Text = ex.Message.ToString();

                }
            
        }
    }
}