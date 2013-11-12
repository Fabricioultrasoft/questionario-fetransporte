namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _006 : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Especialidades", "Observacao");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Especialidades", "Observacao", c => c.String());
        }
    }
}
