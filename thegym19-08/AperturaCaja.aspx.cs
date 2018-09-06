using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;

namespace thegym19_08
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbfecha.Text = DateTime.Now.ToString("dd/MM/yyyy");
            tbhora.Text = DateTime.Now.ToString("hh:mm tt");
            tbestado.Text = "Apertura";


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TheGym k = new TheGym
            //{
           

            //};
        }
    }
}