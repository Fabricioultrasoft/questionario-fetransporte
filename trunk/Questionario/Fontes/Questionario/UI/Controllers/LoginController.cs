using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/
        private static string login = "felicio";
        private static string password = "123";

        public ActionResult Index()
        {
            return View();
        }

        public JsonResult EfetuarLogin(string usuario, string senha) {

            if (login.Equals(usuario) && senha.Equals(password))
            {
                return new JsonResult
                {
                   Data = true
                };
            }
            else {
                return new JsonResult 
                { 
                    Data = false
                };
            }
        }
    }
}
