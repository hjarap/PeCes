using Datos;
using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeCes
{
    public partial class CrearTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ddlTipoCliente_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTipoCliente.SelectedValue == "Empresa")
            {
                txtRazonSocial.Visible = true;
            }
            else
            {
                txtRazonSocial.Visible = false;
            }
        }

        protected void btnCrearTicket_Click(object sender, EventArgs e)
        {
            
            string nombre = txtNombre.Text;
            string rut = txtRut.Text;
            string telefono = txtTelefono.Text;
            string email = txtEmail.Text;
            string razonSocial = txtRazonSocial.Text;
            string producto = txtProducto.Text;
            string descripcion = txtDescripcion.Text;

            
            Cliente cliente;
            if (ddlTipoCliente.SelectedValue == "Empresa")
            {
                cliente = new Empresa
                {
                    Nombre = nombre,
                    Rut = rut,
                    Telefono = telefono,
                    Email = email,
                    RazonSocial = razonSocial
                };
            }
            else
            {
                cliente = new PersonaNatural
                {
                    Nombre = nombre,
                    Rut = rut,
                    Telefono = telefono,
                    Email = email
                };
            }

           
            Datos.TicketData.Ticket ticket = new Datos.TicketData.Ticket
            {
                Cliente = cliente.Nombre,
                
            };

            Ticket tickets = new Ticket
            {
                Producto = producto,
                Descripcion = descripcion,
                Estado = "Abierto"
            };

            List<TicketData.Ticket> ticketsList = TicketData.GetTickets();
            ticketsList.Add(ticket);



            Response.Redirect("ListarTickets.aspx");
        }
    }
}