namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _015 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Empresas", "Cep", c => c.String(maxLength: 8));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Empresas", "Cep");
        }
    }
}
