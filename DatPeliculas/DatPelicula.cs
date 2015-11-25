using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Peliculas.Data
{
    public class DatPelicula
    {
        public SqlConnection con;
        public DatPelicula()
        {
            con = new SqlConnection("Data Source =SYSTEMP3\\MSSQLSERVER2012; initial catalog=Cinepolis; user Id=sa; Password=12345;");
        }
        public DataTable obtener(int Id)
        {
            SqlCommand com = new SqlCommand("spObtenerPelicula", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable obtener()
        {
            SqlCommand com = new SqlCommand("spObtenerPeliculaCompleta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable obtenerEstrenos()
        {
            SqlCommand com = new SqlCommand("spObtenerEstrenos", con);
            com.CommandType = CommandType.StoredProcedure;
          //com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;

        }
        public DataTable Obtener(string Nombre, int Clasificacionid, int GeneroId, DateTime FechaLanz)
        {
            SqlCommand com = new SqlCommand("spObtenerPeliculas", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@Nombre", Value = Nombre });
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@ClasificacionId", Value = Clasificacionid });
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@GeneroId", Value = GeneroId });
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.SmallDateTime, ParameterName = "@AnioLanz", Value = FechaLanz });
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable obtenerGenero(int Id)
        {
            SqlCommand com = new SqlCommand("spObtenerGenero", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable obtenerClasificacion(int Id)
        {
            SqlCommand com = new SqlCommand("spObtenerClasificacion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
       
    }
}
