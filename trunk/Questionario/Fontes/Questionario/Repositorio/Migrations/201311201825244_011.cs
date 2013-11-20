namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _011 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Bairro",
                c => new
                    {
                        BairroID = c.Int(nullable: false, identity: true),
                        NomeBairro = c.String(maxLength: 255),
                        Cidade_CidadeID = c.Int(),
                    })
                .PrimaryKey(t => t.BairroID)
                .ForeignKey("dbo.Cidades", t => t.Cidade_CidadeID)
                .Index(t => t.Cidade_CidadeID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Bairro", "Cidade_CidadeID", "dbo.Cidades");
            DropIndex("dbo.Bairro", new[] { "Cidade_CidadeID" });
            DropTable("dbo.Bairro");
        }
    }
}
