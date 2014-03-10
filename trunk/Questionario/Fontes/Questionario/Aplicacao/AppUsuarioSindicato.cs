using System.Collections.Generic;
using System.Linq;

using Aplicacao.dto;
using Repositorio;
using Dominio;

namespace Aplicacao
{
    public class AppUsuarioSindicato 
    { 
        public Contexto Banco { get; set; }

        public AppUsuarioSindicato()
        {
            Banco = new Contexto();
        }

        //public IEnumerable<UsuarioSindicato> ListarUsuarioSindicato()
        //{
        //    var retorno = Banco.UsuarioSindicato.ToList();
        //    return retorno;
        //}

        //public IEnumerable<UsuarioSindicato> ListarUsuarioSindicato(int codigoUsuarioSindicato)
        //{
        //    var retorno = Banco.UsuarioSindicato.Where(x => x.UsuarioSindicatoID == codigoUsuarioSindicato).ToList();
        //    return retorno;
        //}

        //public void Inserir(UsuarioSindicato usuariosindicato)
        //{
        //    Banco.UsuarioSindicato.Add(usuariosindicato);
        //    Banco.SaveChanges();
        //}

        //public void Alterar(UsuarioSindicato usuariosindicato)
        //{
        //    UsuarioSindicato usuarioSindicatoSalvar = Banco.UsuarioSindicato.Where(x => x.UsuarioSindicatoID == usuariosindicato.UsuarioSindicatoID).First();
        //    usuarioSindicatoSalvar.NomeUsuarioSindicato = usuariosindicato.NomeUsuarioSindicato;
        //    usuarioSindicatoSalvar.LoginUsuarioSindicato = usuariosindicato.LoginUsuarioSindicato;
        //    usuarioSindicatoSalvar.SenhaUsuarioSindicato = usuariosindicato.SenhaUsuarioSindicato;
        //    Banco.SaveChanges();
        //}

        //public void Excluir(int Id)
        //{
        //    UsuarioSindicato usuarioSindicatoExcluir = Banco.UsuarioSindicato.Where(x => x.UsuarioSindicatoID == Id).First();
        //    Banco.Set<UsuarioSindicato>().Remove(usuarioSindicatoExcluir);
        //    Banco.SaveChanges();
        //}
    }
}
