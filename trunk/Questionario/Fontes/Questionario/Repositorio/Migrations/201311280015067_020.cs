namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _020 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropIndex("dbo.Empresas", new[] { "Funcionario_FuncionarioID" });
            DropColumn("dbo.Empresas", "Funcionario_FuncionarioID");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Empresas", "Funcionario_FuncionarioID", c => c.Int());
            CreateIndex("dbo.Empresas", "Funcionario_FuncionarioID");
            AddForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios", "FuncionarioID");
        }
    }
}
