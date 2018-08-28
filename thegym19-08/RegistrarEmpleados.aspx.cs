using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;
//importamos para que podamos usar el objeto k


namespace thegym19_08
{
    public partial class RegistrarEmpleados : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            LblReg.Text = ("");

            if (!IsPostBack)
            {
                AddSubmitEvent();
                GetCargos();
                
               
            }
        }

        private void AddSubmitEvent()
        {
            UpdatePanel updatePanel = Page.Master.FindControl("AdminUpdatePanel") as UpdatePanel;
            UpdatePanelControlTrigger trigger = new PostBackTrigger();
            trigger.ControlID = btnaceptar0.UniqueID;

            updatePanel.Triggers.Add(trigger);

        }

        private void GetCargos()
        {
            TheGym k = new TheGym();
            DataTable dt = k.GetCargos();
            if (dt.Rows.Count > 0)
            {
                ddlcargo.DataValueField = "Id_cargo";
                ddlcargo.DataTextField = "Nombre";
                ddlcargo.DataSource = dt;
                ddlcargo.DataBind();
            }
        }

 


        protected void tbnombre0_TextChanged(object sender, EventArgs e)
        {
            
        }



        protected void btnaceptar0_Click(object sender, EventArgs e)
        {
            SaveProductPhoto();

            TheGym k = new TheGym
            {
                NombreEmpladoIns = tbnombre0.Text,
                ApellidoEmpleadoIns = tbapellido0.Text,
                FechaNacEmpleadoIns = Convert.ToDateTime(tbfechanacimiento2.Text),
                EmailEmpleadoIns = tbemail1.Text,
                FotoEmpleadoIns = "~/ImagenesSistema/" + FileUpload2.FileName, 
                TelefEmpleadoIns=Convert.ToInt32(tbtelefono1.Text),
                DomicilioEmpleadoIns=tbdireccion.Text,
                DNIEmpleadoIns= Convert.ToInt32(tbdni0.Text),
                FechaContEmpleadoIns=Convert.ToDateTime(tbfechacontratacion0.Text),
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



        protected void btncancelar_Click1(object sender, EventArgs e)
        {
            tbnombre0.Text = ("");
            tbapellido0.Text = ("");
            tbdni0.Text = ("");
            tbemail1.Text = ("");
            tbfechanacimiento2.Text = ("");
            tbtelefono1.Text = ("");
        }

        private void SaveProductPhoto()
        {
            if (FileUpload2.PostedFile != null)
            {
                string filename = FileUpload2.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(FileUpload2.FileName);

                if (filename.Length > 96)
                {
                    //Alert.Show("image name should not exceed 96 characters!");
                }
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                    //Alert.Show("Only jpeg, jpg, bmp & png images are allowed!");
                }
                else if (FileUpload2.PostedFile.ContentLength > 40000000)
                {
                    //Alert.Show("Image size shold not be greater than 40MB !");
                }
                else
                {
                    FileUpload2.SaveAs(Server.MapPath("~/ImagenesSistema/" + filename));
                }
            }
        }


    }
}