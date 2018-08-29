using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//agregar estas dos librerias para que reconozca el objeto TheGym
using thegym19_08.BusinessLayer;
using System.Data;
using System.Data.SqlClient;

namespace thegym19_08
{
    public partial class ConsultarEmpleados : System.Web.UI.Page
    {
        //cadena de conexion MICA
        SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MAXI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion CAMI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MILI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion DAVID
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");


        //tutorial
        //http://sistemasddm.blogspot.com/2013/09/guardar-actualizar-y-eliminar-registros.html
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        private void LLenar_GvEmpleados()
        {
            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            SqlCommand comd = new SqlCommand("select Id_empleado, Nombre, Apellido, Fecha_nac, Email, Telefono, Domicilio, DNI, Fecha_cont, Titulo, Experiencia from empleado", conex);
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //llenamos el datatable con el dataadapter
            this.GridView1.DataSource = dt;
            //enlazamos el gv
            this.GridView1.DataBind();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            
            //si los tb no estan vacios entonces podemos agregar el evento

            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            string sentencia = "%" + tbbuscar.Text + "%";
            SqlCommand comd = new SqlCommand("select  Id_empleado, Nombre, Apellido, Fecha_nac, Email, Telefono, Domicilio, DNI, Fecha_cont, Titulo, Experiencia from empleado where Nombre like @param or DNI like @param", conex);
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
                lblerrorbusqueda.Text = "No se han encontrado productos que coincidan con la busqueda";

            }



        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            try
            {
                LLenar_GvEmpleados();
                //GridView1.PageIndex = e.;
                this.GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblerrorbusqueda.Text = ex.Message.ToString()+"hola";
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                //cada vez que se cambie el gridview tenemos que rellenarlo
                GridView1.EditIndex = e.NewEditIndex;
                LLenar_GvEmpleados();
            }
            catch (Exception ex)
            {
                lblerrorbusqueda.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                LLenar_GvEmpleados();
            }
            catch (Exception ex)
            {
                lblerrorbusqueda.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Nombre, Apellido, FechNac, Email, Domici, FechContr, Titulo, Experiencia;
            int id, DNI, Telef;
            try
            {
                //tomamos los valores de los txt que acmbiaron en el gridview
                TextBox txt = new TextBox();
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Id_empleado");
                id = Convert.ToInt32(txt.Text);
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtnombre");
                Nombre = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtapellido");
                Apellido = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdni");
                DNI = Convert.ToInt32(txt.Text);
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtfechanacimiento");
                FechNac = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtemail");
                Email = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txttelefono");
                Telef = Convert.ToInt32(txt.Text);
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdomicilio");
                Domici = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtfechacontratacion");
                FechContr = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txttitulo");
                Titulo = txt.Text;
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtexperiencia");
                Experiencia = txt.Text;
                //llamos al procedimiento almacenado
                SqlCommand cmd = new SqlCommand("PA_ActualizaEmpleado", conex);
                //esablecemos el dataadpater y le indicamos que trabajaremos con un procedimiento almacenado
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                {
                    //definimos los valores de las variables del procedimiento
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
                    cmd.Parameters.AddWithValue("@nomb", SqlDbType.VarChar).Value = Nombre;
                    cmd.Parameters.AddWithValue("@apell", SqlDbType.VarChar).Value = Apellido;
                    cmd.Parameters.AddWithValue("@Fechanac", SqlDbType.Date).Value = FechNac;
                    cmd.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = Email;
                    cmd.Parameters.AddWithValue("@telef", SqlDbType.BigInt).Value = Telef;
                    cmd.Parameters.AddWithValue("@domi", SqlDbType.VarChar).Value = Domici;
                    cmd.Parameters.AddWithValue("@DNI", SqlDbType.Int).Value = DNI;
                    cmd.Parameters.AddWithValue("@fechacon", SqlDbType.DateTime).Value = FechContr;
                    cmd.Parameters.AddWithValue("@titulo", SqlDbType.VarChar).Value = Titulo;
                    cmd.Parameters.AddWithValue("@exper", SqlDbType.VarChar).Value = Experiencia;
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
                LLenar_GvEmpleados();
                //PanelFormulario.Visible = false;
                lblerrorbusqueda.Text = "Empleado Actualizado Correctamente.";
            }
            catch (Exception ex)
            {
                lblerrorbusqueda.Text = ex.Message.ToString();
                conex.Close();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id;
            try
            {
                //tomamos el valor ID del empleado seleccionado
                TextBox txt = new TextBox();
                txt = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Id_empleado");
                id = Convert.ToInt32(txt.Text);
                
                //llamos al procedimiento almacenado
                SqlCommand cmd = new SqlCommand("PA_ActualizaEmpleado", conex);
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
                GridView1.EditIndex = -1;
                LLenar_GvEmpleados();
                //PanelFormulario.Visible = false;
                lblerrorbusqueda.Text = "Empleado Inhabilitado Correctamente.";
                //falta el procedimiento almacenado que debe recibir el id y los estados para los empleados
            }
            catch (Exception ex)
            {
                lblerrorbusqueda.Text = ex.Message.ToString();
                conex.Close();
            }

        }
    }
    }
