using System;
using System.Linq;
using crud_webforms.Data;
using crud_webforms.Models;

namespace crud_webforms
{
    public partial class ClienteDetails : System.Web.UI.Page
    {
        private ApplicationDbContext _context = new ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int clienteId = Convert.ToInt32(Request.QueryString["id"]);

                var cliente = _context.Clientes.FirstOrDefault(c => c.CLI_ID == clienteId);

                if (cliente != null)
                {
                    lblNome.InnerText = cliente.CLI_NOME;
                    lblDataNascimento.InnerText = cliente.CLI_DATANASCIMENTO.ToString("dd/MM/yyyy");
                    lblAtivo.InnerText = cliente.CLI_ATIVO ? "Sim" : "Não";
                }
                else
                {
                    Response.Redirect("ClientesList.aspx");
                }
            }
        }
    }
}
