using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeCes
{
    public partial class DetalleTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                OcultarControles();
            }
            else
            {
                int ticketId = Convert.ToInt32(Request.QueryString["id"]);

                Ticket ticket = TicketControlador.ObtenerTicketPorId(ticketId);

                if (ticket != null)
                {
                    lblIdValue.Text = ticket.Id.ToString();
                    lblClienteValue.Text = ObtenerClienteNombre(ticket.Cliente);
                    lblProductoValue.Text = ticket.Producto;
                    lblDescripcionValue.Text = ticket.Descripcion;
                    lblEstadoValue.Text = ticket.Estado;
                }
                else
                {
                    OcultarControles();
                }
            }
        }

        private void OcultarControles()
        {
            lblClienteValue.Visible = false;
            lblProductoValue.Visible = false;
            lblDescripcionValue.Visible = false;
            lblEstadoValue.Visible = false;
            btnActualizar.Visible = false;
            btnEliminar.Visible = false;
        }

        private string ObtenerClienteNombre(Cliente cliente)
        {
            if (cliente is PersonaNatural personaNatural)
            {
                return personaNatural.Nombre;
            }
            else if (cliente is Empresa empresa)
            {
                return empresa.RazonSocial;
            }
            else
            {
                return string.Empty;
            }
        }
    }


        
    
}
