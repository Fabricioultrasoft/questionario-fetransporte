namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _002 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Usuarios",
                c => new
                    {
                        UsuarioID = c.Int(nullable: false, identity: true),
                        NomeUsuario = c.String(),
                        LoginUsuario = c.String(),
                        SenhaUsuario = c.String(),
                        TipoUsuario = c.Int(nullable: false),
                        Empresa_EmpresaID = c.Int(),
                        Federacao_FederacaoID = c.Int(),
                        Sindicato_SindicatoID = c.Int(),
                    })
                .PrimaryKey(t => t.UsuarioID)
                .ForeignKey("dbo.Empresas", t => t.Empresa_EmpresaID)
                .ForeignKey("dbo.Federacao", t => t.Federacao_FederacaoID)
                .ForeignKey("dbo.Sindicatos", t => t.Sindicato_SindicatoID)
                .Index(t => t.Empresa_EmpresaID)
                .Index(t => t.Federacao_FederacaoID)
                .Index(t => t.Sindicato_SindicatoID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Usuarios", "Sindicato_SindicatoID", "dbo.Sindicatos");
            DropForeignKey("dbo.Usuarios", "Federacao_FederacaoID", "dbo.Federacao");
            DropForeignKey("dbo.Usuarios", "Empresa_EmpresaID", "dbo.Empresas");
            DropIndex("dbo.Usuarios", new[] { "Sindicato_SindicatoID" });
            DropIndex("dbo.Usuarios", new[] { "Federacao_FederacaoID" });
            DropIndex("dbo.Usuarios", new[] { "Empresa_EmpresaID" });
            DropTable("dbo.Usuarios");
        }
    }
}
