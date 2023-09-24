<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="PeCes.DetalleTicket1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle de Ticket</h1>
    
        <asp:Label ID="lblId" runat="server" Text="ID:"></asp:Label><br />
        <asp:Label ID="lblIdValue" runat="server"></asp:Label><br /><br />
    
    
        <asp:Label ID="lblCliente" runat="server" Text="Cliente:"></asp:Label><br />
        <asp:Label ID="lblClienteValue" runat="server"></asp:Label><br /><br />
    
        <asp:Label ID="lblProducto" runat="server" Text="Producto:"></asp:Label><br />
        <asp:Label ID="lblProductoValue" runat="server"></asp:Label><br /><br />
    
        <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:"></asp:Label><br />
        <asp:Label ID="lblDescripcionValue" runat="server"></asp:Label><br /><br />
    
        <asp:Label ID="lblEstado" runat="server" Text="Estado:"></asp:Label><br />
        <asp:Label ID="lblEstadoValue" runat="server"></asp:Label><br /><br />
    
    <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" />
    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />

</asp:Content>

