using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;

using Aplicacao.dto;
using Repositorio;
using Dominio;

namespace Aplicacao
{
    public class AppCargo
    {
        public Contexto Banco { get; set; }

        public AppCargo()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public IEnumerable<Cargo> Listar()
        {
            var retorno = Banco.Cargo.Include(x=> x.SetorArea).ToList();
            return retorno;
        }
    }
}
