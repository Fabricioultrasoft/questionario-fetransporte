using Aplicacao;
using Aplicacao.dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class EmpresasController : Controller
    {
        //
        // GET: /UsuariosEmpresa/
        private AppEndereco appEndereco;
        private AppSindicato appSindicato;
        private AppEmpresa appEmpresa;
        private AppUsuario appUsuario;
        private DtoSindicato sindicato;
        private DtoBairro bairro;
        private DtoEmpresa empresa;

        public ActionResult Home()
        {
            return View();
        }

        public JsonResult Listar()
        {
            appEmpresa = new AppEmpresa();
            var result = appEmpresa.ListarEmpresa();

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public JsonResult ObterEmpresaPorID(int EmpresaID)
        {
            appEmpresa = new AppEmpresa();
            var result = appEmpresa.Obter(EmpresaID);

            return new JsonResult()
            {
                Data = result
            };
        }

        public void Cadastrar(string nome, string email, string logomarca, string endereco, string complemento, string cep, int idBairro, int idSindicato)
        {

            appEmpresa = new AppEmpresa();
            appEndereco = new AppEndereco();
            appSindicato = new AppSindicato();

            
            sindicato = appSindicato.Obter(idSindicato);

            empresa = new DtoEmpresa()
            {
                NomeEmpresa = nome,
                EmailEmpresa = email,
                Endereco = endereco,
                Complemento = complemento,
                Cep = cep,
                Sindicato = sindicato,
            };

            appEmpresa.Inserir(empresa);
        }

        public void Alterar(int idEmpresa, string nome, string email, string logomarca, string endereco, string complemento, string cep, int idBairro, int idSindicato)
        {
            appEmpresa = new AppEmpresa();
            appSindicato = new AppSindicato();

            sindicato = appSindicato.Obter(idSindicato);

            empresa = new DtoEmpresa()
            {
                NomeEmpresa = nome,
                EmailEmpresa = email,
                Endereco = endereco,
                Complemento = complemento,
                Cep = cep,
                Sindicato = sindicato,
            };

            appEmpresa.Alterar(empresa);
        }

        public void Excluir(int codEmpresa)
        {
            appEmpresa = new AppEmpresa();
            appEmpresa.Excluir(codEmpresa);
        }


        #region ======= Usuarios

        public ActionResult Usuarios()
        {
            appUsuario = new AppUsuario();
            return View();
        }

        public JsonResult ListarUsuarios(int tipoUsuario)
        {

            appUsuario = new AppUsuario();
            var result = appUsuario.Listar(tipoUsuario);

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public void CadastrarUsuario(string nome, string login, string senha, int tipoUsuario)
        {
            appUsuario = new AppUsuario();
            DtoUsuario usuario = new DtoUsuario()
            {
                NomeUsuario = nome,
                LoginUsuario = login,
                SenhaUsuario = senha,
                TipoUsuario = tipoUsuario,
            };

            appUsuario.Inserir(usuario);
        }

        public JsonResult ObterUsuarioPorID(int UsuarioID)
        {
            appUsuario = new AppUsuario();
            var result = appUsuario.Obter(UsuarioID);

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public void AlterarUsuario(int id, string nome, string login, string senha, int tipoUsuario)
        {
            appUsuario = new AppUsuario();
            DtoUsuario usuario = new DtoUsuario();

            usuario.UsuarioID = id;
            usuario.NomeUsuario = nome;
            usuario.LoginUsuario = login;
            usuario.TipoUsuario = tipoUsuario;

            if (!senha.Equals(""))
            {
                usuario.SenhaUsuario = senha;
            }

            appUsuario.Alterar(usuario);
        }

        public void ExcluirUsuario(int codUsuario)
        {
            appUsuario = new AppUsuario();
            appUsuario.Excluir(codUsuario);
        }

        #endregion
    }
}
