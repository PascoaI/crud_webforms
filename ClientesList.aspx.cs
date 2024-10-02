using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using crud_webforms.Data;

namespace crud_webforms
{
    public partial class ClientesList : System.Web.UI.Page
    {
        private ApplicationDbContext _context = new ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadClientes();
            }
        }

        private void LoadClientes()
        {
            var clientes = _context.Clientes.ToList();
            ClientesGrid.DataSource = clientes;
            ClientesGrid.DataBind();
        }

        protected void ClientesGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int clienteId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "Edit")
            {
                Response.Redirect($"ClientesEdit.aspx?id={clienteId}");
            }
            else if (e.CommandName == "Details")
            {
                Response.Redirect($"ClientesDetails.aspx?id={clienteId}");
            }
            else if (e.CommandName == "Delete")
            {
                var cliente = _context.Clientes.Find(clienteId);
                if (cliente != null)
                {
                    Response.Redirect($"ClientesDelete.aspx?id={clienteId}");
                }
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientesCreate.aspx");
        }
    }
}