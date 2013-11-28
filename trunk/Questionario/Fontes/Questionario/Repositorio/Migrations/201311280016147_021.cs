namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _021 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Funcionarios", "Empresa_EmpresaID", c => c.Int());
            CreateIndex("dbo.Funcionarios", "Empresa_EmpresaID");
            AddForeignKey("dbo.Funcionarios", "Empresa_EmpresaID", "dbo.Empresas", "EmpresaID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Funcionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropIndex("dbo.Funcionarios", new[] { "Empresa_EmpresaID" });
            DropColumn("dbo.Funcionarios", "Empresa_EmpresaID");
        }
    }
}
