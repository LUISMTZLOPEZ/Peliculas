<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pelic.aspx.cs" Inherits="Pelic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
    <style>
        body
        {
            background-image: url(img/kara.jpg);
           
            background-size:1280px 600px;
            background-repeat: no-repeat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row" style="margin: auto ">
            <div class="col-xs-7">
                <asp:Label style="font-size: 15px;color: #F5F5F5; " Text="'Bien Venid@'" ID="lblBienVenido" runat="server" />
            </div>
            <div class="col-xs-2 " style="width: 100px; height: 80px;">
             <a class="modal-dialog modal-sm"  style="font-size: 15px; color: #F5F5F5" data-toggle="modal" data-target="#myModal">Registrate</a>
         <%--   <a class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Registrate</a>--%>
                
            </div>
            <div class="col-xs-3 " style="width: 120px; height: 80px; top: 0px; left: 30px;">
            <a class="modal-dialog modal-sm"  style="font-size: 15px; color: #F5F5F5" data-toggle="modal" data-target="#myModalUNO">Inicar sesion</a>
              <%--  <a class="modal-dialog modal-sm" style="font-size: 15px; color: #F5F5F5">Inicar sesion</a>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12">
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-xs-5">
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <asp:PlaceHolder runat="server" ID="phSliderUno" />
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <asp:PlaceHolder runat="server" ID="phSliderDos" />
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                            Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                                data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                                </span><span class="sr-only">Next</span> </a>
                </div>
                <div class="col-xs-2">
                </div>
                <div class="col-xs-5">
                    <div id="CaruselDos" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        <ol class="carousel-indicators">
                            <asp:PlaceHolder runat="server" ID="phSliderTres" />
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <asp:PlaceHolder runat="server" ID="phSliderCuatro" />
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#CaruselDos" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                            Previous</span> </a><a class="right carousel-control" href="#CaruselDos" role="button"
                                data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                                </span><span class="sr-only">Next</span> </a>
                </div>
            </div>
            <div class="row" style="width: 200px; height: 80px;">
                <div class="col-xs-12">
                </div>
            </div>
            <div class="row">
          
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <%--<img style="position:absolute; margin-left:10px" src="/img/barr1.png" border="0">--%>
                    <%--<img src="/img/bootstrap_3/componentes-barra-navegacion-invertida.png" alt="Barra de navegación invertida en Bootstrap 3"/>--%>
                    <div class="panel-heading" style="background-color: #0014FF; text-align: center;
                        font: oblique bold 120% cursive;">
                        Recuarda que puedes encontrar una mayor varidad de peliculas "Disfruta"</div>
                    <div class="panel-body" style="background-color: #333333; padding-left:auto; padding:10px">
                        <div class="col-md-2">
                            <asp:DropDownList CssClass="form-control" runat="server" ID="ddlClas" AppendDataBoundItems="true"
                                AutoPostBack="true">
                                <asp:ListItem Text="[Genero]" Value="-1" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:DropDownList CssClass="form-control" runat="server"  ID="DropDownList1" AppendDataBoundItems="true"
                                AutoPostBack="true">
                                <asp:ListItem Text="[Clasificacion]" Value="-1" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server">Nombre</asp:TextBox>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <div class='input-group date' id='datetimepicker1'>
                                    <input type='text' class="form-control" />
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <asp:ImageButton ImageUrl="img/087837-ultra-glossy-silver-button-icon-business-magnifying-glass-ps_opt.png"
                                runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="panel-body " style="background-color :Black">
                <asp:PlaceHolder runat="server" ID="phPelis" />
                    </div>
                
            </div>
        </div>
    </div>
    <asp:GridView runat="server" ID="GvPelis" />
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title">
                        Login</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Email</span>
                        <asp:TextBox runat="server" ID="txtEmailDos" class="form-control" placeholder="Email" />
                    </div>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Contraseña</span>
                        <asp:TextBox runat="server" ID="txtContraDos" class="form-control" placeholder="Contraseña" />
                    </div>
                </div>
                <div class="modal-footer">
                <asp:Button ID="btnRegistrar" Text="Registrar" runat="server" class="btn btn-default" data-dismiss="modal" />
                    <asp:Button ID="btnCerrar" Text="Cerrar" runat="server" class="btn btn-default" data-dismiss="modal" />
                 
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div id="myModalUNO" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title">
                        Login</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Email</span>
                        <asp:TextBox runat="server" ID="txtEmailUno" class="form-control"  />
                    </div>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon">Contraseña</span>
                        <asp:TextBox runat="server" ID="txtContraUno" class="form-control" />
                    </div>
                </div>
                <div class="modal-footer">
                       <asp:Button id="btnEntrar"  Text="Entrar" runat="server" 
                           class="btn btn-default" data-dismiss="modal" onclick="btnEntrar_Click1" />
                </div>
            </div>
        </div>
    </div>
    </form>
    <script type="text/javascript" src="js/jquery-2.1.4.js"></script>
    <script src="js/moment-with-locales.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap-datetimepicker.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#datetimepicker1').datetimepicker({
                format: 'dd/MM/YYYY',
                locale: 'es'
            });
        });
    </script>
</body>
</html>
