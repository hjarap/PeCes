<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="PeCes.ActualizarTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Actualizar Ticket</h2>
            
            <asp:Label ID="lblMensaje" runat="server" Visible="false"></asp:Label>
            <br /><br />
            <asp:Label ID="lblCliente" runat="server" Text="Cliente:" /><br />
            <asp:TextBox ID="txtCliente" runat="server" Enabled="false" />
            <asp:RequiredFieldValidator ID="rfvCliente" runat="server" ControlToValidate="txtCliente" ErrorMessage="El cliente es obligatorio"></asp:RequiredFieldValidator><br /><br />
            
            <asp:Label ID="lblProducto" runat="server" Text="Producto:" /><br />
            <asp:TextBox ID="txtProducto" runat="server" />
            <asp:RequiredFieldValidator ID="rfvProducto" runat="server" ControlToValidate="txtProducto" ErrorMessage="El producto es obligatorio"></asp:RequiredFieldValidator><br /><br />
            
            <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:" /><br />
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" />
            <asp:RequiredFieldValidator ID="rfvDescripcion" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="La descripción es obligatoria"></asp:RequiredFieldValidator><br /><br />
            
            <asp:ValidationSummary ID="vsActualizarTicket" runat="server" ValidationGroup="vgActualizarTicket" />

            <asp:Button ID="btnActualizarTicket" runat="server" Text="Actualizar Ticket" ValidationGroup="vgActualizarTicket" OnClick="btnActualizarTicket_Click" />

</asp:Content>

