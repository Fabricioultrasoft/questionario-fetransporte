using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Repositorio;
using Dominio;

namespace Aplicacao
{
    public class AppUsuarioEmpresa
    {
        public Contexto Banco { get; set; }

        public AppUsuarioEmpresa()
        {
            Banco = new Contexto();
        }

        //public IEnumerable<UsuarioEmpresa> ListarUsuarioEmpresa()
        //{
        //    var retorno = Banco.UsuarioEmpresa.ToList();
        //    return retorno;
        //}

        //public IEnumerable<UsuarioEmpresa> ListarUsuarioEmpresa(int codigoUsuarioEmpresa)
        //{
        //    var retorno = Banco.UsuarioEmpresa.Where(x => x.UsuarioEmpresaID == codigoUsuarioEmpresa).ToList();
        //    return retorno;
        //}

        //public void Inserir(UsuarioEmpresa usuarioempresa)
        //{
        //    Banco.UsuarioEmpresa.Add(usuarioempresa);
        //    Banco.SaveChanges();
        //}

        //public void Alterar(UsuarioEmpresa usuarioempresa)
        //{
        //    UsuarioEmpresa usuarioEmpresaSalvar = Banco.UsuarioEmpresa.Where(x => x.UsuarioEmpresaID == usuarioempresa.UsuarioEmpresaID).First();
        //    usuarioEmpresaSalvar.NomeUsuarioEmpresa = usuarioempresa.NomeUsuarioEmpresa;
        //    usuarioEmpresaSalvar.LoginUsuarioEmpresa = usuarioempresa.LoginUsuarioEmpresa;
        //    usuarioEmpresaSalvar.SenhaUsuarioEmpresa = usuarioempresa.SenhaUsuarioEmpresa;
        //    Banco.SaveChanges();
        //}

        //public void Excluir(int Id)
        //{
        //    UsuarioEmpresa usuarioEmpresaExcluir = Banco.UsuarioEmpresa.Where(x => x.UsuarioEmpresaID == Id).First();
        //    Banco.Set<UsuarioEmpresa>().Remove(usuarioEmpresaExcluir);
        //    Banco.SaveChanges();
        //}
        
    }
}
