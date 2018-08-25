using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thegym19_08
{
    public partial class Registrarclientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblReg.Text = ("");

            if (!IsPostBack)
            {
                clrfechanacimiento0.Visible = false;
            }
        }

        protected void btnaceptar0_Click(object sender, EventArgs e)
        {
            LblReg.Text = ("Cliente registrado con éxito.");


            string NomEmp;
            string ApEmp;
            int DNIEmp;
            string EmailEmp;
            int TelEmp;

            NomEmp = tbnombre0.Text;
            ApEmp = tbapellido0.Text;
            EmailEmp = tbemail1.Text;

            DNIEmp = Convert.ToInt32(tbdni0.Text);
            TelEmp = Convert.ToInt32(tbtelefono1.Text);

        }


        protected void clrfechanacimiento0_SelectionChanged1(object sender, EventArgs e)
        {
            tbfechanacimiento1.Text = clrfechanacimiento0.SelectedDate.ToLongDateString();
            clrfechanacimiento0.Visible = false;
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
            tbfechanacimiento1.Text = ("");
            tbtelefono1.Text = ("");
        }
    }
}