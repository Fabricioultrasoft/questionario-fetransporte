using Aplicacao;
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

        private AppUsuarioFederacao appFederacao;

        public ActionResult Usuarios()
        {
            appFederacao = new AppUsuarioFederacao();
            return View();
        }

        public JsonResult ListarUsuarios() {

            //List<UsuarioFederacao> usuarios = new List<UsuarioFederacao>();

            //var listResult = appFederacao.ListarUsuarioFederacao();

            //foreach (var usuario in listResult) {
            //    usuarios.Add(new UsuarioFederacao() { 
            //        UsuarioFederacaoID = usuario.UsuarioFederacaoID,
            //        LoginUsuarioFederacao = usuario.LoginUsuarioFederacao,
            //        NomeUsuarioFederacao = usuario.NomeUsuarioFederacao,
            //        SenhaUsuarioFederacao = usuario.SenhaUsuarioFederacao
            //    });
            //}

            return new JsonResult() { 
            //    Data = usuarios
            };
        }

    }
}
