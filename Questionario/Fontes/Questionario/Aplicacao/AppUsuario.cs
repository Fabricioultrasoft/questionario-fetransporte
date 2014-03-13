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

        public bool VerificarLogin (string Login, string Senha)
        {
            var retorno = Banco.Usuario.Where(x => x.LoginUsuario == Login && x.SenhaUsuario == Senha).FirstOrDefault();

            if (retorno != null)
                return true;
            else
                return false;
        }

    }
}
