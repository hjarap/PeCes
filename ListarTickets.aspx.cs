using Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PeCes
{
    public partial class ListarTickets : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                List<TicketData.Ticket> tickets = TicketData.GetTickets();

                
                gvTickets.DataSource = tickets;
                gvTickets.DataBind();
            }

        }
    }
}