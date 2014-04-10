using Aplicacao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    

    public class FuncionarioController : Controller
    {
        private AppFuncionario appFuncionario;

        public ActionResult Home()
        {
            appFuncionario = new AppFuncionario();
            return View();
        }

        public JsonResult Listar()
        {
            appFuncionario = new AppFuncionario();
            var result = appFuncionario.Listar();

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }
    }
}
