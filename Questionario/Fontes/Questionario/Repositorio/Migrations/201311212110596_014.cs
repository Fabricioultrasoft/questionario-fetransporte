namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _014 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropIndex("dbo.Empresas", new[] { "Funcionario_FuncionarioID" });
            AlterColumn("dbo.Empresas", "Funcionario_FuncionarioID", c => c.Int());
            CreateIndex("dbo.Empresas", "Funcionario_FuncionarioID");
            AddForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios", "FuncionarioID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropIndex("dbo.Empresas", new[] { "Funcionario_FuncionarioID" });
            AlterColumn("dbo.Empresas", "Funcionario_FuncionarioID", c => c.Int(nullable: false));
            CreateIndex("dbo.Empresas", "Funcionario_FuncionarioID");
            AddForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios", "FuncionarioID", cascadeDelete: true);
        }
    }
}
