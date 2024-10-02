<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientesList.aspx.cs" Inherits="crud_webforms.ClientesList" %>
<%--<%@ Register assembly="System.Web.Optimization.WebForms" namespace="Microsoft.AspNet.Web.Optimization.WebForms" tagprefix="webopt" %>--%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listagem de Clientes</title>
    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

    <link rel="stylesheet" href="/Content/styles.css" />
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="display-4 mb-4 text-primary">
                        <i class="fas fa-users"></i> Lista de Clientes
                    </h2>
                    <hr class="mb-4" style="border-color: #000000;" />

                    <asp:LinkButton ID="btnCreate" runat="server" CssClass="btn btn-success mb-3" OnClick="Create_Click">
                        <i class="fas fa-plus"></i> Adicionar Novo Cliente
                    </asp:LinkButton>

                    <asp:GridView ID="ClientesGrid" runat="server" CssClass="table table-bordered table-striped table-sm"
                        AutoGenerateColumns="False" DataKeyNames="CLI_ID" OnRowCommand="ClientesGrid_RowCommand" ShowHeaderWhenEmpty="true">
                        <Columns>
                            <asp:BoundField DataField="CLI_NOME" HeaderText="Nome" />
                            <asp:BoundField DataField="CLI_DATANASCIMENTO" HeaderText="Data de Nascimento" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:TemplateField HeaderText="Ativo">
                                <ItemTemplate>
                                    <%# Convert.ToBoolean(Eval("CLI_ATIVO")) ? "Sim" : "Não" %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Ações">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-primary" CommandName="Edit" CommandArgument='<%# Eval("CLI_ID") %>'>
                                        <i class="fas fa-edit"></i> Editar
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btnDetails" runat="server" CssClass="btn btn-info" CommandName="Details" CommandArgument='<%# Eval("CLI_ID") %>'>
                                        <i class="fas fa-info-circle"></i> Detalhes
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger" CommandName="Delete" CommandArgument='<%# Eval("CLI_ID") %>'>
                                        <i class="fas fa-trash"></i> Excluir
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>