using Aplicacao;
using Aplicacao.dto;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class FetransportesController : Controller
    {
        //
        // GET: /Fetransportes/

        private AppUsuario appUsuario;
        private AppUsuarioFederacao appFederacao;

        #region ======= Usuarios

        public ActionResult Usuarios()
        {
            appUsuario = new AppUsuario();
            appFederacao = new AppUsuarioFederacao();
            return View();
        }

        public JsonResult ListarUsuarios(int tipoUsuario) {

            appUsuario = new AppUsuario();
            var result = appUsuario.Listar(tipoUsuario);

            if (result.Count() == 0) {
                result = null;
            }

            return new JsonResult() {
                Data = result
            };
        }

        public void CadastrarUsuario(string nome, string login, string senha, int tipoUsuario) {

            appUsuario = new AppUsuario();
            DtoUsuario usuario = new DtoUsuario() { 
                NomeUsuario = nome,
                LoginUsuario = login,
                SenhaUsuario = senha,
                TipoUsuario = tipoUsuario,
            };

            appUsuario.Cadastrar(usuario);
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

            if(!senha.Equals(""))
            {
                usuario.SenhaUsuario = senha;
            }

            appUsuario.Alterar(usuario);
        }

        #endregion
    }
}
