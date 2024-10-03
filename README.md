# CRUD de Clientes - ASP.NET WebForms

Este projeto é uma aplicação web para gerenciar clientes utilizando **ASP.NET WebForms** e **Entity Framework 6**, com integração ao banco de dados **SQL Server**. A aplicação permite realizar operações de CRUD (Create, Read, Update e Delete) de clientes, incluindo funcionalidades como validação de dados e uso de estilos modernos com **Bootstrap**.

## Funcionalidades

- Listagem de clientes com informações como nome, data de nascimento e status de ativo.
- Adição de novos clientes com validação de data de nascimento e campos obrigatórios.
- Edição de dados de clientes.
- Exclusão de clientes com confirmação.
- Interface estilizada com **Bootstrap** e ícones da **Font Awesome**.
  
## Tecnologias Utilizadas

- **ASP.NET WebForms**
- **Entity Framework 6**
- **SQL Server**
- **Bootstrap 4**
- **Font Awesome**
- **C#**

## Pré-requisitos

Antes de executar o projeto, certifique-se de ter o seguinte instalado:

- [Visual Studio 2022](https://visualstudio.microsoft.com/) ou superior
- [SQL Server](https://www.microsoft.com/pt-br/sql-server) (ou SQL Server Express)
- [.NET Framework 4.7.2](https://dotnet.microsoft.com/download/dotnet-framework/net472)

## Como Executar o Projeto

1. **Clone o repositório**:
   
   *git clone https://github.com/PascoaI/crud_webforms.git*

## 2. Abra o projeto no Visual Studio

Após clonar o repositório, navegue até a pasta do projeto e abra o arquivo de solução (`.sln`) utilizando o **Visual Studio 2022** ou uma versão superior.

## 3. Aplique as Migrations

Para configurar o banco de dados com o Entity Framework, siga os passos abaixo:

-Abra o **Package Manager Console** no Visual Studio.
-Execute o comando para aplicar as migrations e criar as tabelas no banco de dados:

*Update-Database*

Se as migrations ainda não foram criadas, você pode gerar uma migration inicial com o seguinte comando:

*Add-Migration InitialCreate*

Este comando cria o esquema inicial do banco de dados baseado nos modelos definidos na aplicação.

## 4. Execute o projeto

Pressione F5 ou clique em Run no Visual Studio para iniciar o projeto. Isso irá abrir o navegador padrão e carregar a aplicação.
