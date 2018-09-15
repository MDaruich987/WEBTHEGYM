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
    public partial class RegistrarCorbroPlan : System.Web.UI.Page
    {
        static string aux;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (CkbDNI.Checked)
            {
                TheGym k = new TheGym();
                k.DNIClienteBusc = TxBuscar.Text;
                k.NombreClienteBusc = "";
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                TheGym k = new TheGym();
                k.NombreClienteBusc = TxBuscar.Text;
                DataTable dt = k.GetClienteNom();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }



        }

        private void GetAllPlan()
        {
            TheGym k = new TheGym();
            DataTable dt = new DataTable();
            dt = k.GetAllPlans();
            if (dt.Rows.Count > 0)
            {
                //DdlPlan.Items.Add("Seleccione...");
                //DdlPlan.DataSource = dt;
                DdlPlan.DataTextField = "Nombre";
                DdlPlan.DataValueField = "Id_plan";
                
                DdlPlan.DataSource = dt;
                DdlPlan.DataBind();
                // DdlPlan.Items.Add("Seleccione...");
                DdlPlan.Items.Insert(0, "Seleccione...");

            }
        }

        private void GetAllMedioPago()
        {
            TheGym k = new TheGym();
            DataTable dt = new DataTable();
            dt = k.GetAllMedioPago();
            if (dt.Rows.Count > 1)
            {
                DdlMedioPago.DataTextField = "descripcion";
                DdlMedioPago.DataValueField = "id_formapago";
                DdlMedioPago.DataSource = dt;
                DdlMedioPago.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblDatos.Visible = true;
            LblCliente.Visible = true;
            TxCliente.Visible = true;
            LblFecha.Visible = true;
            TxFecha.Visible = true;
            LblPlan.Visible = true;
            DdlPlan.Visible = true;
            TxTotal.Visible = true;
            LblTotal.Visible = true;
            //LblMedioPago.Visible = true;
            //DdlMedioPago.Visible = true;
            GetAllPlan();
            //GetAllMedioPago();
            //TxCliente.Text = GridView1.SelectedRow.Cells[1].Text;
            TxCliente.Text = GridView1.SelectedRow.Cells[2].Text + ", " + GridView1.SelectedRow.Cells[1].Text;
            TxFecha.Text = DateTime.Now.ToShortDateString();
        }

        protected void DdlPlan_SelectedIndexChanged(object sender, EventArgs e)
        {
            LblMedioPago.Visible = true;
            DdlMedioPago.Visible = true;
            GetAllMedioPago();
            aux = DdlPlan.SelectedValue;
            TheGym k = new TheGym
            {
                IdPlanMonto = aux
            };
            DataTable dt = new DataTable();
            dt = k.GetTotalPlan();
            TxTotal.Text = dt.Rows[0][0].ToString();
        }

        protected void DdlMedioPago_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlMedioPago.SelectedItem.Text == "Efectivo")
            {
                LblComprobante.Visible = false;
                TxbComprobante.Visible = false;
            }
            else
            {
                LblComprobante.Visible = true;
                TxbComprobante.Visible = true;
            }
        }

        protected void DdlPlan_TextChanged(object sender, EventArgs e)
        {
            LblMedioPago.Visible = true;
            DdlMedioPago.Visible = true;
            GetAllMedioPago();
            aux = DdlPlan.SelectedValue;
            if (aux != "Seleccione...")
            {
                TheGym k = new TheGym
                {
                    IdPlanMonto = aux
                };
                DataTable dt = new DataTable();
                dt = k.GetTotalPlan();
                TxTotal.Text = dt.Rows[0][0].ToString();
            }
            else
            {
                TxTotal.Text = "";
                LblMedioPago.Visible = false;
                DdlMedioPago.Visible = false;
            }
            //TheGym k = new TheGym
            //{
            //    IdPlanMonto = aux
            //};
            //DataTable dt = new DataTable();
            //dt = k.GetTotalPlan();
            //TxTotal.Text = dt.Rows[0][0].ToString();
        }

        //public int GetIdDetCaja (string fecha)
        //{
        //    int ID;
        //    DataTable dt = new DataTable();
        //    TheGym k = new TheGym
        //    {
        //        FechaIdDetCaja = TxFecha.Text
        //    };
        //    dt = k.GetEstadoDetCaja();
        //    if (dt.Rows.Count > 0)
        //    {

        //    }
        //    else
        //    {

        //    }

        //    return ID;
        //}

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            string ID;
            DataTable dt = new DataTable();
            TheGym k = new TheGym
            {
                FechaIdDetCaja = TxFecha.Text
            };
            dt = k.GetEstadoDetCaja();
            if (dt.Rows.Count <1)
            {
                //dt = ;
                //ID = Session["IdSession"]; GetIdDetCaja
                //ID = 3;
                DataTable dt1 = new DataTable();
                dt1 = k.GetEstadoDetCajaAP();
                if (dt1.Rows.Count>0)
                {
                    DataTable dt2 = new DataTable();
                    dt2 = k.GetIdDetCaja();
                    ID = dt2.Rows[0][0].ToString();
                    k.FKDetCajaMov = ID;
                    k.FKFormaPagoMov = DdlMedioPago.SelectedValue.ToString();
                    k.EstadoMov = "Ingreso";
                    k.ComprobanteMov = TxbComprobante.Text;
                    k.MontoMov = TxTotal.Text;
                    k.ConceptoMov = "Pago Plan";
                    k.HoraMov = Convert.ToString(DateTime.Now.TimeOfDay);

                    k.AddMovimientoCaja();
                }
                else
                {
                    LblError.Visible = true;
                    LblError.Text = "Caja No Abierta";
                    LblError.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                LblError.Visible = true;
                LblError.Text="Caja Cerrada";
                LblError.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}