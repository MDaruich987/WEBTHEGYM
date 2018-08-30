using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;

namespace thegym19_08
{
    public partial class InicioLogin : System.Web.UI.Page
    {
        //cadena de conexion MICA
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MAXI
        //SqlConnection conex = new SqlConnection("Data Source = DESKTOP-TN40SE1\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion CAMI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MILI
        SqlConnection conex = new SqlConnection("Data Source=DESKTOP-T2J3I6L;Initial Catalog=TheGym;Integrated Security=True");
        //cadena de conexion DAVID
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnlogeo_Click(object sender, EventArgs e)
        {
            //Nos aseguramos que se haya ingresado texto en ambos textbox
            if (tbusuario.Text.Trim() != "" && tbcontraseña.Text.Trim() != "")
            {
                //captamos el nombre de usuario y contraseña ingresado
                string usuario = tbusuario.Text;
                string contraseña = tbcontraseña.Text;
                //////////////////////manejo de errores
                try
                {
                    //abrimos la conexion
                    conex.Open();
                    //creamos un comando sql, le pasamos la consulta a enviar a la base de datos y la conexion
                    SqlCommand com = new SqlCommand("select Apellido,FK_cargo,Nombre from EMPLEADO e  inner join Usuario u on e.Id_empleado = u.FK_empleado where u.Usuario = @nick and u.Contraseña = @con" , conex);
                    //con el @ parametrizamos nuestros elementos, y ahora le agregamos el valor
                    com.Parameters.AddWithValue("@nick", usuario);
                    //primero pasamos el nombre del parametro y luego valor que tendra
                    com.Parameters.AddWithValue("@con", contraseña);
                    //creamos un objetosql data adapter y le pasamos nuestro comando sql
                    SqlDataAdapter dap = new SqlDataAdapter(com);
                    //creamos un data table 
                    DataTable dat = new DataTable();
                    //para llenarlo con los datos de la tabla desde el data adapter
                    dap.Fill(dat);
                    //evaluamos si la consulta nos devuelve filas quiere decir que si hay un elemento que coincida
                    if (dat.Rows.Count == 1)
                    {
                        //si al contar las filas del data table tenemos uno, el login es correcto
                        //verificamos si es un admin o empleado
                        if (dat.Rows[0][1].ToString() == "3")
                        {
                            //es empleada
                            //lblerrorlogin.Text = "admin";
                            //enviamos como parametro al form de inicio del admin su nombre y apellido consultado en el datatable
                            Label3.Text = dat.Rows[0][2].ToString() + ", " + dat.Rows[0][0].ToString();
                            Session["inicio"] = usuario;
                            Response.Redirect("WebInicioempleado.aspx?parametro=" + Label3.Text);

                        }
                        else if (dat.Rows[0][1].ToString() == "2")
                        {
                            //es empleado
                            Label3.Text = dat.Rows[0][2].ToString() + ", " + dat.Rows[0][0].ToString();
                        }
                    }
                    else
                    {
                        Label1.Text = "Usuario y/o contraseña incorrectos";
                    }

                }
                catch (Exception)
                {
                    Label1.Text = "Error";

                }
                /////////////////////
            }
            //si no mostramos un mensaje indicando que debe ingresar
            else
            {
                Label1.Text = "Ingrese usuario y contraseña";
            }

        }
    }
}