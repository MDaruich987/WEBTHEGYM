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
        public string NombreSucursal;
        public string DireccionSucursal;
        public long TelefonoSucursal;

        public string NombreClienteBusc;
        public string DNIClienteBusc="0";

        public string DNIEditar="0";
        public string NombreClienteEditar;
        public string ApellidoClienteEditar;
        public string TelefonoClienteEditar;
        public string DomicilioClienteEditar;
        public string FechaClienteEditar;
        public string EmailClienteEditar;
        public string DNIClienteEditar;

        public void AddNewSucursal()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreSucursal, SqlDbType.VarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@Direccion", DireccionSucursal, SqlDbType.VarChar, 50);
            parameters[2] = DataLayer.DataAccess.AddParameter("@Telefono", TelefonoSucursal, SqlDbType.BigInt, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_AddSucursal", parameters);
        }

        public DataTable GetClienteNom()
        {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParameter("@Nombre", NombreClienteBusc, SqlDbType.VarChar, 50);
            parameters[1] = DataLayer.DataAccess.AddParameter("@DNI", DNIClienteBusc, SqlDbType.Int, 100);
            DataTable dt = DataLayer.DataAccess.ExcecuteDTbyProcedure("PA_GetCliente", parameters);
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


    }
}