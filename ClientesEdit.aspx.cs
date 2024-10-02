using System;
using crud_webforms.Data;

namespace crud_webforms
{
    public partial class ClienteEdit : System.Web.UI.Page
    {
        private ApplicationDbContext _context = new ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int clienteId;
                if (int.TryParse(Request.QueryString["id"], out clienteId))
                {
                    var cliente = _context.Clientes.Find(clienteId);

                    if (cliente != null)
                    {
                        CLI_ID.Value = cliente.CLI_ID.ToString();
                        CLI_NOME.Text = cliente.CLI_NOME;
                        CLI_DATANASCIMENTO.Text = cliente.CLI_DATANASCIMENTO.ToString("yyyy-MM-dd");
                        CLI_ATIVO.Checked = cliente.CLI_ATIVO;
                    }
                    else
                    {
                        Response.Redirect("ClientesList.aspx");
                    }
                }
                else
                {
                    Response.Redirect("ClientesList.aspx");
                }
            }
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            int clienteId = Convert.ToInt32(CLI_ID.Value);
            var cliente = _context.Clientes.Find(clienteId);

            if (cliente != null)
            {
                cliente.CLI_NOME = CLI_NOME.Text;
                cliente.CLI_DATANASCIMENTO = Convert.ToDateTime(CLI_DATANASCIMENTO.Text);
                cliente.CLI_ATIVO = CLI_ATIVO.Checked;

                _context.SaveChanges();
            }

            Response.Redirect("ClientesList.aspx");
        }
    }
}
