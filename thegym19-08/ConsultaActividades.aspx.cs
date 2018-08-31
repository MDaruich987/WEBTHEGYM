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
    public partial class ConsultaActividades : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

        /*codigo delete
         *
         * 
         string Id = gvactividad.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
                    try
                    {
                        //tomamos el valor ID del empleado seleccionado
                        int Iddelete = Convert.ToInt32(Id);
                        //llamos al procedimiento almacenado
                        SqlCommand cmd = new SqlCommand("PA_InhabilitarActividad", conex);
                        //esablecemos el dataadpater y le indicamos que trabajaremos con un procedimiento almacenado
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        {
                            //definimos el valor de la variable para le procedimiento
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = Iddelete;
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
                        gvactividad.EditIndex = -1;
                        //PanelFormulario.Visible = false;
                        lblmensajerror.Text = "Plan Inhabilitado Correctamente.";
                        LLenar_GvActividades();
                    }
                    catch (Exception ex)
                    {
                        lblmensajerror.Text = ex.Message.ToString();
                        conex.Close();
                    }

         * 
         * 
         * 
         * 
         */


    }
}
