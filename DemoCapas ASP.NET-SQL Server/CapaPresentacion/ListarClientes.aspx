﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListarClientes.aspx.cs" Inherits="CapaPresentacion.ListarClientes" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Demo Capas ASP.NET - SQL Server</title> 
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="public/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="public/css/font-awesome.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="public/css/_all-skins.min.css" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="shortcut icon" href="img/favicon.ico" />
</head>
<body class="container">
    <form class="form-control" id="form1" runat="server" style="background-color: #0099CC">
        <div style="text-align: center;">
            <table class="table table-bordered table-condensed table-hover">
                <tr>
                    <td colspan="3">
                        <h2>
                            <asp:Label ID="Label5" runat="server" Text="Demo Programación en Capas"></asp:Label></h2>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Ingrese Apellidos:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellidosCliente" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                        <asp:Button ID="btnNuevoCliente" runat="server" OnClick="btnNuevoCliente_Click" Text="Nuevo" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridViewDatos" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridViewDatos_RowDeleting" OnRowCommand="GridViewDatos_RowCommand" AllowPaging="True" OnPageIndexChanging="GridViewDatos_PageIndexChanging" PageSize="5">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Eliminar" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False"
                                            CommandName="Delete" ImageUrl="~/Imagenes/delete.gif"
                                            OnClientClick="return confirm('Esta seguro que desea eliminar el registro?');"
                                            Text="Eliminar" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField ButtonType="Image" CommandName="Actualizar"
                                    HeaderText="Editar" ImageUrl="~/Imagenes/edit.gif" Text="Botón" />
                                <asp:BoundField DataField="codigo" HeaderText="Código" />
                                <asp:BoundField DataField="nombres" HeaderText="Nombres" />
                                <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
                                <asp:BoundField DataField="correo" HeaderText="Correo" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                    </td>
                </tr>              
                <tr>
                    <td colspan="3">
                        <a href="http://sistemasddm.blogspot.com/" target="_blank"><strong>Sistemas DDM</strong></a></td>
                </tr>              
            </table>
        </div>
    </form>
</body>

    <script src="public/js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="public/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
    <script src="public/js/app.min.js"></script>
</html>
