namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _006 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "PerguntasQuestionario_PerguntasQuestionarioID" });
            CreateIndex("dbo.Empresas", "Sindicato_SindicatoID");
            CreateIndex("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID");
            CreateIndex("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID");
            AddForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos", "SindicatoID");
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel", "RespostaPossivelID");
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios", "PerguntasQuestionarioID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "PerguntasQuestionario_PerguntasQuestionarioID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            CreateIndex("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID");
            CreateIndex("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID");
            CreateIndex("dbo.Empresas", "Sindicato_SindicatoID");
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios", "PerguntasQuestionarioID", cascadeDelete: true);
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel", "RespostaPossivelID", cascadeDelete: true);
            AddForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos", "SindicatoID", cascadeDelete: true);
        }
    }
}
