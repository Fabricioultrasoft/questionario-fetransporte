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
    public class AppUsuario
    {
        public Contexto Banco { get; set; }

        public AppUsuario()
        {
            Banco = new Contexto();
        }

        public void Cadastrar(DtoUsuario DtoUsuario)
        {
            var Usuario = new Usuario
                {
                    NomeUsuario = DtoUsuario.NomeUsuario,
                    LoginUsuario = DtoUsuario.LoginUsuario,
                    SenhaUsuario = DtoUsuario.SenhaUsuario,
                    TipoUsuario = DtoUsuario.TipoUsuario,
                };
            Banco.Usuario.Add(Usuario);
            Banco.SaveChanges();
        }

        public bool VerificarLogin(string Login, string Senha)
        {
            var retorno = Banco.Usuario.Where(x => x.LoginUsuario == Login && x.SenhaUsuario == Senha).FirstOrDefault();

            if (retorno != null)
                return true;
            else
                return false;
        }

        public IEnumerable<DtoUsuario> Listar(int tipoUsuario)
        {
            var retorno = (from s in Banco.Usuario
                           where s.TipoUsuario == tipoUsuario
                           select new DtoUsuario
                           {
                               UsuarioID = s.UsuarioID,
                               NomeUsuario = s.NomeUsuario,
                               LoginUsuario = s.LoginUsuario,
                               SenhaUsuario = s.SenhaUsuario,
                               TipoUsuario = s.TipoUsuario
                           }).ToList();

            return retorno;
        }
        public void Alterar(DtoUsuario DtoUsuario)
        {
            var UsuarioSalvar = Banco.Usuario.Where(x => x.UsuarioID == DtoUsuario.UsuarioID).First();

            UsuarioSalvar.NomeUsuario = DtoUsuario.NomeUsuario;

            Banco.SaveChanges();
        }


        public IEnumerable<DtoUsuario> Obter(int codUsuario)
        {
            var retorno = (from s in Banco.Usuario
                           where s.UsuarioID == codUsuario
                           select new DtoUsuario
                           {
                               UsuarioID = codUsuario,
                               LoginUsuario = s.LoginUsuario,
                               NomeUsuario = s.NomeUsuario,
                               TipoUsuario = s.TipoUsuario
                           }).ToList();
            return retorno;
        }
    }
}
