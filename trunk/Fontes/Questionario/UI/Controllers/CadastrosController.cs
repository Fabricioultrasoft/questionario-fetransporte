using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Aplicacao;
using Aplicacao.dto;
using Dominio;

namespace UI.Controllers
{
    public class CadastrosController : Controller
    {
        public ActionResult Sindicato()
        {

            var sindicatoApp = new AppSindicato();

            IEnumerable<DtoSindicato> listaDeSindicatos = sindicatoApp.Listar();

            return View(listaDeSindicatos);
        }
    }
}
