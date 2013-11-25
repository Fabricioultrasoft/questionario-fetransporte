using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json.Linq;
using Aplicacao;
using Aplicacao.dto;
using Dominio;

namespace UI.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            AppSindicato sindicato = new AppSindicato();
            return View();
        }


        public void ImportarDados(string tipo,string dados)
        {

            JObject json = JObject.Parse(dados);
            JArray items = (JArray)json[tipo];
            AppSindicato appSindicato;
            int total = items.Count;

            if (tipo.Equals("Sindicato")) {
                
                appSindicato = new AppSindicato();
                
                for(int i = 0; i < total ; i++){
                
                    DtoSindicato dtoSindicato = new DtoSindicato { 
                        NomeSindicato = items[i].ToString()
                    };
                }
            }

        }

        public ActionResult Sobre()
        {
            return View();
        }
    }
}
