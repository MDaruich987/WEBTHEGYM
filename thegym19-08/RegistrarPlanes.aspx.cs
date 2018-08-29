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
    public partial class RegistrarPlanes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetActividad();
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



        protected void btnaceptar1_Click(object sender, EventArgs e)
        {

            TheGym k = new TheGym
            {
                Nombreplanins = tbnombre.Text,
                duracionplanins = ListBox1.SelectedValue,
                precioplanins = tbprecio.Text
            };

            k.AddNewPlan();


            tbnombre.Text = string.Empty;
            tbprecio.Text = string.Empty;
        }
    }


    }
