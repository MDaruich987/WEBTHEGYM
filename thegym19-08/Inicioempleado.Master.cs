﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace thegym19_08
{
    public partial class Inicioempleado : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Response.Redirect("~/InicioLogin.aspx");
        }
    }
}