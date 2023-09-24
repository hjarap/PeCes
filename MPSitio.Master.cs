using System;
using Modelo;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeCes
{
    public partial class MPSitio : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                txtBusqueda.Attributes["placeholder"] = "Ingrese el filtro de búsqueda...";
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string filtro = txtBusqueda.Text;
            if (!string.IsNullOrEmpty(filtro))
            {
                
                Response.Redirect($"ListarTickets.aspx?filtro={filtro}");
            }
            else
            {
                
                Response.Redirect("ListarTickets.aspx");
            }
        }

        protected void lnkHome_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Home.aspx");
        }

        protected void lnkAgregarTicket_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("CrearTicket.aspx");
        }

        protected void lnkListarTodos_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("ListarTickets.aspx");
        }
    }
}