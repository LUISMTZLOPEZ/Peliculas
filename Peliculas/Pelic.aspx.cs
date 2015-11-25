using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Peliculas.Bussines;
using Peliculas.Bussines.Entity;


public partial class Pelic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CargarCarusel();
            CargarCaruselDos();
            CargarPelis();
        }

    }
    //private void LlenarGvPelis()
    //{
    //    GvPelis.DataSource = new BusPelicula().obtener();
    //    GvPelis.DataBind();
    //}

    private void MensajeError(Exception ex)
    {
        string alerta = "Error: " + ex.Message;
        ScriptManager.RegisterStartupScript(this, GetType(), "", alerta, true);

    }

    private void CargarPelis()
    {
        List<EntPelicula> lst = new List<EntPelicula>();
        lst = new BusPelicula().obtener();
        LiteralControl literal = new LiteralControl();
        foreach (EntPelicula ent in lst)
        {
            literal.Text += "<div class=\"col-sm-4\">";
            literal.Text += "<div class=\"panel panel-default\">";
            literal.Text += "    <div class=\"panel-heading\" style=\"height: 200px;\">";
            literal.Text += "      <div style=\"height: 150px; overflow: hidden; txt-align: center; \">";
            literal.Text += "        <img src=\"" + ent.FotoPortada + "\" class=\"img-responsive\" alt=" + ent.Nombre;
            literal.Text += "            style=\"margin:auto;\" />";
            literal.Text += "      </div>";
            literal.Text += ent.Nombre;
            literal.Text += "    </div>";
            literal.Text += "    <div class=\"panel-body\" style=\" height:500px;\">";
            literal.Text += "        <div class=\"row\">";
            literal.Text += "            <div class=\"col-xs-4\" style=\" overflow: hidden; height: 100px;\">";
            literal.Text += "                <img src=" + ent.FotoMini + " alt=" + ent.Nombre + " class=\"img-responsive\" />";
            literal.Text += "            </div>";
            literal.Text += "            <div class=\"col-xs-8\">";
            literal.Text += "                <span>Año: &nbsp&nbsp</span><label>" + ent.AnioLanzamiento.ToString("yyyy") + "</label><br />";
            literal.Text += "                <span>Clasificación: &nbsp&nbsp</span><label>" + ent.Clasificacion.Nombre + "</label><br />";
            literal.Text += "                <span>Genero: &nbsp&nbsp</span><label>" + ent.Genero.Nombre + "</label><br />";
            literal.Text += "                <span></span>";

            if (ent.Estatus)
                literal.Text += "<input type=\"checkbox\" disabled checked/>";
            else
                literal.Text += "<input type=\"checkbox\" disabled>";

            literal.Text += "<a href=\"AltaEdicion.aspx?ID=" + ent.Id.ToString() + "\"><img src=\"img/edit.png\" Id=\"imgEditar\" width=\"40px\"/></a>";
            literal.Text += "                <br />";
            literal.Text += "            </div>";
            literal.Text += "        </div>";
            literal.Text += "            <div id=\"Sinopsis\" style=\"text-align: center; margin: 5px auto;\">";
            literal.Text += "                <textarea id=\"txtSinopsis\" class=\"form-control\" cols=\"43\" rows=\"5\" style=\"text-align: justify; background-color:White \"                                                      disabled=\"disabled\">";
            literal.Text += ent.Sinopsis;
            literal.Text += "                </textarea>";
            literal.Text += "                <br />";
            literal.Text += "            </div>";
            literal.Text += "            <div id=\"video\" style=\"text-align:center; margin:5px auto\">";
            literal.Text += "                <iframe src=\"" + ent.Trailer + "\" frameborder=\"0\" allowfullscreen controls>";
            literal.Text += "                </iframe>";
            literal.Text += "            </div>";
            literal.Text += "    </div>";
            literal.Text += "</div>";
            literal.Text += "</div>";
        }
        phPelis.Controls.Add(literal);

    }

    private void CargarCarusel()
    {
        List<EntPelicula> lst = new List<EntPelicula>();
        lst = new BusPelicula().ObtenerEstrenos();
        LiteralControl literal = new LiteralControl();
        LiteralControl literal2 = new LiteralControl();
        literal.Text = "";
        literal2.Text = "";
        int contador = 0;

        foreach (EntPelicula ent in lst)
        {
            if (contador == 0)
                literal.Text += " <li data-target=\"#myCarousel\" data-slide-to=\"" + contador + "\" class=\"active\"></li>";
                
            else
                literal.Text += " <li data-target=\"#myCarousel\" data-slide-to=\"" + contador + "\" ></li>";


            if (contador == 0)
                literal2.Text += "<div  class=\"item active\">";
            else
                literal2.Text += "<div  class=\"item\">";

            literal2.Text += "       <img src=\"" + ent.FotoPortada + "\" style=\"margin: auto\" />";
            literal2.Text += "                            </div>";

            contador++;
        }
        phSliderUno.Controls.Add(literal);
        phSliderDos.Controls.Add(literal2);
    }
    private void CargarCaruselDos()
    {
        List<EntPelicula> lst = new List<EntPelicula>();
        lst = new BusPelicula().ObtenerEstrenos();
        LiteralControl literal3 = new LiteralControl();
        LiteralControl literal4 = new LiteralControl();
        literal3.Text = "";
        literal4.Text = "";
        int contador = 0;

        foreach (EntPelicula ent in lst)
        {
            if (contador == 0)
                literal3.Text += " <li data-target=\"#myCarousel\" data-slide-to=\"" + contador + "\" class=\"active\"></li>";
            else
                literal3.Text += " <li data-target=\"#myCarousel\" data-slide-to=\"" + contador + "\" ></li>";


            if (contador == 0)
                literal4.Text += "<div class=\"item active\">";
            else
                literal4.Text += "<div class=\"item\">";

            literal4.Text += "   <img src=\"" + ent.FotoPortada + "\" style=\"margin: auto\" />";
            literal4.Text += "     </div>";

            contador++;
        }
        phSliderTres.Controls.Add(literal3);
        phSliderCuatro.Controls.Add(literal4);
    }

}






