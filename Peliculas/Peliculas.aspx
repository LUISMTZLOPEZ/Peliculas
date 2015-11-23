<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Peliculas.aspx.cs" Inherits="Peliculas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
</head>
<body style="background-image: url('img/descarga%20(1).jpg')">
    <form id="form1" runat="server">
    <div class="container">
        <div class="row"style="margin-top:3px">
            <div class="col-xs-8">
            </div>
            <div class="col-xs-2 " style="width: 100px; height: 80px;">
                <asp:LinkButton Style="font-size: 15px; color: #F5F5F5" Text="Registrate" ID="lnkRegistrarse"
                    runat="server" />
            </div>
            <div class="col-xs-2 " style="width: 100px; height: 80px;">
                <asp:LinkButton Style="font-size: 15px; color: #F5F5F5" Text="Login" ID="lnkLogin"
                    runat="server" />
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
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                            <li data-target="#myCarousel" data-slide-to="3"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/Triler.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Tortugas.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Oscuridad.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Av.jpg" style="margin: auto" />
                            </div>
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
                            <li data-target="#CaruselDos" data-slide-to="0" class="active"></li>
                            <li data-target="#CaruselDos" data-slide-to="1"></li>
                            <li data-target="#CaruselDos" data-slide-to="2"></li>
                            <li data-target="#CaruselDos" data-slide-to="3"></li>
                        </ol>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="img/Triler.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Tortugas.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Oscuridad.jpg" style="margin: auto" />
                            </div>
                            <div class="item">
                                <img src="img/Av.jpg" style="margin: auto" />
                            </div>
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
                    <div class="panel-heading" style="background-color: #0014FF; text-align: center;
                        font: oblique bold 120% cursive;">
                        Recuarda que puedes encntrar una mayo varidad de peliculas "Disfruta"</div>
                    <div class="panel-body" style="background-color: #333333;">
                        <div class="col-md-2">
                            <asp:DropDownList CssClass="form-control" runat="server" ID="ddlClas" AppendDataBoundItems="true" AutoPostBack="true">
                                <asp:ListItem Text="[Genero]" Value="-1" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <asp:DropDownList CssClass="form-control" runat="server" ID="DropDownList1" AppendDataBoundItems="true" AutoPostBack="true">
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
                            <asp:ImageButton ImageUrl="img/087837-ultra-glossy-silver-button-icon-business-magnifying-glass-ps_opt.png" runat="server" />
                        
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 20px">
                <asp:PlaceHolder runat="server" ID="phPelis" />     
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
