<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="PeCes.CrearTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Agregar Ticket</h1>
    <asp:DropDownList ID="ddlTipoCliente" runat="server" OnSelectedIndexChanged="ddlTipoCliente_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem Text="Seleccionar" Value=""></asp:ListItem>
        <asp:ListItem Text="Cliente A" Value="A"></asp:ListItem>
        <asp:ListItem Text="Cliente B" Value="B"></asp:ListItem>
        <asp:ListItem Text="Persona Natural" Value="PersonaNatural"></asp:ListItem>
        <asp:ListItem Text="Empresa" Value="Empresa"></asp:ListItem>
    </asp:DropDownList><br /><br />
    <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label><br />
    <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio"></asp:RequiredFieldValidator><br /><br />
    <asp:Label ID="lblRut" runat="server" Text="Rut:"></asp:Label><br />
    <asp:TextBox ID="txtRut" runat="server" placeholder="RUT"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El rut no tiene un formato válido" ValidationExpression="^(\d{8,9}-[\dkK])$"></asp:RegularExpressionValidator><br /><br/>
    <asp:Label ID="lblTelefono" runat="server" Text="Telefono:"></asp:Label><br />
    <asp:TextBox ID="txtTelefono" runat="server" placeholder="Teléfono"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El número telefónico es obligatorio"></asp:RequiredFieldValidator><br /><br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email no tiene un formato válido" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator><br /><br/>
    <asp:Label ID="lblRazonSocial" runat="server" Text="Razon Social:"></asp:Label><br />
    <asp:TextBox ID="txtRazonSocial" runat="server" placeholder="Razón Social" Visible="false"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvRazonSocial" runat="server" ControlToValidate="txtRazonSocial" ErrorMessage="El nombre de la razón social es obligatorio"></asp:RequiredFieldValidator><br /><br/>
    <asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label><br />
    <asp:TextBox ID="txtProducto" runat="server" placeholder="Producto"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El nombre del producto es obligatorio"></asp:RequiredFieldValidator><br /><br/>
    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label><br />
    <asp:TextBox ID="txtDescripcion" runat="server" placeholder="Descripción"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción del producto es obligatoria"></asp:RequiredFieldValidator><br /><br/>
    <asp:ValidationSummary ID="vsCrearTicket" runat="server" ValidationGroup="vgCrearTicket" />
    <asp:Button ID="btnCrearTicket" runat="server" Text="Crear Ticket" ValidationGroup="vgCrearTicket" OnClick="btnCrearTicket_Click" />
</asp:Content>
