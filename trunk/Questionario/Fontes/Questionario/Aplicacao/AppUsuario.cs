using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppUsuario
    {
        public Contexto Banco { get; set; }

        public AppUsuario()
        {
            Banco = new Contexto();
        }
        
        public IEnumerable<DtoUsuario> Listar()
        {
            var retorno = (from s in Banco.Usuario
                           select new DtoUsuario
                           {
                                UsuarioID  = s.UsuarioID,
                                NomeUsuario = s.NomeUsuario
                           }).ToList();

            return retorno;
        }

    }
}
