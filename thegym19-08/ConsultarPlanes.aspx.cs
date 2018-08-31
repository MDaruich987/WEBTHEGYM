using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thegym19_08
{
    public partial class ConsultarPlanes : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

/*
                case "Delete":
                    string Id = GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value.ToString();
                    try
                    {
                        //tomamos el valor ID del empleado seleccionado
                        int Iddelete = Convert.ToInt32(Id);
                        //llamos al procedimiento almacenado
                        SqlCommand cmd = new SqlCommand("PA_InhabilitarPlans", conex);
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
                        GridView1.EditIndex = -1;
                        LlenarGvPlanes();
                        //PanelFormulario.Visible = false;
                        lblerror.Text = "Plan Inhabilitado Correctamente.";
                        //falta el procedimiento almacenado que debe recibir el id y los estados para los empleados
                    }
                    catch (Exception ex)
                    {
                        lblerror.Text = ex.Message.ToString();
                        conex.Close();
                    }

                    break;


                case "Select":
                    int index = Convert.ToInt32(e.CommandArgument);
                    int idselect = Convert.ToInt32(GridView1.DataKeys[index].Value);
                    {
                        //creamos el comando y le pasamos el llamado al procedimiento almacenado
                        SqlCommand comd = new SqlCommand("select a.Nombre as 'NombreActividad' from DetallePlan dp inner join Actividad a on a.Id_actividad=dp.FK_actividad where dp.FK_plan=@param", conex);
                        comd.Parameters.AddWithValue("@param", SqlDbType.VarChar).Value = idselect;
                        SqlDataAdapter da = new SqlDataAdapter(comd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        //para que siempre muestre el encabezado aun si no hay resultados
                        if (dt.Rows.Count > 0)
                        {
                            //si encuentra filas entonces llenamos el data table con el data adapter
                            this.gbactividadesplanbusqueda.DataSource = dt;
                            //enlazamos el gv
                            this.gbactividadesplanbusqueda.DataBind();
                            //y lo activamos
                            gbactividadesplanbusqueda.Enabled = true;
                        }
                        else
                        {
                            //si no hya resultados, añadimos filas vacias si no encuentra nada
                            dt.Rows.Add(dt.NewRow());
                            dt.Rows.Add(dt.NewRow());
                            dt.Rows.Add(dt.NewRow());
                            gbactividadesplanbusqueda.DataSource = dt;
                            gbactividadesplanbusqueda.DataBind();
                            gbactividadesplanbusqueda.Rows[0].Visible = false;
                            //y deshabilitamos el gridview
                            gbactividadesplanbusqueda.Enabled = false;
                            lblerror.Text = "No se han encontrado planes que coincidan con la busqueda";

                        }
                    }

    */
    
    }
}