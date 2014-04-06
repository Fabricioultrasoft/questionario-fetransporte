namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _001 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Bairros",
                c => new
                    {
                        BairroID = c.Int(nullable: false, identity: true),
                        NomeBairro = c.String(maxLength: 255),
                        Cidade_CidadeID = c.Int(),
                    })
                .PrimaryKey(t => t.BairroID)
                .ForeignKey("dbo.Cidades", t => t.Cidade_CidadeID)
                .Index(t => t.Cidade_CidadeID);
            
            CreateTable(
                "dbo.Cidades",
                c => new
                    {
                        CidadeID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                        Estado_EstadoID = c.Int(),
                    })
                .PrimaryKey(t => t.CidadeID)
                .ForeignKey("dbo.Estados", t => t.Estado_EstadoID)
                .Index(t => t.Estado_EstadoID);
            
            CreateTable(
                "dbo.Estados",
                c => new
                    {
                        EstadoID = c.Int(nullable: false, identity: true),
                        NomeEstado = c.String(maxLength: 255),
                        UF = c.String(maxLength: 2),
                    })
                .PrimaryKey(t => t.EstadoID);
            
            CreateTable(
                "dbo.Cargos",
                c => new
                    {
                        CargoID = c.Int(nullable: false, identity: true),
                        NomeCargos = c.String(maxLength: 255),
                        Observacao = c.String(),
                        SetorArea_SetorAreaID = c.Int(),
                    })
                .PrimaryKey(t => t.CargoID)
                .ForeignKey("dbo.SetoresAreas", t => t.SetorArea_SetorAreaID)
                .Index(t => t.SetorArea_SetorAreaID);
            
            CreateTable(
                "dbo.SetoresAreas",
                c => new
                    {
                        SetorAreaID = c.Int(nullable: false, identity: true),
                        NomeSetorArea = c.String(nullable: false, maxLength: 100),
                    })
                .PrimaryKey(t => t.SetorAreaID);
            
            CreateTable(
                "dbo.Empresas",
                c => new
                    {
                        EmpresaID = c.Int(nullable: false, identity: true),
                        NomeEmpresa = c.String(maxLength: 255),
                        EmailEmpresa = c.String(maxLength: 255),
                        LogoMarca = c.Binary(),
                        Observacao = c.String(),
                        Endereco = c.String(maxLength: 255),
                        Complemento = c.String(maxLength: 255),
                        Cep = c.String(maxLength: 8),
                        Bairro_BairroID = c.Int(),
                        Sindicato_SindicatoID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EmpresaID)
                .ForeignKey("dbo.Bairros", t => t.Bairro_BairroID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.Bairro_BairroID)
                .Index(t => t.Sindicato_SindicatoID);
            
            CreateTable(
                "dbo.Sindicatos",
                c => new
                    {
                        SindicatoID = c.Int(nullable: false, identity: true),
                        NomeSindicato = c.String(nullable: false, maxLength: 255),
                        LogoMarca = c.Binary(),
                        Federacao_FederacaoID = c.Int(),
                    })
                .PrimaryKey(t => t.SindicatoID)
                .ForeignKey("dbo.Federacoes", t => t.Federacao_FederacaoID)
                .Index(t => t.Federacao_FederacaoID);
            
            CreateTable(
                "dbo.Federacoes",
                c => new
                    {
                        FederacaoID = c.Int(nullable: false, identity: true),
                        DescricaoFederacao = c.String(maxLength: 255),
                        EmailEmpresa = c.String(maxLength: 255),
                        LogoMarca = c.Binary(),
                        Observacao = c.String(),
                        Endereco = c.String(maxLength: 255),
                        Bairro = c.String(maxLength: 100),
                        Cidade = c.String(maxLength: 100),
                        Estado = c.String(maxLength: 50),
                        Complemento = c.String(maxLength: 255),
                        Cep = c.String(maxLength: 8),
                    })
                .PrimaryKey(t => t.FederacaoID);
            
            CreateTable(
                "dbo.Funcionarios",
                c => new
                    {
                        FuncionarioID = c.Int(nullable: false, identity: true),
                        Matricula = c.String(maxLength: 10),
                        NomeDoFuncionairo = c.String(nullable: false, maxLength: 255),
                        EmailDoFuncionario = c.String(maxLength: 255),
                        Ativo = c.Boolean(nullable: false),
                        Cargo_CargoID = c.Int(),
                        Empresa_EmpresaID = c.Int(),
                    })
                .PrimaryKey(t => t.FuncionarioID)
                .ForeignKey("dbo.Cargos", t => t.Cargo_CargoID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .Index(t => t.Cargo_CargoID)
                .Index(t => t.Empresa_EmpresaID);
            
            CreateTable(
                "dbo.PerguntasQuestionario",
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
                "dbo.Questionarios",
                c => new
                    {
                        QuestionarioID = c.Int(nullable: false, identity: true),
                        AnoQuestionario = c.String(nullable: false),
                        DataValidade = c.DateTime(nullable: false),
                        Empresa_EmpresaID = c.Int(),
                    })
                .PrimaryKey(t => t.QuestionarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .Index(t => t.Empresa_EmpresaID);
            
            CreateTable(
                "dbo.RespostasFuncionario",
                c => new
                    {
                        RespostaFuncionarioID = c.Int(nullable: false, identity: true),
                        DataHoraDaResposta = c.DateTime(nullable: false),
                        Funcionario_FuncionarioID = c.Int(),
                        Resposta_RespostaPossivelID = c.Int(),
                    })
                .PrimaryKey(t => t.RespostaFuncionarioID)
                .ForeignKey("dbo.Funcionarios", t => t.Funcionario_FuncionarioID)
                .ForeignKey("dbo.RespostasPossiveis", t => t.Resposta_RespostaPossivelID)
                .Index(t => t.Funcionario_FuncionarioID)
                .Index(t => t.Resposta_RespostaPossivelID);
            
            CreateTable(
                "dbo.RespostasPossiveis",
                c => new
                    {
                        RespostaPossivelID = c.Int(nullable: false, identity: true),
                        DescricaoRespostaPossivel = c.String(maxLength: 255),
                        PerguntaQuestionario_PerguntaQuestionarioID = c.Int(),
                    })
                .PrimaryKey(t => t.RespostaPossivelID)
                .ForeignKey("dbo.PerguntasQuestionario", t => t.PerguntaQuestionario_PerguntaQuestionarioID)
                .Index(t => t.PerguntaQuestionario_PerguntaQuestionarioID);
            
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false, identity: true),
                        NomeUsuario = c.String(nullable: false, maxLength: 100),
                        LoginUsuario = c.String(maxLength: 30),
                        SenhaUsuario = c.String(),
                        TipoUsuario = c.Int(nullable: false),
                        Ativo = c.Boolean(nullable: false),
                        Empresa_EmpresaID = c.Int(),
                        Federacao_FederacaoID = c.Int(),
                        Sindicato_SindicatoID = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .ForeignKey("dbo.Federacoes", t => t.Federacao_FederacaoID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.Empresa_EmpresaID)
                .Index(t => t.Federacao_FederacaoID)
                .Index(t => t.Sindicato_SindicatoID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Usuarios", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.Usuarios", "Federacao_FederacaoID", "dbo.Federacoes");
            DropForeignKey("dbo.Usuarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.RespostasFuncionario", "Resposta_RespostaPossivelID", "dbo.RespostasPossiveis");
            DropForeignKey("dbo.RespostasPossiveis", "PerguntaQuestionario_PerguntaQuestionarioID", "dbo.PerguntasQuestionario");
            DropForeignKey("dbo.RespostasFuncionario", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropForeignKey("dbo.PerguntasQuestionario", "Questionario_QuestionarioID", "dbo.Questionarios");
            DropForeignKey("dbo.Questionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.Funcionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.Funcionarios", "Cargo_CargoID", "dbo.Cargos");
            DropForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.Sindicatos", "Federacao_FederacaoID", "dbo.Federacoes");
            DropForeignKey("dbo.Empresas", "Bairro_BairroID", "dbo.Bairros");
            DropForeignKey("dbo.Cargos", "SetorArea_SetorAreaID", "dbo.SetoresAreas");
            DropForeignKey("dbo.Bairros", "Cidade_CidadeID", "dbo.Cidades");
            DropForeignKey("dbo.Cidades", "Estado_EstadoID", "dbo.Estados");
            DropIndex("dbo.Usuarios", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Usuarios", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Usuarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.RespostasPossiveis", new[] { "PerguntaQuestionario_PerguntaQuestionarioID" });
            DropIndex("dbo.RespostasFuncionario", new[] { "Resposta_RespostaPossivelID" });
            DropIndex("dbo.RespostasFuncionario", new[] { "Funcionario_FuncionarioID" });
            DropIndex("dbo.Questionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.PerguntasQuestionario", new[] { "Questionario_QuestionarioID" });
            DropIndex("dbo.Funcionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.Funcionarios", new[] { "Cargo_CargoID" });
            DropIndex("dbo.Sindicatos", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Empresas", new[] { "Bairro_BairroID" });
            DropIndex("dbo.Cargos", new[] { "SetorArea_SetorAreaID" });
            DropIndex("dbo.Cidades", new[] { "Estado_EstadoID" });
            DropIndex("dbo.Bairros", new[] { "Cidade_CidadeID" });
            DropTable("dbo.Usuarios");
            DropTable("dbo.RespostasPossiveis");
            DropTable("dbo.RespostasFuncionario");
            DropTable("dbo.Questionarios");
            DropTable("dbo.PerguntasQuestionario");
            DropTable("dbo.Funcionarios");
            DropTable("dbo.Federacoes");
            DropTable("dbo.Sindicatos");
            DropTable("dbo.Empresas");
            DropTable("dbo.SetoresAreas");
            DropTable("dbo.Cargos");
            DropTable("dbo.Estados");
            DropTable("dbo.Cidades");
            DropTable("dbo.Bairros");
        }
    }
}
