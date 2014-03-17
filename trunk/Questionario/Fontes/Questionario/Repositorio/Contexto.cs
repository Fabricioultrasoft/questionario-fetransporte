using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Dominio;

namespace Repositorio
{
    public class Contexto : DbContext
    {
        public DbSet<Cargo> Cargo { get; set; }
        public DbSet<Federacao> Federacao { get; set; }
        public DbSet<Sindicato> Sindicato { get; set; }
        public DbSet<Funcionario> Funcionario { get; set; }
        public DbSet<SetorArea> SetorArea { get; set; }

        public DbSet<Usuario> Usuario { get; set; }
        public DbSet<Empresa> Empresa { get; set; }

        public DbSet<Cidade> Cidade { get; set; }
        public DbSet<Estado> Estado { get; set; }
        public DbSet<Bairro> Bairro { get; set; }

        public DbSet<Questionario> Questionario { get; set; }
        public DbSet<PerguntasQuestionario> PerguntasQuestionario { get; set; }
        public DbSet<RespostaPossivel> RespostaPossivel { get; set; }
    }
}
