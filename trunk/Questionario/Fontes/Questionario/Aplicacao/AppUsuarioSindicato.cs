using System.Collections.Generic;
using System.Linq;

using Aplicacao.dto;
using Repositorio;

namespace Aplicacao
{
    public class AppUsuarioSindicato 
    { 
        public Contexto Banco { get; set; }

        public AppUsuarioSindicato()
        {
            Banco = new Contexto();
        }

        //public IEnumerable<DtoUsuarioSindicato> Listar()
        //{
        //    var retorno = (from s in Banco.UsuarioSindicato
        //                   select new DtoUsuarioSindicato
        //                   {
        //                       UsuarioID = s.UsuarioID,
        //                       NomeUsuario = s.NomeUsuario
        //                   }).ToList();

        //    return retorno;
        //}

    }
}
