namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _004 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Usuarios", "NomeUsuario", c => c.String(nullable: false, maxLength: 100));
            AlterColumn("dbo.Usuarios", "LoginUsuario", c => c.String(maxLength: 30));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Usuarios", "LoginUsuario", c => c.String());
            AlterColumn("dbo.Usuarios", "NomeUsuario", c => c.String());
        }
    }
}
