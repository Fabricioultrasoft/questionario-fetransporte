namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _007 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Cargos", "Observacao", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Cargos", "Observacao");
        }
    }
}
