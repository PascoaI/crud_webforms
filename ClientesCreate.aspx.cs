using System;
using System.Web.UI.WebControls;
using crud_webforms.Data;
using crud_webforms.Models;

namespace crud_webforms
{
    public partial class ClienteCreate : System.Web.UI.Page
    {
        private ApplicationDbContext _context = new ApplicationDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Validar data no servidor
                if (DateTime.TryParse(CLI_DATANASCIMENTO.Text, out DateTime dataNascimento))
                {
                    if (dataNascimento.Year > 2024)
                    {
                        // Adicione um erro se a data for inválida
                        ModelState.AddModelError("DataNascimento", "A data não pode ser maior que 31/12/2024.");
                        return;
                    }

                    var cliente = new Cliente
                    {
                        CLI_NOME = CLI_NOME.Text,
                        CLI_DATANASCIMENTO = Convert.ToDateTime(CLI_DATANASCIMENTO.Text),
                        CLI_ATIVO = CLI_ATIVO.Checked
                    };

                    _context.Clientes.Add(cliente);
                    _context.SaveChanges();

                    Response.Redirect("ClientesList.aspx");
                }
            }
        }

        protected void cvDataNascimento_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (DateTime.TryParse(args.Value, out DateTime dataNascimento))
            {
                args.IsValid = dataNascimento.Year <= 2024;
            }
            else
            {
                args.IsValid = false;
            }
        }

    }
}
