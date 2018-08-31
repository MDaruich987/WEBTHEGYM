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
        //cadena de conexion MICA
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MAXI
        SqlConnection conex = new SqlConnection("Data Source = DESKTOP-TN40SE1\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion CAMI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MILI
        //SqlConnection conex = new SqlConnection("Data Source=DESKTOP-T2J3I6L;Initial Catalog=TheGym;Integrated Security=True");
        //cadena de conexion DAVID
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //si los tb no estan vacios entonces podemos agregar el evento

            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            string sentencia = "%" + tbbuscar.Text + "%";
            SqlCommand comd = new SqlCommand("select Id_plan, Nombre, Precio, Duracion from Plans where estado = 'h'and Nombre like @param", conex);
            comd.Parameters.AddWithValue("@param", SqlDbType.VarChar).Value = sentencia;
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //para que siempre muestre el encabezado aun si no hay resultados
            if (dt.Rows.Count > 0)
            {
                //si encuentra filas entonces llenamos el data table con el data adapter
                this.GridView1.DataSource = dt;
                //enlazamos el gv
                this.GridView1.DataBind();
                //y lo activamos
                GridView1.Enabled = true;
            }
            else
            {
                //si no hya resultados, añadimos filas vacias si no encuentra nada
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                GridView1.DataSource = dt;
                GridView1.DataBind();
                GridView1.Rows[0].Visible = false;
                //y deshabilitamos el gridview
                GridView1.Enabled = false;
                lblerror.Text = "No se han encontrado planes que coincidan con la busqueda";

            }
        }

        private void LlenarGvPlanes()
        {
            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            SqlCommand comd = new SqlCommand("select Id_plan, Nombre, Precio, Duracion from Plans where estado='h'", conex);
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //llenamos el datatable con el dataadapter
            this.GridView1.DataSource = dt;
            //enlazamos el gv
            this.GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            try
            {
                LlenarGvPlanes();
                //GridView1.PageIndex = e.;
                this.GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                //cada vez que se cambie el gridview tenemos que rellenarlo
                GridView1.EditIndex = e.NewEditIndex;
                LlenarGvPlanes();
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                LlenarGvPlanes();
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Nombre;
            int id, Precio, Duracion;
            try
            {
                //tomamos los valores de los txt que acmbiaron en el gridview
                TextBox txt = new TextBox();
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtid");
                id = Convert.ToInt32(txt.Text);
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnombre");
                Nombre = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtduracion");
                Duracion = Convert.ToInt32(txt.Text);
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtprecio");
                Precio = Convert.ToInt32(txt.Text);
                //llamos al procedimiento almacenado
                SqlCommand cmd = new SqlCommand("PA_Actualizaplans", conex);
                //esablecemos el dataadpater y le indicamos que trabajaremos con un procedimiento almacenado
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                {
                    //definimos los valores de las variables del procedimiento
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
                    cmd.Parameters.AddWithValue("@Nombre", SqlDbType.VarChar).Value = Nombre;
                    cmd.Parameters.AddWithValue("@Duracion", SqlDbType.Int).Value = Duracion;
                    cmd.Parameters.AddWithValue("@Precio", SqlDbType.Money).Value = Precio;
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
                lblerror.Text = "Plan Actualizado Correctamente.";
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
                conex.Close();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (e.CommandName)
            {
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

                    break;

            }




        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            lblerror.Text = "Plan inhabilitado correctamente";
        }
    }
}