namespace crud_webforms.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Clientes",
                c => new
                    {
                        CLI_ID = c.Int(nullable: false, identity: true),
                        CLI_NOME = c.String(nullable: false, maxLength: 100),
                        CLI_DATANASCIMENTO = c.DateTime(nullable: false),
                        CLI_ATIVO = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => t.CLI_ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Clientes");
        }
    }
}
