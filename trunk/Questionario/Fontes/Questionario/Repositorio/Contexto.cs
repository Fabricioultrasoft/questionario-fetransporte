using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Dominio;

namespace Repositorio
{
    public class Contexto: DbContext
    {
        public DbSet<Cargo> Cargo { get; set; }
        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Federacao> Federacao { get; set; }
        public DbSet<Sindicato> Sindicato  { get; set; }
        public DbSet<Funcionario> Funcionario  { get; set; }
        public DbSet<SetorArea> SetorArea  { get; set; }
        public DbSet<UsuarioEmpresa> UsuarioEmpresa  { get; set; }
        public DbSet<UsuarioFederacao> UsuarioFederacao  { get; set; }
        public DbSet<UsuarioSindicato> UsuarioSindicato { get; set; }
        public DbSet<Empresa> Empresa { get; set; }

        public DbSet<Questionario> Questionario { get; set; }
        public DbSet<Cidade> Cidade { get; set; }
        public DbSet<Especialidade> Especialidade { get; set; }
        public DbSet<Peso> Peso { get; set; }
        public DbSet<UtilizaEstruturaSestSenat> UtilizaEstruturaSestSenat { get; set; }
        public DbSet<PerguntasQuestionario> PerguntasQuestionario { get; set; }
        public DbSet<Altura> Altura { get; set; }
        public DbSet<AnoAdmissao> AnoAdmissao { get; set; }
    }
}
