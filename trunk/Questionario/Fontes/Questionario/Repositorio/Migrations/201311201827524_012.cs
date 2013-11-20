namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _012 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Estados", "UF", c => c.String(maxLength: 2));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Estados", "UF");
        }
    }
}
