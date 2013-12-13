namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _024 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Federacao", "EmailEmpresa", c => c.String(maxLength: 255));
            AddColumn("dbo.Federacao", "LogoMarca", c => c.Binary());
            AddColumn("dbo.Federacao", "Observacao", c => c.String());
            AddColumn("dbo.Federacao", "Endereco", c => c.String(maxLength: 255));
            AddColumn("dbo.Federacao", "Bairro", c => c.String(maxLength: 100));
            AddColumn("dbo.Federacao", "Cidade", c => c.String(maxLength: 100));
            AddColumn("dbo.Federacao", "Estado", c => c.String(maxLength: 50));
            AddColumn("dbo.Federacao", "Complemento", c => c.String(maxLength: 255));
            AddColumn("dbo.Federacao", "Cep", c => c.String(maxLength: 8));
            AddColumn("dbo.Usuarios", "LoginUsuario", c => c.String(nullable: false, maxLength: 100));
            AddColumn("dbo.Usuarios", "SenhaUsuario", c => c.String(nullable: false, maxLength: 100));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Usuarios", "SenhaUsuario");
            DropColumn("dbo.Usuarios", "LoginUsuario");
            DropColumn("dbo.Federacao", "Cep");
            DropColumn("dbo.Federacao", "Complemento");
            DropColumn("dbo.Federacao", "Estado");
            DropColumn("dbo.Federacao", "Cidade");
            DropColumn("dbo.Federacao", "Bairro");
            DropColumn("dbo.Federacao", "Endereco");
            DropColumn("dbo.Federacao", "Observacao");
            DropColumn("dbo.Federacao", "LogoMarca");
            DropColumn("dbo.Federacao", "EmailEmpresa");
        }
    }
}
