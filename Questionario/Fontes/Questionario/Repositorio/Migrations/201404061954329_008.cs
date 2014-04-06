namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _008 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.PerguntasQuestionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.PerguntasQuestionarios", "Questionario_QuestionarioID", "dbo.Questionarios");
            DropForeignKey("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropForeignKey("dbo.PerguntasQuestionarios", "Sindicato_SindicatoID", "dbo.Sindicatos");
            CreateTable(
                "dbo.PerguntaQuestionario",
                c => new
                    {
                        PerguntaQuestionarioID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(nullable: false, maxLength: 255),
                        MultiplaEscolha = c.Boolean(nullable: false),
                        Questionario_QuestionarioID = c.Int(),
                    })
                .PrimaryKey(t => t.PerguntaQuestionarioID)
                .ForeignKey("dbo.Questionarios", t => t.Questionario_QuestionarioID)
                .Index(t => t.Questionario_QuestionarioID);
            
            CreateTable(
                "dbo.RespostaFuncionario",
                c => new
                    {
                        RespostaFuncionarioID = c.Int(nullable: false, identity: true),
                        DataHoraDaResposta = c.DateTime(nullable: false),
                        Funcionario_FuncionarioID = c.Int(),
                        Resposta_RespostaPossivelID = c.Int(),
                    })
                .PrimaryKey(t => t.RespostaFuncionarioID)
                .ForeignKey("dbo.Funcionarios", t => t.Funcionario_FuncionarioID)
                .ForeignKey("dbo.RespostaPossivel", t => t.Resposta_RespostaPossivelID)
                .Index(t => t.Funcionario_FuncionarioID)
                .Index(t => t.Resposta_RespostaPossivelID);
            
            AddColumn("dbo.Funcionarios", "Ativo", c => c.Boolean(nullable: false));
            AddColumn("dbo.Questionarios", "Empresa_EmpresaID", c => c.Int());
            AddColumn("dbo.RespostaPossivel", "PerguntaQuestionario_PerguntaQuestionarioID", c => c.Int());
            CreateIndex("dbo.Bairro", "Cidade_CidadeID");
            CreateIndex("dbo.Cidades", "Estado_EstadoID");
            CreateIndex("dbo.Cargos", "SetorArea_SetorAreaID");
            CreateIndex("dbo.Empresas", "Bairro_BairroID");
            CreateIndex("dbo.Empresas", "Sindicato_SindicatoID");
            CreateIndex("dbo.Sindicatos", "Federacao_FederacaoID");
            CreateIndex("dbo.Funcionarios", "Cargo_CargoID");
            CreateIndex("dbo.Funcionarios", "Empresa_EmpresaID");
            CreateIndex("dbo.Questionarios", "Empresa_EmpresaID");
            CreateIndex("dbo.RespostaPossivel", "PerguntaQuestionario_PerguntaQuestionarioID");
            CreateIndex("dbo.Usuarios", "Empresa_EmpresaID");
            CreateIndex("dbo.Usuarios", "Federacao_FederacaoID");
            CreateIndex("dbo.Usuarios", "Sindicato_SindicatoID");
            AddForeignKey("dbo.Questionarios", "Empresa_EmpresaID", "dbo.Empresas", "EmpresaID");
            AddForeignKey("dbo.RespostaPossivel", "PerguntaQuestionario_PerguntaQuestionarioID", "dbo.PerguntaQuestionario", "PerguntaQuestionarioID");
            DropColumn("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID");
            DropTable("dbo.Pergunta");
            DropTable("dbo.PerguntasQuestionarios");
            DropTable("dbo.RespostaPossivelPerguntasQuestionarios");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.RespostaPossivelPerguntasQuestionarios",
                c => new
                    {
                        RespostaPossivel_RespostaPossivelID = c.Int(nullable: false),
                        PerguntasQuestionario_PerguntasQuestionarioID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.RespostaPossivel_RespostaPossivelID, t.PerguntasQuestionario_PerguntasQuestionarioID });
            
            CreateTable(
                "dbo.PerguntasQuestionarios",
                c => new
                    {
                        PerguntasQuestionarioID = c.Int(nullable: false, identity: true),
                        Empresa_EmpresaID = c.Int(),
                        Questionario_QuestionarioID = c.Int(),
                        Sindicato_SindicatoID = c.Int(),
                    })
                .PrimaryKey(t => t.PerguntasQuestionarioID);
            
            CreateTable(
                "dbo.Pergunta",
                c => new
                    {
                        PerguntaID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.PerguntaID);
            
            AddColumn("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", c => c.Int());
            DropForeignKey("dbo.RespostaFuncionario", "Resposta_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.RespostaPossivel", "PerguntaQuestionario_PerguntaQuestionarioID", "dbo.PerguntaQuestionario");
            DropForeignKey("dbo.RespostaFuncionario", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropForeignKey("dbo.PerguntaQuestionario", "Questionario_QuestionarioID", "dbo.Questionarios");
            DropForeignKey("dbo.Questionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropIndex("dbo.Usuarios", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Usuarios", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Usuarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.RespostaPossivel", new[] { "PerguntaQuestionario_PerguntaQuestionarioID" });
            DropIndex("dbo.RespostaFuncionario", new[] { "Resposta_RespostaPossivelID" });
            DropIndex("dbo.RespostaFuncionario", new[] { "Funcionario_FuncionarioID" });
            DropIndex("dbo.Questionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.PerguntaQuestionario", new[] { "Questionario_QuestionarioID" });
            DropIndex("dbo.Funcionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.Funcionarios", new[] { "Cargo_CargoID" });
            DropIndex("dbo.Sindicatos", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Empresas", new[] { "Bairro_BairroID" });
            DropIndex("dbo.Cargos", new[] { "SetorArea_SetorAreaID" });
            DropIndex("dbo.Cidades", new[] { "Estado_EstadoID" });
            DropIndex("dbo.Bairro", new[] { "Cidade_CidadeID" });
            DropColumn("dbo.RespostaPossivel", "PerguntaQuestionario_PerguntaQuestionarioID");
            DropColumn("dbo.Questionarios", "Empresa_EmpresaID");
            DropColumn("dbo.Funcionarios", "Ativo");
            DropTable("dbo.RespostaFuncionario");
            DropTable("dbo.PerguntaQuestionario");
            AddForeignKey("dbo.PerguntasQuestionarios", "Sindicato_SindicatoID", "dbo.Sindicatos", "SindicatoID");
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios", "PerguntasQuestionarioID");
            AddForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel", "RespostaPossivelID");
            AddForeignKey("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel", "RespostaPossivelID");
            AddForeignKey("dbo.PerguntasQuestionarios", "Questionario_QuestionarioID", "dbo.Questionarios", "QuestionarioID");
            AddForeignKey("dbo.PerguntasQuestionarios", "Empresa_EmpresaID", "dbo.Empresas", "EmpresaID");
        }
    }
}
