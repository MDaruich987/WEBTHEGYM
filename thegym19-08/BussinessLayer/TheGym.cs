using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using thegym19_08.DataLayer;


namespace thegym19_08.BusinessLayer
{
    public class TheGym
    {
        //POR FAVOR, COMENTAR TODO.
        //variables para realizar el registro de sucursal
        public string NombreSucursal;
        public string DireccionSucursal;
        public long TelefonoSucursal;
        //variable para realizar la busqueda de cliente
        public string NombreClienteBusc;
        public string DNIClienteBusc="0";
        //variables para realizar la consulta de empleado
        public string NombreEmpleadoBusc;
        public string DNIEmpleadoBusc = "";
        public string CargoEmpleadoBusc = "";
        //variables para realizar registro de empleado
        public string NombreEmpladoIns;
        public string ApellidoEmpleadoIns;
        public DateTime FechaNacEmpleadoIns;
        public string EmailEmpleadoIns;
        public long TelefEmpleadoIns;
        public string FotoEmpleadoIns;
        public string DomicilioEmpleadoIns;
        public int DNIEmpleadoIns;
        public DateTime FechaContEmpleadoIns;
        public string TitulEmpleadoIns;
        public string ExperEmpleadoIns;
        public int CargoEmpleadoIns;
        //variables para realizar la edicion de Cliente
        public string DNIEditar="0";
        public string NombreClienteEditar;
        public string ApellidoClienteEditar;
        public string TelefonoClienteEditar;
        public string DomicilioClienteEditar;
        public string FechaClienteEditar;
        public string EmailClienteEditar;
        public string DNIClienteEditar;
        //variables para consultar una actividad
        public string NombreActividadBuscar;
        //variables para consultar cliente
        public string NombreClienteBuscar;
        //variables para registrar actividad
        public string NombreActividad;
        public string ProfesorActividad;
        public string SucursalActividad;
        public string HorarioInicioActividad;
        public string HorarioFinActividad;
        public string CuposActividad;
        public string DescripcionActividad;
        // variables para registrar cliente
        public string NombreCliente;
        public string ApellidoCliente;
        public string FechaCliente;
        public string EmailCliente;
        public string TelefonoCliente;
        public string DomicilioCliente;
        public string DNICliente;
        public string FotoCliente;
        //variables para registrar plan
        public string Nombreplanins;
        public string duracionplanins;
        public string precioplanins;
        //variables para registrar Detalles de Plan
        public string FK_plan;
        public string FK_actividad;
        public string Dias_semanas;
        //variables para editar Empleado
        public string NombreEmpleadoEdit;
        public string ApellidoEmpleadoEdit;
        public string DNIEmpleadoEdit;
        public string DomicilioEmpleadoEdit;
        public string TelefonoEmpleadoEdit;
        public string EmailEmpleadoEdit;
        public string FechaNacEmpleadoEdit;
        public string TituloEmpleadoEdit;
        public string ExperienciaEmpleadoEdit;
        public string CargoEmpleadoEdit;
        //variables para editar Actividad
        public string NombreActividadEdit;
        public string SucursalActividadEdit;
        public string DescripcionActividadEdit;
        public string ProfesorActividadEdit;
        public string HorarioInicioEdit;
        public string HorarioFinEdit;
        public string CuposActividadEdit;
        public string IdEmpleado;
        public string IdActividad;
        public string IdSucursal;
        //variable para encontrar id de profesor
        public string NombreProfesor;
        public string ApellidoProfesor;
        //variable buscar plan
        public string NombrePlanBusc;
        //variable buscar Detalle Plan
        public string IdPlanBuscar;
        //variables para actualizar DetPlan
        public string idActDetPlan;
        public string IdActividadDetPlanEdit;
        public string IdPlanDetPlanEdit;
        public string DiasDetPlanEdit;
        //variable para actualizar plan
        public string NombrePlanEdit;
        public string PrecioPlanEdit;
        public string DuracionPlanEdit;
        //variables para registrar apertura y cierre de caja 
        public string FK_empleado;
        public string FK_caja;
        public string Estadocaja;
        public string Monto;
        public string FechaCaja;
        public string FK_det_caja;
        //variable para Cargar sucursal
        public string IdEmpleadoCargaSuc;
        //variable para cargar caja
        public string IdSucursalCarga;
        //varaible para buscar monto de plan
        public string IdPlanMonto;
        //Variable para buscar ID det pla
        public string FechaIdDetCaja;
        //variables para registrar movimiento de caja
        public string FKFormaPagoMov;
        public string FKDetCajaMov;
        public string MontoMov;
        public string EstadoMov;
        public string ConceptoMov;
        public string ComprobanteMov;
        public string HoraMov;


