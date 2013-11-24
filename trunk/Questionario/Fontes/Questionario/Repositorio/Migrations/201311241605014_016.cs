namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _016 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.RespostaPossivel",
                c => new
                    {
                        RespostaPossivelID = c.Int(nullable: false, identity: true),
                        DescricaoRespostaPossivel = c.String(maxLength: 255),
                    })
                .PrimaryKey(t => t.RespostaPossivelID);
            
            CreateTable(
                "dbo.RespostaPossivelPerguntasQuestionarios",
                c => new
                    {
                        RespostaPossivel_RespostaPossivelID = c.Int(nullable: false),
                        PerguntasQuestionario_PerguntasQuestionarioID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.RespostaPossivel_RespostaPossivelID, t.PerguntasQuestionario_PerguntasQuestionarioID })
                .ForeignKey("dbo.RespostaPossivel", t => t.RespostaPossivel_RespostaPossivelID, cascadeDelete: true)
                .ForeignKey("dbo.PerguntasQuestionarios", t => t.PerguntasQuestionario_PerguntasQuestionarioID, cascadeDelete: true)
                .Index(t => t.RespostaPossivel_RespostaPossivelID)
                .Index(t => t.PerguntasQuestionario_PerguntasQuestionarioID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "PerguntasQuestionario_PerguntasQuestionarioID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropTable("dbo.RespostaPossivelPerguntasQuestionarios");
            DropTable("dbo.RespostaPossivel");
        }
    }
}
