<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ListarTickets.aspx.cs" Inherits="PeCes.ListarTickets" %>
<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Listado de Tickets</h1>
    <asp:GridView ID="gvTickets" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="ID" />
            <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
            <asp:BoundField DataField="Producto" HeaderText="Producto" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
            <asp:ButtonField ButtonType="Button" Text="Ver detalle" CommandName="VerDetalle" />
            <asp:ButtonField ButtonType="Button" Text="Inhabilitar ticket" CommandName="Inhabilitar" />
        </Columns>
    </asp:GridView>
</asp:Content>

