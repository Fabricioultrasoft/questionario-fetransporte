using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Repositorio;
using Aplicacao;
using Dominio;

namespace Aplicacao
{
    public class AppUsuarioFederacao
    {
        public Contexto Banco { get; set; }

        public AppUsuarioFederacao()
        {
            Banco = new Contexto();
        }

        public IEnumerable<UsuarioFederacao> ListarUsuarioFederacao()
        {
            var retorno = Banco.UsuarioFederacao.ToList();
            return retorno;
        }

        public IEnumerable<UsuarioFederacao> ListarUsuarioFederacao(int codigoUsuarioFederacao)
        {
            var retorno = Banco.UsuarioFederacao.Where(x => x.UsuarioFederacaoID == codigoUsuarioFederacao).ToList();
            return retorno;
        }

        public void Inserir(UsuarioFederacao usuariofederacao)
        {
            Banco.UsuarioFederacao.Add(usuariofederacao);
            Banco.SaveChanges();
        }

        public void Alterar(UsuarioFederacao usuariofederacao)
        {
            UsuarioFederacao usuarioFederacaoSalvar = Banco.UsuarioFederacao.Where(x => x.UsuarioFederacaoID == usuariofederacao.UsuarioFederacaoID).First();

            usuarioFederacaoSalvar.NomeUsuarioFederacao = usuariofederacao.NomeUsuarioFederacao;

            usuarioFederacaoSalvar.LoginUsuarioFederacao = usuariofederacao.LoginUsuarioFederacao;
            usuarioFederacaoSalvar.SenhaUsuarioFederacao = usuariofederacao.SenhaUsuarioFederacao;
            Banco.SaveChanges();
        }

        public void Excluir(int Id)
        {
            UsuarioFederacao usuarioFederacaoExcluir = Banco.UsuarioFederacao.Where(x => x.UsuarioFederacaoID == Id).First();
            Banco.Set<UsuarioFederacao>().Remove(usuarioFederacaoExcluir);
            Banco.SaveChanges();
        }

    }
}
