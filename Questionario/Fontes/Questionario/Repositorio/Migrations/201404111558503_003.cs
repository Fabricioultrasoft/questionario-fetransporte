namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _003 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Questionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropIndex("dbo.Questionarios", new[] { "Empresa_EmpresaID" });
            DropColumn("dbo.Questionarios", "Empresa_EmpresaID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Questionarios", "Empresa_EmpresaID", c => c.Int());
            CreateIndex("dbo.Questionarios", "Empresa_EmpresaID");
            AddForeignKey("dbo.Questionarios", "Empresa_EmpresaID", "dbo.Empresas", "EmpresaID");
        }
    }
}
