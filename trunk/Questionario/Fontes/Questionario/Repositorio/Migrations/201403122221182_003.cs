namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _003 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Empresas", "Bairro_BairroID", c => c.Int());
            CreateIndex("dbo.Empresas", "Bairro_BairroID");
            AddForeignKey("dbo.Empresas", "Bairro_BairroID", "dbo.Bairro", "BairroID");
            DropColumn("dbo.Empresas", "Bairro");
            DropColumn("dbo.Empresas", "Cidade");
            DropColumn("dbo.Empresas", "Estado");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Empresas", "Estado", c => c.String(maxLength: 50));
            AddColumn("dbo.Empresas", "Cidade", c => c.String(maxLength: 100));
            AddColumn("dbo.Empresas", "Bairro", c => c.String(maxLength: 100));
            DropForeignKey("dbo.Empresas", "Bairro_BairroID", "dbo.Bairro");
            DropIndex("dbo.Empresas", new[] { "Bairro_BairroID" });
            DropColumn("dbo.Empresas", "Bairro_BairroID");
        }
    }
}
