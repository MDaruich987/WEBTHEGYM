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

        static string DNIEdit;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

        private void GetCargos()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetCargos();
            if (dt.Rows.Count > 0)
            {
                ddlCargo.DataValueField = "Id_cargo";
                ddlCargo.DataTextField = "Nombre";
                ddlCargo.DataSource = dt;
                ddlCargo.DataBind();
            }
        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GetCargos();
            DNIEdit = GridView1.SelectedRow.Cells[2].Text;
            TbNombre.ReadOnly = false;
            TbApellido.ReadOnly = false;
            TbDNI.ReadOnly = false;
            TbDomicilio.ReadOnly = false;
            TbEmail.ReadOnly = false;
            TbFechaNac.ReadOnly = false;
            TbTelefono.ReadOnly = false;
            TbTitulo.ReadOnly = false;
            TbExperiencia.ReadOnly = false;
            TbNombre.Text = GridView1.SelectedRow.Cells[0].Text;
            TbApellido.Text = GridView1.SelectedRow.Cells[1].Text;
            TbDNI.Text = GridView1.SelectedRow.Cells[2].Text;
            TbFechaNac.Text = GridView1.SelectedRow.Cells[3].Text;
            TbEmail.Text = GridView1.SelectedRow.Cells[4].Text;
            TbTelefono.Text = GridView1.SelectedRow.Cells[5].Text;
            ddlCargo.ClearSelection();
            ddlCargo.Items.FindByText(GridView1.SelectedRow.Cells[10].Text).Selected = true;
            if (GridView1.SelectedRow.Cells[6].Text == "&nbsp;")
            {
                TbDomicilio.Text = "";
            }
            else
            {
                TbDomicilio.Text = GridView1.SelectedRow.Cells[6].Text;
            }
            TbTitulo.Text = GridView1.SelectedRow.Cells[8].Text;
            //TbExperiencia.Text = GridView1.SelectedRow.Cells[9].Text;

            if (GridView1.SelectedRow.Cells[9].Text == "&nbsp;")
            {
                TbExperiencia.Text = "";
            }
            else
            {
                TbExperiencia.Text = GridView1.SelectedRow.Cells[9].Text;
            }


        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            if (CkbDNI.Checked)
            {
                TheGym k = new TheGym();
                k.DNIEmpleadoBusc = tbbuscar.Text;
                k.NombreEmpleadoBusc = "";
                DataTable dt = k.GetEmpleadoNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                TheGym k = new TheGym();
                k.NombreEmpleadoBusc = tbbuscar.Text;
                k.DNIEmpleadoBusc = "0";
                DataTable dt = k.GetEmpleadoNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {

            TheGym k = new TheGym
            {
                DNIEditar = DNIEdit,
                NombreEmpleadoEdit = TbNombre.Text,
                ApellidoEmpleadoEdit = TbApellido.Text,
                DNIEmpleadoEdit = TbDNI.Text,
                FechaNacEmpleadoEdit = TbFechaNac.Text,
                EmailEmpleadoEdit = TbEmail.Text,
                TelefonoEmpleadoEdit = TbTelefono.Text,
                DomicilioEmpleadoEdit = TbDomicilio.Text,
                TituloEmpleadoEdit = TbTitulo.Text,
                ExperienciaEmpleadoEdit = TbExperiencia.Text,
                CargoEmpleadoEdit = ddlCargo.SelectedValue
            };

            k.UpdateEmpleado();

            TbNombre.Text = string.Empty;
            TbApellido.Text = string.Empty;
            TbDNI.Text = string.Empty;
            TbFechaNac.Text = string.Empty;
            TbEmail.Text = string.Empty;
            TbTelefono.Text = string.Empty;
            TbDomicilio.Text = string.Empty;
            TbTitulo.Text = string.Empty;
            TbExperiencia.Text = string.Empty;
            ddlCargo.ClearSelection();
            ddlCargo.Enabled = false;
            TbNombre.ReadOnly = true;
            TbApellido.ReadOnly = true;
            TbDNI.ReadOnly = true;
            TbFechaNac.ReadOnly = true;
            TbEmail.ReadOnly = true;
            TbTelefono.ReadOnly = true;
            TbDomicilio.ReadOnly = true;
            TbTitulo.ReadOnly = true;
            TbExperiencia.ReadOnly = true;

            DataTable aux = new DataTable();

            GridView1.DataSource = aux;
            GridView1.DataBind();
            GridView1.Dispose();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }


    }
    }
