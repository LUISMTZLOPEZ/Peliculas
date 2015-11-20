using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace Peliculas.Data
{
    public class DatCatalogos
    {
          public SqlConnection con;
        public DatCatalogos()
        {
            con = new SqlConnection("Data Source =TORO-PC\\MSSQLSERVER2012; initial catalog=Cinepolis; user Id=sa; Password=12345;");
        }
        public DataTable obtenerGeneroCompleto()
        {
            SqlCommand com = new SqlCommand("spObtenerGeneroCompleto", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        public DataTable obtenerClasificacionCompleto()
        {
            SqlCommand com = new SqlCommand("spObtenerClasificacionCompleto", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}
