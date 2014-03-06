using Aplicacao;
using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class SindicatosController : Controller
    {
        //
        
        // GET: /Sindicatos/

        private AppSindicato appSindicato;

        public ActionResult Home()
        {
            loadApp();
            AppSindicato appSindicato = new AppSindicato();
            return View();
        }

        public ActionResult Usuarios()
        {
            loadApp();
            return View();
        }

        public ActionResult Cadastros()
        {
            loadApp();
            return View();
        }

        public void loadApp() {
           appSindicato = new AppSindicato();
        }

        public JsonResult ListarSindicatos() {
            
            List<Sindicato> lista = new List<Sindicato>();
            
            var listResult = appSindicato.ListarSindicato();


            foreach (Sindicato s in listResult) {
                lista.Add(s);
            }

            return new JsonResult() { 
                Data = lista
            };
        }

        public void CadastrarSindicato(string nome, string logomarca, int federacaoID) {


            Sindicato sindicato = new Sindicato() {
                NomeSindicato = nome,
            };

            //appSindicato.Inserir(sindicato);

        }

        public void AlterarSindicato(string nome, string logomarca, int federacaoID) {
            Sindicato sindicato = new Sindicato()
            {
                NomeSindicato = nome,
            };

            //appSindicato.Atualizar(sindicato);
        
        }
    }
}
