using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//importamos para que podamos usar el objeto k
using thegym19_08.BusinessLayer;

namespace thegym19_08
{
    public partial class RegistrarEmpleados : System.Web.UI.Page
    {
        //cadena de conexion
        SqlConnection conex = new SqlConnection("Data Source = MICADARUICH\\SQLEXPRESS; Initial Catalog = TheGym; Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LblReg.Text = ("");

            if (!IsPostBack)
            {
                //ocultamos los calendarios
                clrfechanacimiento0.Visible = false;
                clrfechacontratacion.Visible = false;
                //cargamos el ddl
                Llenar_dlcargo();
            }
        }

        private void Llenar_dlcargo()
        {
            //abre la conexión y llama al procedimiento almacenado para recuperar los cargos
            conex.Open();
            string query = "PA_GetCargo";
            SqlCommand cmd = new SqlCommand(query, conex);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //muestra el nombre del cargo pero el valor que se obtiene al seleccionar es el id del cargo
            ddlcargo.DataTextField = "Nombre";
            ddlcargo.DataValueField = "Id_cargo";
            ddlcargo.DataSource = dt;
            ddlcargo.DataBind();
            conex.Close();

        }


        protected void tbnombre0_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void clrfechanacimiento0_SelectionChanged1(object sender, EventArgs e)
        {
            tbfechanacimiento2.Text = clrfechanacimiento0.SelectedDate.ToString("yyyy/MM/dd");
            clrfechanacimiento0.Visible = false;

        }

        protected void btnaceptar0_Click(object sender, EventArgs e)
        {

            TheGym k = new TheGym
            {
                NombreEmpladoIns = tbnombre0.Text,
                ApellidoEmpleadoIns=tbapellido0.Text,
                FechaNacEmpleadoIns=tbfechanacimiento2.Text,
                EmailEmpleadoIns=tbemail1.Text,
                TelefEmpleadoIns=Convert.ToInt32(tbtelefono1.Text),
                DomicilioEmpleadoIns=tbdireccion.Text,
                DNIEmpleadoIns= Convert.ToInt32(tbdni0.Text),
                FechaContEmpleadoIns=tbfechacontratacion0.Text,
                TitulEmpleadoIns=tbtitulo.Text,
                ExperEmpleadoIns=tbexperiencia.Text,
                CargoEmpleadoIns= Convert.ToInt32(ddlcargo.SelectedItem.Value),
            };

            k.AddNewEmpleado();

            tbnombre0.Text = string.Empty;
            tbapellido0.Text = string.Empty;
            tbdireccion.Text = string.Empty;
            tbdni0.Text = string.Empty;
            tbemail1.Text = string.Empty;
            tbexperiencia.Text = string.Empty;
            tbfechacontratacion0.Text = string.Empty;
            tbfechanacimiento2.Text = string.Empty;
            tbtelefono1.Text = string.Empty;
            tbtitulo.Text = string.Empty;

            LblReg.Text = ("Empleado registrado con éxito.");
        }

        protected void tbfechanacimiento0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btcalendar_Click(object sender, EventArgs e)
        {
            if (clrfechanacimiento0.Visible)
            {
                clrfechanacimiento0.Visible = false;
            }
            else
            {
                clrfechanacimiento0.Visible = true;
           }
        }

        protected void btncancelar_Click1(object sender, EventArgs e)
        {
            tbnombre0.Text = ("");
            tbapellido0.Text = ("");
            tbdni0.Text = ("");
            tbemail1.Text = ("");
            tbfechanacimiento2.Text = ("");
            tbtelefono1.Text = ("");
        }

        protected void btmfechacontratacion_Click(object sender, EventArgs e)
        {

            if (clrfechacontratacion.Visible)
            {
                clrfechacontratacion.Visible = false;
            }
            else
            {
                clrfechacontratacion.Visible = true;
            }
        }

        protected void clrfechacontratacion_SelectionChanged(object sender, EventArgs e)
        {
            tbfechacontratacion0.Text = clrfechacontratacion.SelectedDate.ToString("yyyy/MM/dd");
            clrfechacontratacion.Visible = false;
        }
    }
}