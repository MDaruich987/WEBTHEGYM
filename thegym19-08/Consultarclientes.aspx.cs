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
        //cadena de conexion MICA
        SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MAXI
        //SqlConnection conex = new SqlConnection("Data Source = DESKTOP-TN40SE1\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion CAMI
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        //cadena de conexion MILI
        //SqlConnection conex = new SqlConnection("Data Source=DESKTOP-T2J3I6L;Initial Catalog=TheGym;Integrated Security=True");
        //cadena de conexion DAVID
        //SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");


        protected void Page_Load(object sender, EventArgs e)
        {
            
            
        }

        private void LLenar_GvClientes()
        {
            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            SqlCommand comd = new SqlCommand("select Id_cliente,DNI, Nombre, Apellido, Fecha_nac, Email, Telefono, Domicilio, Foto  from Cliente where Estado='H'", conex);
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //llenamos el datatable con el dataadapter
            this.gridviewclientes.DataSource = dt;
            //enlazamos el gv
            this.gridviewclientes.DataBind();
        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {

            //creamos el comando y le pasamos el llamado al procedimiento almacenado
            string sentencia = "%" + tbbuscar.Text + "%";
            SqlCommand comd = new SqlCommand("select Id_cliente,DNI, Nombre, Apellido, Fecha_nac, Email, Telefono, Domicilio, Foto from Cliente where Estado='H' and Nombre like @param ", conex);
            comd.Parameters.AddWithValue("@param", SqlDbType.VarChar).Value = sentencia;
            SqlDataAdapter da = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //para que siempre muestre el encabezado aun si no hay resultados
            if (dt.Rows.Count > 0)
            {
                //si encuentra filas entonces llenamos el data table con el data adapter
                this.gridviewclientes.DataSource = dt;
                //enlazamos el gv
                this.gridviewclientes.DataBind();
                //y lo activamos
                gridviewclientes.Enabled = true;
            }
            else
            {
                //si no hya resultados, añadimos filas vacias si no encuentra nada
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                dt.Rows.Add(dt.NewRow());
                gridviewclientes.DataSource = dt;
                gridviewclientes.DataBind();
                gridviewclientes.Rows[0].Visible = false;
                //y deshabilitamos el gridview
                gridviewclientes.Enabled = false;
                lblerror.Text = "No se han encontrado clientes que coincidan con la busqueda";

            }


        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {
            try
            {
                LLenar_GvClientes();
                //GridView1.PageIndex = e.;
                this.gridviewclientes.DataBind();
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
                gridviewclientes.EditIndex = e.NewEditIndex;
                LLenar_GvClientes();
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
                gridviewclientes.EditIndex = -1;
                LLenar_GvClientes();
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Nombre, Apellido, FechNac, Email, Domici;
            int id, DNI, Telef;
            try
            {
                //tomamos los valores de los txt que acmbiaron en el gridview
                TextBox txt = new TextBox();
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtid");
                id = Convert.ToInt32(txt.Text);
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtnombre");
                Nombre = txt.Text;
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtapellido");
                Apellido = txt.Text;
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtdni");
                DNI = Convert.ToInt32(txt.Text);
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtfechanacimiento");
                FechNac = txt.Text;
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtemail");
                Email = txt.Text;
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txttelefono");
                Telef = Convert.ToInt32(txt.Text);
                txt = (TextBox)gridviewclientes.Rows[e.RowIndex].FindControl("txtdomicilio");
                Domici = txt.Text;
                //llamos al procedimiento almacenado
                SqlCommand cmd = new SqlCommand("PA_ActualizaCliente", conex);
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
                lblerror.Text = "Empleado Actualizado Correctamente.";
            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message.ToString();
                conex.Close();
            }
        }


        protected void MyRowCommand(object sender, GridViewCommandEventArgs e)
        {
            lblerror.Text = e.CommandName;
            switch (e.CommandName)
            {
                case "Delete" :
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

                    break;
            }

            
        }
    }
}