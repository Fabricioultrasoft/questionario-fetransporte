using Aplicacao;
using Dominio;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using System.Xml.Linq;

namespace UI.Controllers
{
    public class SetorAreaController : Controller
    {
        //
        // GET: /SetorArea/
        private AppSetorArea appSetorArea;

        public ActionResult Home()
        {
            appSetorArea = new AppSetorArea();
            return View();
        }

        public JsonResult Listar()
        {
            appSetorArea = new AppSetorArea();
            var result = appSetorArea.Listar();

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public void Cadastrar(string nome,string cargo)
        {
            SetorArea setorArea = new SetorArea() {
                NomeSetorArea = nome,
            };
        }

        public void Alterar(int idSetorArea, string nome, string cargo) 
        {
        
        }
        public void Excluir(int idSetorArea) { }
    }
}
