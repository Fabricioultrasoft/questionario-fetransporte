namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _001 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Bairro",
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
                        Bairro = c.String(maxLength: 100),
                        Cidade = c.String(maxLength: 100),
                        Estado = c.String(maxLength: 50),
                        Complemento = c.String(maxLength: 255),
                        Cep = c.String(maxLength: 8),
                        Sindicato_SindicatoID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EmpresaID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID, cascadeDelete: true)
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
                .ForeignKey("dbo.Federacao", t => t.Federacao_FederacaoID)
                .Index(t => t.Federacao_FederacaoID);
            
            CreateTable(
                "dbo.Federacao",
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
                        Cargo_CargoID = c.Int(),
                        Empresa_EmpresaID = c.Int(),
                        RespostaPossivel_RespostaPossivelID = c.Int(),
                    })
                .PrimaryKey(t => t.FuncionarioID)
                .ForeignKey("dbo.Cargos", t => t.Cargo_CargoID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .ForeignKey("dbo.RespostaPossivel", t => t.RespostaPossivel_RespostaPossivelID)
                .Index(t => t.Cargo_CargoID)
                .Index(t => t.Empresa_EmpresaID)
                .Index(t => t.RespostaPossivel_RespostaPossivelID);
            
            CreateTable(
                "dbo.PerguntasQuestionarios",
                c => new
                    {
                        PerguntasQuestionarioID = c.Int(nullable: false, identity: true),
                        Empresa_EmpresaID = c.Int(),
                        Questionario_QuestionarioID = c.Int(),
                        Sindicato_SindicatoID = c.Int(),
                    })
                .PrimaryKey(t => t.PerguntasQuestionarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .ForeignKey("dbo.Questionarios", t => t.Questionario_QuestionarioID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.Empresa_EmpresaID)
                .Index(t => t.Questionario_QuestionarioID)
                .Index(t => t.Sindicato_SindicatoID);
            
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
                "dbo.RespostaPossivel",
                c => new
                    {
                        RespostaPossivelID = c.Int(nullable: false, identity: true),
                        DescricaoRespostaPossivel = c.String(maxLength: 255),
                    })
                .PrimaryKey(t => t.RespostaPossivelID);
            
            CreateTable(
                "dbo.UsuariosEmpresas",
                c => new
                    {
                        UsuarioEmpresaID = c.Int(nullable: false, identity: true),
                        NomeUsuarioEmpresa = c.String(nullable: false, maxLength: 100),
                        LoginUsuarioEmpresa = c.String(nullable: false, maxLength: 10),
                        SenhaUsuarioEmpresa = c.String(nullable: false, maxLength: 10),
                        Empresa_EmpresaID = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioEmpresaID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .Index(t => t.Empresa_EmpresaID);
            
            CreateTable(
                "dbo.UsuariosFederacao",
                c => new
                    {
                        UsuarioFederacaoID = c.Int(nullable: false, identity: true),
                        NomeUsuarioFederacao = c.String(nullable: false, maxLength: 100),
                        LoginUsuarioFederacao = c.String(nullable: false, maxLength: 10),
                        SenhaUsuarioFederacao = c.String(nullable: false, maxLength: 10),
                        Federacao_FederacaoID = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioFederacaoID)
                .ForeignKey("dbo.Federacao", t => t.Federacao_FederacaoID)
                .Index(t => t.Federacao_FederacaoID);
            
            CreateTable(
                "dbo.UsuariosSindicatos",
                c => new
                    {
                        UsuarioSindicatoID = c.Int(nullable: false, identity: true),
                        NomeUsuarioSindicato = c.String(nullable: false, maxLength: 100),
                        LoginUsuarioSindicato = c.String(nullable: false, maxLength: 10),
                        SenhaUsuarioSindicato = c.String(nullable: false, maxLength: 10),
                        Sindicato_SindicatoID = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioSindicatoID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.Sindicato_SindicatoID);
            
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
            DropForeignKey("dbo.UsuariosSindicatos", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.UsuariosFederacao", "Federacao_FederacaoID", "dbo.Federacao");
            DropForeignKey("dbo.UsuariosEmpresas", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.PerguntasQuestionarios", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "PerguntasQuestionario_PerguntasQuestionarioID", "dbo.PerguntasQuestionarios");
            DropForeignKey("dbo.RespostaPossivelPerguntasQuestionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.Funcionarios", "RespostaPossivel_RespostaPossivelID", "dbo.RespostaPossivel");
            DropForeignKey("dbo.PerguntasQuestionarios", "Questionario_QuestionarioID", "dbo.Questionarios");
            DropForeignKey("dbo.PerguntasQuestionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.Funcionarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.Funcionarios", "Cargo_CargoID", "dbo.Cargos");
            DropForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.Sindicatos", "Federacao_FederacaoID", "dbo.Federacao");
            DropForeignKey("dbo.Cargos", "SetorArea_SetorAreaID", "dbo.SetoresAreas");
            DropForeignKey("dbo.Bairro", "Cidade_CidadeID", "dbo.Cidades");
            DropForeignKey("dbo.Cidades", "Estado_EstadoID", "dbo.Estados");
            DropIndex("dbo.UsuariosSindicatos", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.UsuariosFederacao", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.UsuariosEmpresas", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "PerguntasQuestionario_PerguntasQuestionarioID" });
            DropIndex("dbo.RespostaPossivelPerguntasQuestionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropIndex("dbo.Funcionarios", new[] { "RespostaPossivel_RespostaPossivelID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Questionario_QuestionarioID" });
            DropIndex("dbo.PerguntasQuestionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.Funcionarios", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.Funcionarios", new[] { "Cargo_CargoID" });
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Sindicatos", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Cargos", new[] { "SetorArea_SetorAreaID" });
            DropIndex("dbo.Bairro", new[] { "Cidade_CidadeID" });
            DropIndex("dbo.Cidades", new[] { "Estado_EstadoID" });
            DropTable("dbo.RespostaPossivelPerguntasQuestionarios");
            DropTable("dbo.UsuariosSindicatos");
            DropTable("dbo.UsuariosFederacao");
            DropTable("dbo.UsuariosEmpresas");
            DropTable("dbo.RespostaPossivel");
            DropTable("dbo.Questionarios");
            DropTable("dbo.PerguntasQuestionarios");
            DropTable("dbo.Funcionarios");
            DropTable("dbo.Federacao");
            DropTable("dbo.Sindicatos");
            DropTable("dbo.Empresas");
            DropTable("dbo.SetoresAreas");
            DropTable("dbo.Cargos");
            DropTable("dbo.Estados");
            DropTable("dbo.Cidades");
            DropTable("dbo.Bairro");
        }
    }
}
