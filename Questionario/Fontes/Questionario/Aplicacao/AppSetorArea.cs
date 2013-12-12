using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppSetorArea
    {
        public Contexto Banco { get; set; }

        public AppSetorArea()
        {
            Banco = new Contexto();
        }

        public IEnumerable<SetorArea> Listar()
        {
            var retorno = Banco.SetorArea.ToList();
            return retorno;
        }

    }
}
