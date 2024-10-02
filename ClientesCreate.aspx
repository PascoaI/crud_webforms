<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesCreate.aspx.cs" Inherits="crud_webforms.ClienteCreate" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registrar Cliente</title>
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
            <h2>Adicionar Novo Cliente</h2>

            <div class="form-group">
                <label for="CLI_NOME">Nome</label>
                <asp:TextBox ID="CLI_NOME" runat="server" CssClass="form-control col-md-6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNome" runat="server" ControlToValidate="CLI_NOME" ErrorMessage="O campo Nome é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label for="CLI_DATANASCIMENTO">Data de Nascimento</label>
                <asp:TextBox ID="CLI_DATANASCIMENTO" runat="server" CssClass="form-control col-md-6" TextMode="Date" Max="2024-12-31"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDataNascimento" runat="server" ControlToValidate="CLI_DATANASCIMENTO" ErrorMessage="O campo Data de Nascimento é obrigatório" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="cvDataNascimento" runat="server" ControlToValidate="CLI_DATANASCIMENTO" ErrorMessage="A data não pode ser maior que 31/12/2024" CssClass="text-danger" Display="Dynamic" OnServerValidate="cvDataNascimento_ServerValidate"></asp:CustomValidator>
            </div>

            <div class="form-group form-check">
                <asp:CheckBox ID="CLI_ATIVO" runat="server" Checked="true" CssClass="form-check-input" />
                <label class="form-check-label" for="CLI_ATIVO">Ativo</label>
            </div>

            <asp:LinkButton ID="btnSalvar" runat="server" CssClass="btn btn-primary" OnClick="Salvar_Click">
                <i class="fas fa-save"></i> Salvar
            </asp:LinkButton>

            <asp:LinkButton ID="btnCancelar" runat="server" CssClass="btn btn-secondary" CausesValidation="false" PostBackUrl="~/ClientesList.aspx">
                <i class="fas fa-arrow-left"></i> Cancelar
            </asp:LinkButton>
        </div>
    </form>
</body>
</html>
