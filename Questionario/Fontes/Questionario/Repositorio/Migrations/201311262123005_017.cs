namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _017 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", c => c.Int());
            CreateIndex("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID");
            AddForeignKey("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel", "RespostaPossivelID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropIndex("dbo.Funcionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropColumn("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID");
        }
    }
}
