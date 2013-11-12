namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _001 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false, identity: true),
                        NomeUsuario = c.String(nullable: false, maxLength: 100),
                    })
                .PrimaryKey(t => t.UsuarioID);
            
            CreateTable(
                "dbo.Empresas",
                c => new
                    {
                        EmpresaID = c.Int(nullable: false, identity: true),
                        NomeEmpresa = c.String(maxLength: 255),
                        EmailEmpresa = c.String(maxLength: 255),
                        LogoMarca = c.Binary(),
                        Sindicato_SindicatoID = c.Int(nullable: false),
                        Funcionario_FuncionarioID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EmpresaID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID, cascadeDelete: true)
                .ForeignKey("dbo.Funcionarios", t => t.Funcionario_FuncionarioID, cascadeDelete: true)
                .Index(t => t.Sindicato_SindicatoID)
                .Index(t => t.Funcionario_FuncionarioID);
            
            CreateTable(
                "dbo.Sindicatos",
                c => new
                    {
                        SindicatoID = c.Int(nullable: false, identity: true),
                        NomeSindicato = c.String(nullable: false, maxLength: 255),
                        LogoMarca = c.Binary(),
                    })
                .PrimaryKey(t => t.SindicatoID);
            
            CreateTable(
                "dbo.Funcionarios",
                c => new
                    {
                        FuncionarioID = c.Int(nullable: false, identity: true),
                        Matricula = c.String(maxLength: 10),
                        NomeDoFuncionairo = c.String(nullable: false, maxLength: 255),
                        EmailDoFuncionario = c.String(maxLength: 255),
                        Cargo_CargoID = c.Int(),
                    })
                .PrimaryKey(t => t.FuncionarioID)
                .ForeignKey("dbo.Cargos", t => t.Cargo_CargoID)
                .Index(t => t.Cargo_CargoID);
            
            CreateTable(
                "dbo.Cargos",
                c => new
                    {
                        CargoID = c.Int(nullable: false, identity: true),
                        NomeCargos = c.String(maxLength: 255),
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
                "dbo.Federacao",
                c => new
                    {
                        FederacaoID = c.Int(nullable: false, identity: true),
                        DescricaoFederacao = c.String(maxLength: 255),
                    })
                .PrimaryKey(t => t.FederacaoID);
            
            CreateTable(
                "dbo.UsuariosEmpresas",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false),
                        Empresa_EmpresaID = c.Int(),
                        UsuarioEmpresaID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UsuarioID)
                .ForeignKey("dbo.Usuarios", t => t.UsuarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .Index(t => t.UsuarioID)
                .Index(t => t.Empresa_EmpresaID);
            
            CreateTable(
                "dbo.UsuariosFederacao",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false),
                        Federacao_FederacaoID = c.Int(),
                        UsuarioFederacaoID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UsuarioID)
                .ForeignKey("dbo.Usuarios", t => t.UsuarioID)
                .ForeignKey("dbo.Federacao", t => t.Federacao_FederacaoID)
                .Index(t => t.UsuarioID)
                .Index(t => t.Federacao_FederacaoID);
            
            CreateTable(
                "dbo.UsuariosSindicatos",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false),
                        Sindicato_SindicatoID = c.Int(),
                        UsuarioSindicatoID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.UsuarioID)
                .ForeignKey("dbo.Usuarios", t => t.UsuarioID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.UsuarioID)
                .Index(t => t.Sindicato_SindicatoID);
            
        }
        
        public override void Down()
        {
            DropIndex("dbo.UsuariosSindicatos", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.UsuariosSindicatos", new[] { "UsuarioID" });
            DropIndex("dbo.UsuariosFederacao", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.UsuariosFederacao", new[] { "UsuarioID" });
            DropIndex("dbo.UsuariosEmpresas", new[] { "Empresa_EmpresaID" });
            DropIndex("dbo.UsuariosEmpresas", new[] { "UsuarioID" });
            DropIndex("dbo.Cargos", new[] { "SetorArea_SetorAreaID" });
            DropIndex("dbo.Funcionarios", new[] { "Cargo_CargoID" });
            DropIndex("dbo.Empresas", new[] { "Funcionario_FuncionarioID" });
            DropIndex("dbo.Empresas", new[] { "Sindicato_SindicatoID" });
            DropForeignKey("dbo.UsuariosSindicatos", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.UsuariosSindicatos", "UsuarioID", "dbo.Usuarios");
            DropForeignKey("dbo.UsuariosFederacao", "Federacao_FederacaoID", "dbo.Federacao");
            DropForeignKey("dbo.UsuariosFederacao", "UsuarioID", "dbo.Usuarios");
            DropForeignKey("dbo.UsuariosEmpresas", "Empresa_EmpresaID", "dbo.Empresas");
            DropForeignKey("dbo.UsuariosEmpresas", "UsuarioID", "dbo.Usuarios");
            DropForeignKey("dbo.Cargos", "SetorArea_SetorAreaID", "dbo.SetoresAreas");
            DropForeignKey("dbo.Funcionarios", "Cargo_CargoID", "dbo.Cargos");
            DropForeignKey("dbo.Empresas", "Funcionario_FuncionarioID", "dbo.Funcionarios");
            DropForeignKey("dbo.Empresas", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropTable("dbo.UsuariosSindicatos");
            DropTable("dbo.UsuariosFederacao");
            DropTable("dbo.UsuariosEmpresas");
            DropTable("dbo.Federacao");
            DropTable("dbo.SetoresAreas");
            DropTable("dbo.Cargos");
            DropTable("dbo.Funcionarios");
            DropTable("dbo.Sindicatos");
            DropTable("dbo.Empresas");
            DropTable("dbo.Usuarios");
        }
    }
}
