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
        static string idemp;
        static string idsuc;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido/a " + Session["inicio"].ToString();
                string usuario = (string)Session["Usuario"];
            }
        }

        protected void btnbuscaractividad_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                NombreActividadBuscar = tbbuscar.Text,
            };
            DataTable dt = new DataTable();
            dt = k.GetActividad();
            if (dt.Rows.Count > 0)
            {
                gvactividad.DataSource = dt;
                gvactividad.DataBind();
            }
            
        }

        private void GetSucursales()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetSucursales();
            if (dt.Rows.Count > 0)
            {
                DroplisSucursal.DataValueField = "Id_sucursal";
                DroplisSucursal.DataTextField = "Nombre";
                DroplisSucursal.DataSource = dt;
                DroplisSucursal.DataBind();
            }
        }

        protected void gvactividad_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetProfesores();
            GetSucursales();
            TxbNombre.ReadOnly = false;
            //TxbProfesor.ReadOnly = false;
            TxbDesc.ReadOnly = false;
            TxbDe.ReadOnly = false;
            TxbA.ReadOnly = false;
            TxbCupos.ReadOnly = false;
            TxbNombre.Text = gvactividad.SelectedRow.Cells[1].Text;
            TxbDesc.Text = gvactividad.SelectedRow.Cells[2].Text;
            //TxbProfesor.Text = gvactividad.SelectedRow.Cells[3].Text;
            DroplisSucursal.ClearSelection();
            DroplisSucursal.Items.FindByText(gvactividad.SelectedRow.Cells[4].Text).Selected=true;
            idsuc = DroplisSucursal.SelectedValue;
            TxbDe.Text = gvactividad.SelectedRow.Cells[5].Text;
            TxbA.Text = gvactividad.SelectedRow.Cells[6].Text;
            ddlProfesor.ClearSelection();
            ddlProfesor.Items.FindByText(gvactividad.SelectedRow.Cells[3].Text).Selected=true;
            idemp = ddlProfesor.SelectedValue;
            TxbCupos.Text = gvactividad.SelectedRow.Cells[7].Text;
        }

        protected void BtnEditar_Click(object sender, EventArgs e)
         {
            TheGym k = new TheGym
            {
                IdActividad = gvactividad.SelectedRow.Cells[0].Text,
                IdEmpleado = idemp,
                IdSucursal = idsuc,
                NombreActividadEdit = TxbNombre.Text,
                ProfesorActividadEdit = ddlProfesor.SelectedValue,
                CuposActividadEdit = TxbCupos.Text,
                HorarioInicioEdit = TxbDe.Text,
                HorarioFinEdit = TxbA.Text,
                DescripcionActividadEdit = TxbDesc.Text,
                SucursalActividadEdit = DroplisSucursal.SelectedValue
            };

            k.UpdateActividad();

            TxbNombre.Text = string.Empty;
            TxbDesc.Text = string.Empty;
            TxbDe.Text = string.Empty;
            TxbCupos.Text = string.Empty;
            TxbA.Text = string.Empty;
            ddlProfesor.ClearSelection();
            DroplisSucursal.ClearSelection();
            tbbuscar.Text = string.Empty;
            TxbA.ReadOnly = true;
            TxbCupos.ReadOnly = true;
            TxbDe.ReadOnly = true;
            TxbDesc.ReadOnly = true;
            TxbNombre.ReadOnly = true;


            DataTable aux2 = new DataTable();
            gvactividad.DataSource = aux2;
            gvactividad.DataBind();
            gvactividad.Dispose();

        }

        private void GetProfesores()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetProfesores();
            if (dt.Rows.Count > 0)
            {
                ddlProfesor.DataValueField = "Id_empleado";
                ddlProfesor.DataTextField = "Profesor";
                ddlProfesor.DataSource = dt;
                ddlProfesor.DataBind();

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
