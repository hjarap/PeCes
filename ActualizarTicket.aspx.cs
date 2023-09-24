using System;
using Datos;
using Modelo;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeCes
{
    public partial class ActualizarTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnActualizarTicket_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string cliente = txtCliente.Text;
                string nombreProducto = txtProducto.Text;
                string descripcionProducto = txtDescripcion.Text;

                string ticketId = Request.QueryString["id"];
                ActualizarTickets(ticketId, cliente, nombreProducto, descripcionProducto);

                Response.Redirect("TicketActualizado.aspx");
            }
        }

        private void ActualizarTickets(string ticketId, string cliente, string nombreProducto, string descripcionProducto)
        {
            
        }

        private void OcultarControles()
        {
            txtCliente.Visible = false;
            txtProducto.Visible = false;
            txtDescripcion.Visible = false;
            btnActualizarTicket.Visible = false;
            lblMensaje.Text = "No se encontró el ticket especificado.";
            lblMensaje.CssClass = "mensaje-error";
            lblMensaje.Visible = true;
        }
    }
}