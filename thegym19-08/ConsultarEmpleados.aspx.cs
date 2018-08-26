using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//agregar estas dos librerias para que reconozca el objeto TheGym
using thegym19_08.BusinessLayer;
using System.Data;

namespace thegym19_08
{
    public partial class ConsultarEmpleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnbuscar_Click(object sender, EventArgs e)
        {
            //Busca por el DNI
            if (CkbDNI.Checked)
            {
                try
                {
                    //el try captura el error para controlarlo y que se muestre en
                    //un label y no congele toda la página
                    lblerrorbusqueda.Text = "cheked";
                    TheGym k = new TheGym();
                    k.DNIEmpleadoBusc = tbbuscar.Text;
                    k.NombreEmpleadoBusc = "";
                    k.CargoEmpleadoBusc = "";
                    DataTable dt = k.GetEmpleadoNom();
                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    else
                    {                     
                        lblerrorbusqueda.Text = "No se encontraron empleados que coincidan";
                    }

                }
                catch (Exception ex)
                {
                    //hacemos que el error de SQL, si es que existe se muestre como mensaje
                    lblerrorbusqueda.Text = ex.Message.ToString();
                    
                }
                
            }
            else
            {
                //si no esta chequeado busca el nombre
                try
                {
                    //lblerrorbusqueda.Text = "no cheked";
                    TheGym k = new TheGym();
                    k.NombreEmpleadoBusc = tbbuscar.Text;
                    k.DNIEmpleadoBusc = "";
                    k.CargoEmpleadoBusc = "";
                    DataTable dt = k.GetEmpleadoNom();
                    //lblerrorbusqueda.Text = "salida SP";
                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    else
                    {
                        lblerrorbusqueda.Text = "No se encontraron empleados que coincidan";
                    }
                }
                catch (Exception ex)
                {
                    //hacemos que el error de SQL, si es que existe se muestre como mensaje
                    lblerrorbusqueda.Text = ex.Message.ToString();

                }



            }
        }
    }
}