namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _009 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Estados", "Cidade_CidadeID", "dbo.Cidades");
            DropIndex("dbo.Estados", new[] { "Cidade_CidadeID" });
            AddColumn("dbo.Cidades", "Estado_EstadoID", c => c.Int());
            CreateIndex("dbo.Cidades", "Estado_EstadoID");
            AddForeignKey("dbo.Cidades", "Estado_EstadoID", "dbo.Estados", "EstadoID");
            DropColumn("dbo.Estados", "Cidade_CidadeID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Estados", "Cidade_CidadeID", c => c.Int());
            DropForeignKey("dbo.Cidades", "Estado_EstadoID", "dbo.Estados");
            DropIndex("dbo.Cidades", new[] { "Estado_EstadoID" });
            DropColumn("dbo.Cidades", "Estado_EstadoID");
            CreateIndex("dbo.Estados", "Cidade_CidadeID");
            AddForeignKey("dbo.Estados", "Cidade_CidadeID", "dbo.Cidades", "CidadeID");
        }
    }
}
