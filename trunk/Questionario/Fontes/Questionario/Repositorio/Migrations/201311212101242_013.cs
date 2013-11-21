namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _013 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Empresas", "Endereco", c => c.String(maxLength: 255));
            AddColumn("dbo.Empresas", "Bairro", c => c.String(maxLength: 100));
            AddColumn("dbo.Empresas", "Cidade", c => c.String(maxLength: 100));
            AddColumn("dbo.Empresas", "Estado", c => c.String(maxLength: 50));
            AddColumn("dbo.Empresas", "Complemento", c => c.String(maxLength: 255));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Empresas", "Complemento");
            DropColumn("dbo.Empresas", "Estado");
            DropColumn("dbo.Empresas", "Cidade");
            DropColumn("dbo.Empresas", "Bairro");
            DropColumn("dbo.Empresas", "Endereco");
        }
    }
}
