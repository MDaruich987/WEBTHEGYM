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
//librerias que nos permiten redimensionar la imagen
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;


namespace thegym19_08
{
    public partial class RegistrarEmpleados : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["inicio"] != null)
            {
                lblbienvenida.Text = "Bienvenido " + Session["inicio"].ToString();
                string usuario = Session["inicio"].ToString();
            }


            LblReg.Text = ("");

            if (!IsPostBack)
            {
                //AddSubmitEvent();
                GetCargos();
                
               
            }
        }

        //imagenes
        private void SaveEmpeladoFoto()
        {
            if (fuImage.PostedFile != null)
            {
                string filename = fuImage.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(fuImage.FileName);

                if (filename.Length > 96)
                {
                    LblReg.Text = ("El nomnre de la imagen no debe exceder los 96 caracteres");
                }
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                    LblReg.Text = ("Solo se admiten formatos como jpeg, jpg, bmp & png ");
                }
                else if (fuImage.PostedFile.ContentLength > 40000000)
                {
                    LblReg.Text = ("El tamaño de la imagen no debe ser mayor a 40MB !");
                }
                else
                {

                    //fuImage.SaveAs(Server.MapPath("~/ImagenesSistema/" + filename));
                    try
                    {
                        int alto;
                        int ancho;
                        ///////
                        // como no se puede obtener el path directo del upload file, lo que hacemos es guardarla en una carpeta distinta con su tamaño original
                        fuImage.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fuImage.PostedFile.FileName);
                        System.Drawing.Image img;
                        //importamos la libreria drawing y abrimos la imagen en un bitmap
                        Bitmap imagen = new Bitmap(Server.MapPath("~/Uploads/") + fuImage.PostedFile.FileName);
                        //obtenemos su alto y ancho
                        ancho = imagen.Width;
                        alto = imagen.Height;
                        //la redimensionamos con el metodo resizeImage
                        if (alto > ancho)
                        {
                            img = ResizeImage(imagen, 150, 130);
                        }
                        else
                        {
                            img = ResizeImage(imagen, 150, 150);
                        }

                        img.Save(Server.MapPath("~/ImagenesSistema/") + tbnombre0.Text + ".jpg");
                        ///////
                        LblReg.Text = "El producto se agregó correctamente";
                    }
                    catch (Exception)
                    {

                        LblReg.Text = "La imagen no se agregó correctamente";
                    }
                }
            }

        }

        //utilizamos este metodo para redimensionar la imagen
        public static System.Drawing.Image ResizeImage(System.Drawing.Image srcImage, int newWidth, int newHeight)
        {
            using (Bitmap imagenBitmap =
               new Bitmap(newWidth, newHeight, PixelFormat.Format32bppRgb))
            {
                imagenBitmap.SetResolution(
                   Convert.ToInt32(srcImage.HorizontalResolution),
                   Convert.ToInt32(srcImage.HorizontalResolution));

                using (Graphics imagenGraphics =
                        Graphics.FromImage(imagenBitmap))
                {
                    imagenGraphics.SmoothingMode =
                       SmoothingMode.AntiAlias;
                    imagenGraphics.InterpolationMode =
                       InterpolationMode.HighQualityBicubic;
                    imagenGraphics.PixelOffsetMode =
                       PixelOffsetMode.HighQuality;
                    imagenGraphics.DrawImage(srcImage,
                       new Rectangle(0, 0, newWidth, newHeight),
                       new Rectangle(0, 0, srcImage.Width, srcImage.Height),
                       GraphicsUnit.Pixel);
                    MemoryStream imagenMemoryStream = new MemoryStream();
                    imagenBitmap.Save(imagenMemoryStream, ImageFormat.Jpeg);
                    srcImage = System.Drawing.Image.FromStream(imagenMemoryStream);
                }
            }
            return srcImage;
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

            try
            {
                SaveEmpeladoFoto();
                TheGym k = new TheGym
                {
                    NombreEmpladoIns = tbnombre0.Text,
                    ApellidoEmpleadoIns = tbapellido0.Text,
                    FechaNacEmpleadoIns = Convert.ToDateTime(tbfechanacimiento2.Text),
                    EmailEmpleadoIns = tbemail1.Text,
                    FotoEmpleadoIns = "~/ImagenesSistema/" + fuImage.FileName,
                    TelefEmpleadoIns = Convert.ToInt64(tbtelefono1.Text),
                    DomicilioEmpleadoIns = tbdireccion.Text,
                    DNIEmpleadoIns = Convert.ToInt32(tbdni0.Text),
                    FechaContEmpleadoIns = Convert.ToDateTime(tbfechacontratacion0.Text),
                    TitulEmpleadoIns = tbtitulo.Text,
                    ExperEmpleadoIns = tbexperiencia.Text,
                    CargoEmpleadoIns = Convert.ToInt32(ddlcargo.SelectedItem.Value),
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
            catch (Exception ex)
            {

                LblReg.Text = ex.Message.ToString();
            }


            
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
            if (fuImage.PostedFile != null)
            {
                string filename = fuImage.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(fuImage.FileName);

                if (filename.Length > 96)
                {
                    //Alert.Show("image name should not exceed 96 characters!");
                }
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                    //Alert.Show("Only jpeg, jpg, bmp & png images are allowed!");
                }
                else if (fuImage.PostedFile.ContentLength > 40000000)
                {
                    //Alert.Show("Image size shold not be greater than 40MB !");
                }
                else
                {
                    fuImage.SaveAs(Server.MapPath("~/ImagenesSistema/" + filename));
                }
            }
        }

        
    }
}