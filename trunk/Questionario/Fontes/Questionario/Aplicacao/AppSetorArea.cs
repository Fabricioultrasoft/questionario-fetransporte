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
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public IEnumerable<DtoSetorArea> Listar()
        {
            var retorno = (from s in Banco.SetorArea
                           select new DtoSetorArea
                           {
                               SetorAreaID = s.SetorAreaID,
                               NomeSetorArea = s.NomeSetorArea
                           }).ToList();
            return retorno;

            //var retorno = Banco.SetorArea.ToList();
            //return retorno;
        }

    }
}
