using Aplicacao;
using Aplicacao.dto;
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

        public JsonResult ObterSetorAreaPorID(int SetorAreaID)
        {
            appSetorArea = new AppSetorArea();
            var result = appSetorArea.Obter(SetorAreaID);

            return new JsonResult()
            {
                Data = result
            };
        }

        public void Cadastrar(string nomeSetorArea)
        {
            appSetorArea = new AppSetorArea();
            DtoSetorArea setorArea = new DtoSetorArea()
            {
                NomeSetorArea = nomeSetorArea,
            };
            appSetorArea.Inserir(setorArea);
        }

        public void Alterar(int idSetorArea, string nomeSetorArea) 
        {
            appSetorArea = new AppSetorArea();
            DtoSetorArea setorArea = new DtoSetorArea()
            {
                SetorAreaID = idSetorArea,
                NomeSetorArea = nomeSetorArea
            };
            appSetorArea.Alterar(idSetorArea,setorArea);
        }

        public void Excluir(int idSetorArea) {
            appSetorArea = new AppSetorArea();
            appSetorArea.Excluir(idSetorArea);
        }
    }
}
