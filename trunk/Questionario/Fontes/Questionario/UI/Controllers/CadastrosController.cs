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
       private Sindicato sindicato;
       private AppSindicato sindicatoApp;

        public ActionResult Sindicato()
        {
            sindicato = new Sindicato();
            sindicatoApp = new AppSindicato();

            IEnumerable<DtoSindicato> listaDeSindicatos = sindicatoApp.Listar();

            return View(listaDeSindicatos);
        }


        public void AdicionarSindicato(string nome,string logo)
        {
            DtoSindicato sindicato = new DtoSindicato()
            { 
                NomeSindicato = nome
            };  
        }


        public ActionResult Empresa()
        {
            return View();
        }

        public ActionResult Funcionario()
        {
            return View();
        }

        public ActionResult SetorArea()
        {
            return View();
        }

        public ActionResult Cargo()
        {
            return View();
        }

    }

}
