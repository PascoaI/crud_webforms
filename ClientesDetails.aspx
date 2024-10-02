<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesDetails.aspx.cs" Inherits="crud_webforms.ClienteDetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalhes do Cliente</title>
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
            <h2>Detalhes do Cliente</h2>

            <div class="card mt-3">
                <div class="card-body">
                    <dl class="row">
                        <dt class="col-sm-2">Nome</dt>
                        <dd class="col-sm-10" id="lblNome" runat="server"></dd>

                        <dt class="col-sm-2">Data de Nascimento</dt>
                        <dd class="col-sm-10" id="lblDataNascimento" runat="server"></dd>

                        <dt class="col-sm-2">Ativo</dt>
                        <dd class="col-sm-10" id="lblAtivo" runat="server"></dd>
                    </dl>
                </div>
            </div>
            <div class="mb-3"></div>
            <a href="ClientesEdit.aspx?id=<%= Request.QueryString["id"] %>" class="btn btn-primary">
                <i class="fas fa-edit"></i> Editar
            </a>
            <a href="ClientesList.aspx" class="btn btn-secondary">
                <i class="fas fa-arrow-left"></i> Voltar
            </a>
        </div>
    </form>
</body>
</html>
