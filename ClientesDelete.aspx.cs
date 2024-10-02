using System;
using crud_webforms.Data;

namespace crud_webforms
{
    public partial class ClienteDelete : System.Web.UI.Page
    {
        private ApplicationDbContext _context = new ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int clienteId = Convert.ToInt32(Request.QueryString["id"]);

                var cliente = _context.Clientes.Find(clienteId);

                if (cliente != null)
                {
                    lblNome.InnerText = cliente.CLI_NOME;
                    lblDataNascimento.InnerText = cliente.CLI_DATANASCIMENTO.ToString("dd/MM/yyyy");
                    lblAtivo.InnerText = cliente.CLI_ATIVO ? "Sim" : "Não";
                    CLI_ID.Value = cliente.CLI_ID.ToString();
                }
                else
                {
                    Response.Redirect("ClientesList.aspx");
                }
            }
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            int clienteId = Convert.ToInt32(CLI_ID.Value);
            var cliente = _context.Clientes.Find(clienteId);

            if (cliente != null)
            {
                _context.Clientes.Remove(cliente);
                _context.SaveChanges();
            }

            Response.Redirect("ClientesList.aspx");
        }
    }
}
