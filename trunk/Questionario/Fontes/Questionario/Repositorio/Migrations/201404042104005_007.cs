namespace Repositorio.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _007 : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Pergunta",
                c => new
                    {
                        PerguntaID = c.Int(nullable: false, identity: true),
                        Descricao = c.String(maxLength: 100),
                    })
                .PrimaryKey(t => t.PerguntaID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Pergunta");
        }
    }
}
