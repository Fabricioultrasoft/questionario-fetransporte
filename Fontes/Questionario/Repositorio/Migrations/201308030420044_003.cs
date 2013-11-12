namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _003 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Questionarios",
                c => new
                    {
                        QuestionarioID = c.Int(nullable: false, identity: true),
                        AnoQuestionario = c.String(nullable: false),
                        DataValidade = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.QuestionarioID);
            
            CreateTable(
                "dbo.Cidades",
                c => new
                    {
                        CidadeID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.CidadeID);
            
            CreateTable(
                "dbo.Especialidades",
                c => new
                    {
                        EspecialidadeID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.EspecialidadeID);
            
            CreateTable(
                "dbo.Pesos",
                c => new
                    {
                        PesoID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.PesoID);
            
            CreateTable(
                "dbo.UtilizaEstruturaSestSenat",
                c => new
                    {
                        UtilizaEstruturaSestSenatID = c.Int(nullable: false, identity: true),
                        Descricao = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UtilizaEstruturaSestSenatID);
            
            CreateTable(
                "dbo.PerguntasQuestionarios",
                c => new
                    {
                        PerguntasQuestionarioID = c.Int(nullable: false, identity: true),
                        Sexo = c.Int(nullable: false),
                        Idade = c.Int(nullable: false),
                        EstadoCivil = c.Int(nullable: false),
                        QuantidadeDeFilhos = c.Int(nullable: false),
                        Escolaridade = c.Int(nullable: false),
                        Fumante = c.Int(nullable: false),
                        AtividadeFisica = c.Int(nullable: false),
                        VisitaMedico = c.Int(nullable: false),
                        Treinamento = c.Int(nullable: false),
                        ConsomeCarne = c.Int(nullable: false),
                        ConsomeFruta = c.Int(nullable: false),
                        ConsomePeixe = c.Int(nullable: false),
                        ConsomeRefrigerante = c.Int(nullable: false),
                        HistoricoHipertensao = c.Int(nullable: false),
                        HistoricoDiabetes = c.Int(nullable: false),
                        FrequenciaUtilizacao = c.Int(nullable: false),
                        FrequenciaUtilizacaoFamilia = c.Int(nullable: false),
                        Questionario_QuestionarioID = c.Int(),
                        Empresa_EmpresaID = c.Int(),
                        Sindicato_SindicatoID = c.Int(),
                        Peso_PesoID = c.Int(),
                        Altura_AlturaID = c.Int(),
                        Especialidade_EspecialidadeID = c.Int(),
                        Cidade_CidadeID = c.Int(),
                        AnoAdmissao_AnoAdmissaoID = c.Int(),
                    })
                .PrimaryKey(t => t.PerguntasQuestionarioID)
                .ForeignKey("dbo.Questionarios", t => t.Questionario_QuestionarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .ForeignKey("dbo.Pesos", t => t.Peso_PesoID)
                .ForeignKey("dbo.Alturas", t => t.Altura_AlturaID)
                .ForeignKey("dbo.Especialidades", t => t.Especialidade_EspecialidadeID)
                .ForeignKey("dbo.Cidades", t => t.Cidade_CidadeID)
                .ForeignKey("dbo.AnoAdmissao", t => t.AnoAdmissao_AnoAdmissaoID)
                .Index(t => t.Questionario_QuestionarioID)
                .Index(t => t.Empresa_EmpresaID)
                .Index(t => t.Sindicato_SindicatoID)
                .Index(t => t.Peso_PesoID)
                .Index(t => t.Altura_AlturaID)
                .Index(t => t.Especialidade_EspecialidadeID)
                .Index(t => t.Cidade_CidadeID)
                .Index(t => t.AnoAdmissao_AnoAdmissaoID);
            
            CreateTable(
                "dbo.Alturas",
                c => new
                    {
                        AlturaID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.AlturaID);
            
            CreateTable(
                "dbo.AnoAdmissao",
                c => new
                    {
                        AnoAdmissaoID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 4),
                    })
                .PrimaryKey(t => t.AnoAdmissaoID);
            
            CreateTable(
                "dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats",
                c => new
                    {
                        PerguntasQuestionario_PerguntasQuestionarioID = c.Int(nullable: false),
                        UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.PerguntasQuestionario_PerguntasQuestionarioID, t.UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID })
                .ForeignKey("dbo.PerguntasQuestionarios", t => t.PerguntasQuestionario_PerguntasQuestionarioID, cascadeDelete: true)
                .ForeignKey("dbo.UtilizaEstruturaSestSenat", t => t.UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID, cascadeDelete: true)
                .Index(t => t.PerguntasQuestionario_PerguntasQuestionarioID)
                .Index(t => t.UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats", new[] { "UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID" });
            DropIndex("dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats", new[] { "PerguntasQuestionario_PerguntasQuestionarioID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "AnoAdmissao_AnoAdmissaoID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Cidade_CidadeID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Especialidade_EspecialidadeID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Altura_AlturaID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Peso_PesoID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Questionario_QuestionarioID" });
            DropForeignKey("dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats", "UtilizaEstruturaSestSenat_UtilizaEstruturaSestSenatID", "dbo.UtilizaEstruturaSestSenat");
            DropForeignKey("dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropForeignKey("dbo.PerguntasQuestionarios", "AnoAdmissao_AnoAdmissaoID", "dbo.AnoAdmissao");
            DropForeignKey("dbo.PerguntasQuestionarios", "Cidade_CidadeID", "dbo.Cidades");
            DropForeignKey("dbo.PerguntasQuestionarios", "Especialidade_EspecialidadeID", "dbo.Especialidades");
            DropForeignKey("dbo.PerguntasQuestionarios", "Altura_AlturaID", "dbo.Alturas");
            DropForeignKey("dbo.PerguntasQuestionarios", "Peso_PesoID", "dbo.Pesos");
            DropForeignKey("dbo.PerguntasQuestionarios", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.PerguntasQuestionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.PerguntasQuestionarios", "Questionario_QuestionarioID", "dbo.Questionarios");
            DropTable("dbo.PerguntasQuestionarioUtilizaEstruturaSestSenats");
            DropTable("dbo.AnoAdmissao");
            DropTable("dbo.Alturas");
            DropTable("dbo.PerguntasQuestionarios");
            DropTable("dbo.UtilizaEstruturaSestSenat");
            DropTable("dbo.Pesos");
            DropTable("dbo.Especialidades");
            DropTable("dbo.Cidades");
            DropTable("dbo.Questionarios");
        }
    }
}
