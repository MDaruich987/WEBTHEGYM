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
        
        static string DNIEdit;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
        }

        

        protected void btnbuscar_Click(object sender, EventArgs e)
        {

            //GridView1.Visible = true;
            if (CkbDNI.Checked)
            {
                TheGym k = new TheGym();
                k.DNIClienteBusc = tbbuscar.Text;
                k.NombreClienteBusc = "";
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                TheGym k = new TheGym();
                k.NombreClienteBusc = tbbuscar.Text;
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }

        }

        

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DNIEdit = GridView1.SelectedRow.Cells[2].Text;
            tbnombre.ReadOnly = false;
            tbapellido.ReadOnly = false;
            tbdni.ReadOnly = false;
            tbemail.ReadOnly = false;
            tbfechanacimiento.ReadOnly = false;
            tbtelefono.ReadOnly = false;
            tbdomicilio.ReadOnly = false;
            tbnombre.Text = GridView1.SelectedRow.Cells[0].Text;
            tbapellido.Text = GridView1.SelectedRow.Cells[1].Text;
            tbdni.Text = GridView1.SelectedRow.Cells[2].Text;
            tbfechanacimiento.Text = GridView1.SelectedRow.Cells[3].Text;
            tbemail.Text = GridView1.SelectedRow.Cells[4].Text;
            tbtelefono.Text = GridView1.SelectedRow.Cells[5].Text;
            //tbdomicilio.Text = GridView1.SelectedRow.Cells[7].Text;
            if (GridView1.SelectedRow.Cells[6].Text == string.Empty)
            {
                tbdomicilio.Text = "";
            }
            else
            {
                tbdomicilio.Text = GridView1.SelectedRow.Cells[6].Text;
            }
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


        protected void btneditar_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                NombreClienteEditar = tbnombre.Text,
                ApellidoClienteEditar = tbapellido.Text,
                DNIClienteEditar = tbdni.Text,
                FechaClienteEditar = tbfechanacimiento.Text,
                EmailClienteEditar = tbemail.Text,
                TelefonoClienteEditar = tbtelefono.Text,
                DomicilioClienteEditar = tbdomicilio.Text,
            };

            k.DNIEditar = DNIEdit;

            k.UpdateCliente();

            tbapellido.Text = string.Empty;
            tbnombre.Text = string.Empty;
            tbbuscar.Text = string.Empty;
            tbemail.Text = string.Empty;
            DNIEdit = string.Empty;
            tbdni.Text = string.Empty;
            tbfechanacimiento.Text = string.Empty;
            tbtelefono.Text = string.Empty;
            tbdomicilio.Text = string.Empty;

            DataTable aux = new DataTable();

            GridView1.DataSource = aux;
            GridView1.DataBind();
            GridView1.Dispose();


        }

    }
}