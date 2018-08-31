using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;
using System.Data;

namespace thegym19_08
{
    public partial class RegistrarActividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblmensajebienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
            }
            
            if (!IsPostBack)
            {
                GetProfesores();
                GetSucursales();
            }

        }

        private void GetProfesores()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetProfesores();
            if (dt.Rows.Count > 0)
            {
                ddlprofesor.DataValueField = "Id_empleado";
                ddlprofesor.DataTextField = "Profesor";
                ddlprofesor.DataSource = dt;
                ddlprofesor.DataBind();

            }
        }

        private void GetSucursales()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetSucursales();
            if (dt.Rows.Count > 0)
            {
                DlistSucursal.DataValueField = "Id_sucursal";
                DlistSucursal.DataTextField = "Nombre";
                DlistSucursal.DataSource = dt;
                DlistSucursal.DataBind();
            }
        }

        protected void BTNRegistrarPP1_Click(object sender, EventArgs e)
        {
            TheGym k = new TheGym
            {
                NombreActividad = TbNombre.Text,
                ProfesorActividad = ddlprofesor.SelectedValue,
                SucursalActividad = DlistSucursal.SelectedValue,
                CuposActividad = DdlCupos.SelectedValue,
                HorarioInicioActividad = DplistInicio.SelectedValue,
                HorarioFinActividad = DplistFin.SelectedValue,
                DescripcionActividad = TbDescripcion.Text
            };

            k.AddNewActividad();

            TbNombre.Text = string.Empty;
            TbDescripcion.Text = string.Empty;

        }


    }
}