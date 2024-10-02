<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesDelete.aspx.cs" Inherits="crud_webforms.ClienteDelete" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excluir Cliente</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    <link rel="stylesheet" href="/Content/styles.css" />
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>Deletar Cliente</h2>

            <div class="alert alert-danger mt-3">
                <h4 class="alert-heading">Tem certeza de que deseja deletar este cliente?</h4>
                <hr />
                <dl class="row">
                    <dt class="col-sm-2">Nome</dt>
                    <dd class="col-sm-10" id="lblNome" runat="server"></dd>

                    <dt class="col-sm-2">Data de Nascimento</dt>
                    <dd class="col-sm-10" id="lblDataNascimento" runat="server"></dd>

                    <dt class="col-sm-2">Ativo</dt>
                    <dd class="col-sm-10" id="lblAtivo" runat="server"></dd>
                </dl>

                <input type="hidden" id="CLI_ID" runat="server" />
                <asp:Button ID="btnDeletar" runat="server" Text="Deletar" CssClass="btn btn-danger" OnClick="Delete_Click" />
                <a href="ClientesList.aspx" class="btn btn-secondary">
                    <i class="fas fa-arrow-left"></i> Cancelar
                </a>
            </div>
        </div>
    </form>
</body>
</html>
