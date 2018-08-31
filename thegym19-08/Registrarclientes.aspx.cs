using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using thegym19_08.BusinessLayer;
//librerias que nos permiten redimensionar la imagen
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;

namespace thegym19_08
{
    public partial class Registrarclientes : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            LblReg.Text = ("");

        }

        private void SaveClienteFoto()
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

        protected void btncancelar_Click1(object sender, EventArgs e)
        {
            tbnombre0.Text = ("");
            tbapellido0.Text = ("");
            tbdni0.Text = ("");
            tbemail1.Text = ("");
            tbfechanacimiento1.Text = ("");
            tbtelefono1.Text = ("");
        }



        protected void btnaceptar0_Click(object sender, EventArgs e)
        {
            try
            {
                SaveClienteFoto();
                //Configuracion para registrar cliente en la base de datos
                //Creo el objeto k
                TheGym k = new TheGym
                {
                    NombreCliente = tbnombre0.Text,
                    ApellidoCliente = tbapellido0.Text,
                    EmailCliente = tbemail1.Text,
                    FechaCliente = tbfechanacimiento1.Text,
                    TelefonoCliente = tbtelefono1.Text,
                    DomicilioCliente = tbdomicilio.Text,
                    DNICliente = tbdni0.Text,
                    FotoCliente = "~/ImagenesSistema/" + fuImage.FileName
                };

                try
                {
                    k.AddNewCliente();
                    LblReg.Text = ("Cliente registrado con éxito.");

                }
                catch
                {

                }
                tbnombre0.Text = string.Empty;
                tbapellido0.Text = string.Empty;
                tbfechanacimiento1.Text = string.Empty;
                tbemail1.Text = string.Empty;
                tbtelefono1.Text = string.Empty;
                tbdomicilio.Text = string.Empty;
                tbdni0.Text = string.Empty;
            }

            catch (Exception ex)
            {

                LblReg.Text = ex.Message.ToString();
            }


     }
           

 }

}




