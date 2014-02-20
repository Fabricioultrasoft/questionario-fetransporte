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

        public ActionResult Home()
        {
            return View();
        }

        public ActionResult Usuarios() {
            return View();
        }
    }
}
