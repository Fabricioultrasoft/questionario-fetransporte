namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _004 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Empresas", "Observacao", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Empresas", "Observacao");
        }
    }
}
