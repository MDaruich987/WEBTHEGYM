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

        static DataTable Tabla = new DataTable();
        static DataTable TablaID = new DataTable();
        static int tam = 0;
        DataRow Row;
        DataColumn Column;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetActividad();

                if (tam == 0)
                {
                    Column = new DataColumn();
                    Column.DataType = System.Type.GetType("System.Int32");
                    Column.ColumnName = "Id_actividad";
                    TablaID.Columns.Add(Column);

                    Column = new DataColumn();
                    Column.DataType = System.Type.GetType("System.String");
                    Column.ColumnName = "Nombre Actividad";
                    Tabla.Columns.Add(Column);

                    Column = new DataColumn();
                    Column.DataType = System.Type.GetType("System.Int32");
                    Column.ColumnName = "Dias por Semana";
                    Tabla.Columns.Add(Column);

                    tam = 1;


                }
                //Column = new DataColumn();
                //Column.DataType = System.Type.GetType("System.String");
                //Column.ColumnName = "Nombre Actividad";
                //Tabla.Columns.Add(Column);

                //Column = new DataColumn();
                //Column.DataType = System.Type.GetType("System.Int32");
                //Column.ColumnName = "Dias por Semana";
                //Tabla.Columns.Add(Column);


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
            string idplan;

            DataTable aux1 = new DataTable();

            TheGym k = new TheGym
            {
                Nombreplanins = tbnombre.Text,
                duracionplanins = ListBox1.SelectedValue,
                precioplanins = tbprecio.Text
            };

            k.AddNewPlan();


            aux1 = k.GetLastPlan();

            DataRow fila = aux1.Rows[0];

            idplan = fila[0].ToString();

            int aux = Tabla.Rows.Count;

            for (int i=aux;i>0; i--)
            {
                k.FK_plan = idplan;

                fila = TablaID.Rows[i-1];

                k.FK_actividad = fila[0].ToString();

                fila = Tabla.Rows[i - 1];
                k.Dias_semanas = fila["Dias por Semana"].ToString();
                
                k.AddDetallePlan();

                Tabla.Rows.RemoveAt(i-1);
                TablaID.Rows.RemoveAt(i-1);

            }

            tbnombre.Text = string.Empty;
            tbprecio.Text = string.Empty;

            gvactividadesincluidasenplan.Dispose();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombreact;
            string cantact;
            string idact;

            idact = ddlactividad.SelectedValue;
            nombreact = ddlactividad.SelectedItem.Text;
            cantact = ListBox2.SelectedItem.Text;

            Row = TablaID.NewRow();
            Row["Id_actividad"] = idact;
            TablaID.Rows.Add(Row);

            Row = Tabla.NewRow();
            Row["Nombre Actividad"] = nombreact;
            Row["Dias por Semana"] = cantact;
            Tabla.Rows.Add(Row);

            gvactividadesincluidasenplan.DataSource = Tabla;
            gvactividadesincluidasenplan.DataBind();
        }
    }


    }