        public DataTable GetAllCaja()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Id_sucursal", IdSucursalCarga, SqlDbType.Int,50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllCaja", parameters);
            return dt;
        }

        public void AddMovimientoCaja()
        {
            SqlParameter[] parameters = new SqlParameter[7];
            parameters[0] = DataLayer.DataAccess.AddParameter("@FK_formapago", FKFormaPagoMov, SqlDbType.Int, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Monto", MontoMov, SqlDbType.Money, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Estado", EstadoMov, SqlDbType.NVarChar, 20);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Concepto", ConceptoMov, SqlDbType.NVarChar, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Comprobante", ComprobanteMov, SqlDbType.NVarChar, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@FK_DetCaja", FKDetCajaMov, SqlDbType.Int, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@Hora", HoraMov, SqlDbType.Time, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddMovCaja", parameters);
        }

        public DataTable GetAllSucursal()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Id_empleado" ,IdEmpleadoCargaSuc, SqlDbType.Int,50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllSucursal", parameters);
            return dt;
        }

        //Metodo para apertura y cierre de caja
        public void AperturaDeCaja()
        {
            SqlParameter[] parameters = new SqlParameter[5];
            parameters[0] = DataLayer.DataAccess.AddParameter("@FK_caja", FK_caja, SqlDbType.Int, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@FK_empleado", FK_empleado, SqlDbType.Int, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@estado", Estadocaja, SqlDbType.NVarChar, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@monto", Monto, SqlDbType.Money, 50);
            parameters[4] = DataLayer.DataAccess.AddParameter("@fecha", FechaCaja, SqlDbType.Date, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AperturaCaja", parameters);
        }

        public DataTable CierreDeCaja()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@FK_DetCaja", FK_det_caja, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_CierreCaja", parameters);
            return dt;
        }
        public void UpdatePlan()
        {
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = DataLayer.DataAccess.AddParameter("@IdPlan", IdPlanBuscar, SqlDbType.Int, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Nombre", NombrePlanEdit, SqlDbType.VarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Precio", PrecioPlanEdit, SqlDbType.Money, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Duracion", DuracionPlanEdit, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_UpdatePlan", parameters);
        }


        public void UpdateDetPlan()
        {
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = DataLayer.DataAccess.AddParameter("@IdAct", idActDetPlan, SqlDbType.Int, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Id_plan", IdPlanDetPlanEdit, SqlDbType.Int, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Id_actividad", IdActividadDetPlanEdit, SqlDbType.Int, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Dias_semanas", DiasDetPlanEdit, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_UpdateDetPlan", parameters);

        }

        public void UpdateActividad()
        {
            SqlParameter[] parameters = new SqlParameter[10];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Id_sucursal", IdSucursal, SqlDbType.Int, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Id_empleado", IdEmpleado, SqlDbType.Int, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Id_actividad", IdActividad, SqlDbType.Int, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Nombre", NombreActividadEdit, SqlDbType.NVarChar, 50);
            parameters[4] = DataLayer.DataAccess.AddParameter("@FK_empleado", ProfesorActividadEdit, SqlDbType.Int, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Cupos", CuposActividadEdit, SqlDbType.Int, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@Hora_inicio", HorarioInicioEdit, SqlDbType.Time, 50);
            parameters[7] = DataLayer.DataAccess.AddParameter("@Hora_fin", HorarioFinEdit, SqlDbType.Time, 50);
            parameters[8] = DataLayer.DataAccess.AddParameter("@Descripcion", DescripcionActividadEdit, SqlDbType.NVarChar, 500);
            parameters[9] = DataLayer.DataAccess.AddParameter("@FK_sucursal", SucursalActividadEdit, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_UpdateActividad", parameters);
        }

        public DataTable GetIdDetCaja()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Fecha", FechaIdDetCaja, SqlDbType.Date, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetIdDetCaja", parameters);
            return dt;
        }


        public DataTable GetIdProfesor()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreProfesor, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Apellido", ApellidoProfesor, SqlDbType.NVarChar, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetIdProfesor", parameters);
            return dt;
        }

        public void UpdateEmpleado()
        {
            SqlParameter[] parameters = new SqlParameter[11];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreEmpleadoEdit, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Apellido", ApellidoEmpleadoEdit, SqlDbType.NVarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Fecha_nac", FechaNacEmpleadoEdit, SqlDbType.Date, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Email", EmailEmpleadoEdit, SqlDbType.NVarChar, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Telefono", TelefonoEmpleadoEdit, SqlDbType.BigInt, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Domicilio", DomicilioEmpleadoEdit, SqlDbType.NVarChar, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@DNI", DNIEmpleadoEdit, SqlDbType.Int, 50);
            parameters[7] = DataLayer.DataAccess.AddParameter("@DNIEdit", DNIEditar, SqlDbType.Int, 50);
            parameters[8] = DataLayer.DataAccess.AddParameter("@Titulo", TituloEmpleadoEdit, SqlDbType.NVarChar, 50);
            parameters[9] = DataLayer.DataAccess.AddParameter("@Experiencia", ExperienciaEmpleadoEdit, SqlDbType.NVarChar, 1000);
            parameters[10] = DataLayer.DataAccess.AddParameter("@Cargo", CargoEmpleadoEdit, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_UpdateEmpleado", parameters);
        }

        //métodos
        //método para agregar una nueva sucursal

        public void AddNewSucursal()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreSucursal, SqlDbType.VarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Direccion", DireccionSucursal, SqlDbType.VarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Telefono", TelefonoSucursal, SqlDbType.BigInt, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddSucursal", parameters);
        }

        public void AddNewEmpleado()
        {
            SqlParameter[] parameters = new SqlParameter[12];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreEmpladoIns, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Apellido", ApellidoEmpleadoIns, SqlDbType.NVarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Fecha_nac", FechaNacEmpleadoIns, SqlDbType.Date, 20);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Email", EmailEmpleadoIns, SqlDbType.NVarChar, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Telefono", TelefEmpleadoIns, SqlDbType.BigInt, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Domicilio", DomicilioEmpleadoIns, SqlDbType.NVarChar, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@DNI", DNIEmpleadoIns, SqlDbType.Int, 100);
            parameters[7] = DataLayer.DataAccess.AddParameter("@Fecha_cont", FechaContEmpleadoIns, SqlDbType.DateTime, 100);
            parameters[8] = DataLayer.DataAccess.AddParameter("@Titulo", TitulEmpleadoIns, SqlDbType.NVarChar, 50);
            parameters[9] = DataLayer.DataAccess.AddParameter("@Experiencia", ExperEmpleadoIns, SqlDbType.NVarChar, 1000);
            parameters[10] = DataLayer.DataAccess.AddParameter("@FK_cargo", CargoEmpleadoIns, SqlDbType.Int, 10);
            parameters[11] = DataLayer.DataAccess.AddParameter("@Foto", FotoEmpleadoIns, SqlDbType.NVarChar, 500);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddEmpleado", parameters);
        }

        //metodo para agregar un nuevo plan
        public void AddNewPlan()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", Nombreplanins, SqlDbType.VarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Duracion", duracionplanins, SqlDbType.Int, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Precio", precioplanins, SqlDbType.Money, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddPlan", parameters);
        }

        //método para agregar una nueva actividad

        public void AddNewActividad()
        {
            SqlParameter[] parameters = new SqlParameter[7];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre",NombreActividad,SqlDbType.VarChar,50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Profesor", ProfesorActividad, SqlDbType.Int, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Sucursal", SucursalActividad, SqlDbType.Int, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Cupos", CuposActividad, SqlDbType.Int, 50);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Hora_inicio", HorarioInicioActividad, SqlDbType.Time, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Hora_fin", HorarioFinActividad, SqlDbType.Time, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@Descripcion", DescripcionActividad, SqlDbType.VarChar, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddActividad", parameters);
        }


        //método para consultar un cliente
        public DataTable GetClienteNom()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreClienteBusc, SqlDbType.VarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@DNI", DNIClienteBusc, SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetCliente", parameters);
            return dt;
        }

        //método para consultar un empleado
        public DataTable GetEmpleadoNom()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreEmpleadoBusc, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@DNI", DNIEmpleadoBusc, SqlDbType.Int, 50);
            //parameters[2] = DataLayer.DataAccess.AddParameter("@FK_cargo", CargoEmpleadoBusc, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetEmpleado", parameters);
            return dt;
        }

        public void UpdateCliente()
        {
            SqlParameter[] parameters = new SqlParameter[8];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreClienteEditar, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Apellido", ApellidoClienteEditar, SqlDbType.NVarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Fecha_nac", FechaClienteEditar, SqlDbType.Date, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Email", EmailClienteEditar, SqlDbType.NVarChar, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Telefono", TelefonoClienteEditar, SqlDbType.BigInt, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Domicilio", DomicilioClienteEditar, SqlDbType.NVarChar, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@DNI", DNIClienteEditar, SqlDbType.Int, 100);
            parameters[7] = DataLayer.DataAccess.AddParameter("@DNIEdit", DNIEditar, SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_UpdateCliente", parameters);
        }

        public DataTable GetActividad()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre",NombreActividadBuscar,SqlDbType.VarChar,50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetActividad", parameters);
            return dt;
        }

        public DataTable GetCargos()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllCargos",parameters);
            return dt;
        }


        //Obtener todos los profesores
        public DataTable GetProfesores()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllProfesores", parameters);
            return dt;
        }

        public DataTable GetSucursales()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllSucursales", parameters);
            return dt;
        }

        //Metodo para Registrar Cliente 
        public void AddNewCliente()
        {
            SqlParameter[] parameters = new SqlParameter[8];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreCliente, SqlDbType.NVarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Apellido", ApellidoCliente, SqlDbType.NVarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Fecha_Nac", FechaCliente, SqlDbType.Date, 50);
            parameters[3] = DataLayer.DataAccess.AddParameter("@Email", EmailCliente, SqlDbType.NVarChar, 100);
            parameters[4] = DataLayer.DataAccess.AddParameter("@Telefono", TelefonoCliente, SqlDbType.BigInt, 50);
            parameters[5] = DataLayer.DataAccess.AddParameter("@Domicilio", DomicilioCliente, SqlDbType.NVarChar, 50);
            parameters[6] = DataLayer.DataAccess.AddParameter("@DNI", DNICliente, SqlDbType.Int, 100);
            parameters[7] = DataLayer.DataAccess.AddParameter("@Foto", FotoCliente, SqlDbType.NVarChar, 500);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddCliente", parameters);
        }



        public DataTable GetActividades()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllActividades", parameters);
            return dt;
        }

        public DataTable GetLastPlan()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetLastPlan", parameters);
            return dt;
        }

        public void AddDetallePlan()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters [0] = DataLayer.DataAccess.AddParameter("@FK_plan", FK_plan, SqlDbType.Int, 100);
            parameters[1] = DataLayer.DataAccess.AddParameter("@FK_actividad", FK_actividad, SqlDbType.Int, 100);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Dias_semana", FK_actividad, SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddDetallePlan", parameters);
        }

        public DataTable GetPlans()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombrePlanBusc, SqlDbType.VarChar, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetPlans", parameters);
            return dt;
        }

        public DataTable GetAllPlans()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            //parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombrePlanBusc, SqlDbType.VarChar, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllPlan", parameters);
            return dt;
        }

        public DataTable GetAllMedioPago()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            //parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombrePlanBusc, SqlDbType.VarChar, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetAllMedioPago", parameters);
            return dt;
        }

        public DataTable GetEstadoDetCaja()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Fecha", FechaIdDetCaja, SqlDbType.Date, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetEstadoDetCaja", parameters);
            return dt;
        }

        public DataTable GetEstadoDetCajaAP()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Fecha", FechaIdDetCaja, SqlDbType.Date, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetEstadoDetCajaAP", parameters);
            return dt;
        }


        public DataTable GetTotalPlan()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Id_plan", IdPlanMonto, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetMontoPlan", parameters);
            return dt;
        }

        public DataTable GetDetPlan()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Id_plan", IdPlanBuscar, SqlDbType.Int, 50);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetDetPlan", parameters);
            return dt;
        }





    }
}