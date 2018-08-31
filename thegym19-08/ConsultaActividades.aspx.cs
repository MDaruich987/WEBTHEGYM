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
        //cadena de conexion MICA
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MAXI
        SqlConnection conex = new SqlConnection("Data Source = DESKTOP-TN40SE1\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion CAMI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MILI
       // SqlConnection conex = new SqlConnection("Data Source=DESKTOP-T2J3I6L;Initial Catalog=TheGym;Integrated Security=True");
        //cadena de conexion DAVID
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
            LLenar_GvActividades();
        }

        private void LLenar_GvActividades()
        {
            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            SqlCommand comd = new SqlCommand("select a.Id_actividad as Id_actividad ,a.Nombre as nombre_actividad, da.Descripcion as descripcion_actividad, e.Nombre as nombre_empleado, s.Nombre as nombre_sucursal from Actividad a inner join DetalleActividad da on a.Id_actividad=da.FK_actividad  inner join Empleado e on e.Id_empleado = da.FK_empleado inner join Sucursal s on s.Id_sucursal = da.FK_sucursal where a.Estado='H' ", conex);
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //llenamos el datatable con el dataadapter
            this.gvactividad.DataSource = dt;
            //enlazamos el gv
            this.gvactividad.DataBind();
        }





        protected void btnbuscaractividad_Click(object sender, EventArgs e)
        {
            lblerrorbusqueda.Text = "";
            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            string sentencia = "%" + tbbuscar.Text + "%";
            try
            {
                SqlCommand comd = new SqlCommand("select a.Id_actividad as Id_actividad ,a.Nombre as nombre_actividad, da.Descripcion as descripcion_actividad, e.Nombre as nombre_empleado, s.Nombre as nombre_sucursal from Actividad a inner join DetalleActividad da on a.Id_actividad=da.FK_actividad  inner join Empleado e on e.Id_empleado = da.FK_empleado inner join Sucursal s on s.Id_sucursal = da.FK_sucursal where a.Estado='H' and a.Nombre like @param", conex);
                comd.Parameters.AddWithValue("@param", SqlDbType.VarChar).Value = sentencia;
                SqlDataAdapter da = new SqlDataAdapter(comd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //para que siempre muestre el encabezado aun si no hay resultados
                if (dt.Rows.Count > 0)
                {
                    //si encuentra filas entonces llenamos el data table con el data adapter
                    this.gvactividad.DataSource = dt;
                    //enlazamos el gv
                    this.gvactividad.DataBind();
                    //y lo activamos
                    gvactividad.Enabled = true;
                }
                else
                {
                    //si no hya resultados, añadimos filas vacias si no encuentra nada
                    dt.Rows.Add(dt.NewRow());
                    dt.Rows.Add(dt.NewRow());
                    dt.Rows.Add(dt.NewRow());
                    dt.Rows.Add(dt.NewRow());
                    dt.Rows.Add(dt.NewRow());
                    gvactividad.DataSource = dt;
                    gvactividad.DataBind();
                    gvactividad.Rows[0].Visible = false;
                    //y deshabilitamos el gridview
                    gvactividad.Enabled = false;
                    lblerrorbusqueda.Text = "No se han encontrado Actividades que coincidan con la busqueda";

                }
            }
            catch (Exception ex)
            {

                lblmensajerror.Text = ex.Message.ToString();
            }


        }

        protected void gvactividad_PageIndexChanged(object sender, EventArgs e)
        {
            try
            {
                LLenar_GvActividades();
                //GridView1.PageIndex = e.;
                this.gvactividad.DataBind();
            }
            catch (Exception ex)
            {
                lblmensajerror.Text = ex.Message.ToString();
            }
        }

        protected void gvactividad_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                //cada vez que se cambie el gridview tenemos que rellenarlo
                gvactividad.EditIndex = e.NewEditIndex;
                LLenar_GvActividades();
            }
            catch (Exception ex)
            {
                lblmensajerror.Text = ex.Message.ToString();
            }
        }

        protected void gvactividad_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                gvactividad.EditIndex = -1;
                LLenar_GvActividades();
            }
            catch (Exception ex)
            {
                lblmensajerror.Text = ex.Message.ToString();
            }
        }



        protected void gvactividad_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Delete":
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

                    break;



            }
        }

        protected void gvactividad_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Nombre, Descripcion;
            int Id;
            try
            {
                //tomamos los valores de los txt que acmbiaron en el gridview
                TextBox txt = new TextBox();
                txt = (TextBox)gvactividad.Rows[e.RowIndex].FindControl("txtid");
                Id = Convert.ToInt32(txt.Text);
                txt = (TextBox)gvactividad.Rows[e.RowIndex].FindControl("txtnombre");
                Nombre = txt.Text;
                txt = (TextBox)gvactividad.Rows[e.RowIndex].FindControl("txtdescrip");
                Descripcion = txt.Text;
                //llamos al procedimiento almacenado
                SqlCommand cmd = new SqlCommand("PA_ActualizaActividad", conex);
                //esablecemos el dataadpater y le indicamos que trabajaremos con un procedimiento almacenado
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                {
                    //definimos los valores de las variables del procedimiento
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = Id;
                    cmd.Parameters.AddWithValue("@nomb", SqlDbType.VarChar).Value = Nombre;

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
                LLenar_GvActividades();
                //PanelFormulario.Visible = false;
                lblmensajerror.Text = "Actividad Actualizada Correctamente.";
            }
            catch (Exception ex)
            {
                lblmensajerror.Text = ex.Message.ToString();
                conex.Close();
            }
        }
    }
}
