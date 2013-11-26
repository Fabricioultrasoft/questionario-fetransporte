namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _019 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Sindicatos", "Federacao_FederacaoID", c => c.Int());
            CreateIndex("dbo.Sindicatos", "Federacao_FederacaoID");
            AddForeignKey("dbo.Sindicatos", "Federacao_FederacaoID", "dbo.Federacao", "FederacaoID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Sindicatos", "Federacao_FederacaoID", "dbo.Federacao");
            DropIndex("dbo.Sindicatos", new[] { "Federacao_FederacaoID" });
            DropColumn("dbo.Sindicatos", "Federacao_FederacaoID");
        }
    }
}
