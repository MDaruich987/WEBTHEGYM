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
    public partial class ConsultarPlanes : System.Web.UI.Page
    {
        static string idact;
        static string id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
                string Usuario = Session["Usuario"].ToString();
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                NombrePlanBusc = tbbuscar.Text,
            };
            DataTable dt = new DataTable();
            dt = k.GetPlans();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

            tbnombre.ReadOnly = false;
            tbduracion.ReadOnly = false;
            tbprecio.ReadOnly = false;
            tbnombre.Text = GridView1.SelectedRow.Cells[1].Text;
            tbprecio.Text = GridView1.SelectedRow.Cells[2].Text;
            tbduracion.Text = GridView1.SelectedRow.Cells[3].Text;

            id  = GridView1.SelectedRow.Cells[0].Text;

            TheGym k = new TheGym
            {
                IdPlanBuscar = id
            };

            DataTable det = new DataTable();
            det = k.GetDetPlan();
            if (det.Rows.Count > 0)
            {
                gvactividadesplanbusqueda.DataSource = det;
                gvactividadesplanbusqueda.DataBind();
            }
            

        }

        private void GetActividad()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetActividades();
            if (dt.Rows.Count > 0)
            {
                ddlactividad.DataValueField = "Id_actividad";
                ddlactividad.DataTextField = "Nombre";
                ddlactividad.DataSource = dt;
                ddlactividad.DataBind();
            }
        }

        protected void gvactividadesplanbusqueda_SelectedIndexChanged(object sender, EventArgs e)
        {

            GetActividad();
            ddlactividad.ClearSelection();
            ddlactividad.Items.FindByText(gvactividadesplanbusqueda.SelectedRow.Cells[1].Text).Selected = true;
            idact = ddlactividad.SelectedValue;
            ddlDias.ClearSelection();
            ddlDias.Items.FindByText(gvactividadesplanbusqueda.SelectedRow.Cells[2].Text).Selected = true;
        }

        protected void BtnEditActividad_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                IdPlanDetPlanEdit = id,
                idActDetPlan = idact,
                IdActividadDetPlanEdit = ddlactividad.SelectedValue,
                DiasDetPlanEdit = ddlDias.SelectedValue
            };

            k.UpdateDetPlan();

            k.IdPlanBuscar = id;

            DataTable det = new DataTable();
            det = k.GetDetPlan();
            if (det.Rows.Count > 0)
            {
                gvactividadesplanbusqueda.DataSource = det;
                gvactividadesplanbusqueda.DataBind();
            }

            DataTable aux = new DataTable();
            ddlactividad.ClearSelection();
            ddlactividad.DataSource = aux;
            ddlactividad.DataBind();

        }

        protected void btneditar_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                IdPlanBuscar = id,
                NombrePlanEdit = tbnombre.Text,
                PrecioPlanEdit = tbprecio.Text,
                DuracionPlanEdit = tbduracion.Text
            };

            k.UpdatePlan();

            DataTable aux = new DataTable();
            GridView1.DataSource = aux;
            GridView1.DataBind();
            GridView1.Dispose();
            gvactividadesplanbusqueda.DataSource = aux;
            gvactividadesplanbusqueda.DataBind();
            gvactividadesplanbusqueda.Dispose();
            tbbuscar.Text = string.Empty;
            tbduracion.Text = string.Empty;
            tbnombre.Text = string.Empty;
            tbprecio.Text = string.Empty;
            tbduracion.ReadOnly = true;
            tbnombre.ReadOnly = true;
            tbprecio.ReadOnly = true;
            ddlactividad.ClearSelection();
            ddlDias.ClearSelection();
            ddlactividad.DataSource = aux;
            ddlactividad.DataBind();
            

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