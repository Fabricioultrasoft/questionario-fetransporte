namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _008 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Estados",
                c => new
                    {
                        EstadoID = c.Int(nullable: false, identity: true),
                        NomeEstado = c.String(maxLength: 255),
                        Cidade_CidadeID = c.Int(),
                    })
                .PrimaryKey(t => t.EstadoID)
                .ForeignKey("dbo.Cidades", t => t.Cidade_CidadeID)
                .Index(t => t.Cidade_CidadeID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Estados", "Cidade_CidadeID", "dbo.Cidades");
            DropIndex("dbo.Estados", new[] { "Cidade_CidadeID" });
            DropTable("dbo.Estados");
        }
    }
}
