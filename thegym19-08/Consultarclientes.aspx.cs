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
    public partial class Consultarclientes : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

            /*    case "Delete" :
                    string Id = gridviewclientes.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
                    try
                    {
                        //tomamos el valor ID del empleado seleccionado
                        int id = Convert.ToInt32(Id);
                        //llamos al procedimiento almacenado
                        SqlCommand cmd = new SqlCommand("PA_InhabilitaCliente", conex);
                        //esablecemos el dataadpater y le indicamos que trabajaremos con un procedimiento almacenado
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        {
                            //definimos el valor de la variable para le procedimiento
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
                        }
                        //abrimos la conexion
                        if (conex.State != ConnectionState.Open)
                        {
                            conex.Open();
                        }
                        //ejectuamos el comando
                        cmd.ExecuteNonQuery();
                        //cerramos la conexion
                        conex.Close();
                        //obtenemos el indice de la fila editada
                        gridviewclientes.EditIndex = -1;
                        LLenar_GvClientes();
                        //PanelFormulario.Visible = false;
                        lblerror.Text = "Cliente Inhabilitado Correctamente.";
                        //falta el procedimiento almacenado que debe recibir el id y los estados para los empleados
                    }
                    catch (Exception ex)
                    {
                        lblerror.Text = ex.Message.ToString();
                        conex.Close();
                    }
                    */


    }
}