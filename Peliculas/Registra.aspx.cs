using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Peliculas.Bussines.Entity;
using Peliculas.Bussines;

public partial class Registra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //    protected void btnEntrar_Click(object sender, EventArgs e)
    //    { 
    
    // try
    //    {
    //        EntUsuario ent = new EntUsuario();
    //        ent.Password = txtcontra
    //        ent.Correo = txtEmailUno.Text;

    //        EntUsuario log = new BusPelicula().obtenerUsuario();
    //        if (log != null)
    //        {
    ////            Session["123"] = log;
    //            Response.Redirect("Libros.aspx");
    //        }
    //        else
    //            throw new ApplicationException("Usuario y/o contraseña incorrectos,  :(");
    //    }
    //    catch (Exception ex)
    //    {
    //        ScriptManager.RegisterStartupScript(this, GetType(), "", ex.Message, true);
    //    }
    //}



    public void MostrarMensaje(string mensaje)
    {
        string script = "alert('" + mensaje.Replace("\"", "'") + "');";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "error", script, true);
    }
    
    
   
}