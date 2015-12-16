<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registra.aspx.cs" Inherits="Registra" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView Style="text-align: center;" runat="server" ID="GvPelis" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" GridLines="Vertical" Width="200" OnRowCancelingEdit="GvPelis_RowCancelingEdit"
            OnRowDeleting="GvPelis_RowDeleting" OnRowEditing="GvPelis_RowEditing" OnRowUpdating="GvPelis_RowUpdating"
            ShowFooter="True">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:TemplateField HeaderText="[ID]">
                    <EditItemTemplate>
                        <asp:Label ID="lblIdEIT" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblIdIT" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Nombre]">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNombreEIT" runat="server" Text='<%# Bind("Nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblNombreIT" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtNombreFT" runat="server" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator88" ControlToValidate="txtNombreFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Nombre Oblogatorio"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Año de Lanzamiento]">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("AnioLanzamiento", "{0:dd/MM/yyyy}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("AnioLanzamiento", "{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFechalanzamientoFT" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="txtFechalanzamientoFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Fecha Oblogatoria"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ForeColor="Red"
                            ErrorMessage="Error fecha- Ejempo -Mes/Dia/Año" ControlToValidate="txtFechalanzamientoFT"
                            Text="***" Type="Date" ValidationGroup="alta" Display="Dynamic" ValidationExpression="^(((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00|[048])))$"></asp:RegularExpressionValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Sinopsis]">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Sinopsis") %>' Width="250"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Sinopsis") %>' Width="250"></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtSinopsisFT" runat="server" MaxLength="800"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator87" ControlToValidate="txtSinopsisFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Sinopsis Oblogatoria"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Estatus] ">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkEstatusEIT" runat="server" Checked='<%# Bind("Estatus") %>'>
                        </asp:CheckBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox Enabled="false" Checked='<%# Bind("Estatus") %>' ID="chk" runat="server">
                        </asp:CheckBox>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:CheckBox ID="chkEstatusFT" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="EXISTENCIA">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtExistenciaEIT" runat="server" Text='<%# Bind("Existencia") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator90" ControlToValidate="txtExistenciaEIT"
                            ForeColor="Red" Text="***" ValidationGroup="cambio" runat="server" ErrorMessage="Existecia Oblogatoria"></asp:RequiredFieldValidator>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator10000" runat="server" ControlToValidate="txtExistenciaEIT"
ErrorMessage="Please Enter Only Numbers" ValidationGroup="cambio"></asp:RegularExpressionValidator>--%>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblExistenciaIT" runat="server" Text='<%# Bind("Existencia") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtExistenciaFT" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="txtExistenciaFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Existecia Oblogatoria"></asp:RequiredFieldValidator>
                        <%--
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtExistenciaFT"
ErrorMessage="Please Enter Only Numbers" ValidationGroup="alta"></asp:RegularExpressionValidator>--%>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Trailer] ">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTrailerEIT" runat="server" Text='<%# Bind("Trailer") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="llblTrailerIT" runat="server" Text='<%# Bind("Trailer") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTrailerFT" runat="server" MaxLength="1000"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8899" ControlToValidate="txtTrailerFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Trailer Oblogatorio"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Foto]">
                    <EditItemTemplate>
                        <asp:Image ID="imgFotoPortadaEIT" Width="100px" ImageUrl='<%# Bind("FotoPortada") %>'
                            runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="imgFotoPortadaIT" Width="100px" ImageUrl='<%# Bind("FotoPortada") %>'
                            runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="fuFotoPortadaFT" runat="server"></asp:FileUpload>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator189890" ControlToValidate="fuFotoPortadaFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="FotoPortada Oblogatoria"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Foto Mini] ">
                    <EditItemTemplate>
                        <asp:Image ID="imgFotoMiniEIT" Width="100px" ImageUrl='<%# Bind("FotoMini") %>' runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="imgFotoMiniIT" Width="100px" ImageUrl='<%# Bind("FotoMini") %>' runat="server" />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:FileUpload ID="fuFotoMiniFT" runat="server"></asp:FileUpload>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator189891" ControlToValidate="fuFotoMiniFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="FotoMini Oblogatoria"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Clasificacion]">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtClasificacionEIT" runat="server" Style="text-align: -webkit-center;"
                            Text='<%# Bind("Clasificacion.Nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Style="text-align: -webkit-center;" Text='<%# Bind("Clasificacion.Nombre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlClasificacionFT" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="[Selecciona Clasificacion]" Value="-1" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="ddlClasificacionFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" InitialValue="-1"
                            ErrorMessage="Clasificacion Oblogatoria"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Genero]">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtGeneroEIT" runat="server" Text='<%# Bind("Genero.Nombre") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Bind("Genero.Nombre") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="ddlGeneroFT" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="[Selecciona Genero]" Value="-1" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1011" ControlToValidate="ddlGeneroFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" InitialValue="-1"
                            ErrorMessage="Genero Oblogatorio"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="[Fecha]">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFechaAltaEIT" runat="server" Text='<%# Bind("FechaAlta","{0:dd/MM/yyyy}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblFechaAltaIT" runat="server" Text='<%# Bind("FechaAlta","{0:dd/MM/yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFechaAltaFT" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator109" ControlToValidate="txtFechaAltaFT"
                            ForeColor="Red" Text="***" ValidationGroup="alta" runat="server" ErrorMessage="Fecha Oblogatoria"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator274" runat="server" ForeColor="Red"
                            ErrorMessage="Error fecha- Ejempo -Mes/Dia/Año" ControlToValidate="txtFechaAltaFT"
                            Text="***" Type="Date" ValidationGroup="alta" Display="Dynamic" ValidationExpression="^(((0?[1-9]|[12]\d|3[01])[\.\-\/](0?[13578]|1[02])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|[12]\d|30)[\.\-\/](0?[13456789]|1[012])[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|((0?[1-9]|1\d|2[0-8])[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?\d{2}|\d))|(29[\.\-\/]0?2[\.\-\/]((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)|00|[048])))$"></asp:RegularExpressionValidator>
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>
