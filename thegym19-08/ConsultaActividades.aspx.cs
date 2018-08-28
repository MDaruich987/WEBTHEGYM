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
    public partial class ConsultaActividades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            if (tbbuscar.Text == string.Empty)
            {
                LblError.Visible = true;
            }
            else
            {
                LblError.Visible = false;
                TheGym k = new TheGym
                {
                    NombreActividadBuscar = tbbuscar.Text
                };

                DataTable dt = k.GetActividad();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

            }
        }
    }
}