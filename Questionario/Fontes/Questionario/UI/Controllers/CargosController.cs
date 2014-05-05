using Aplicacao;
using Aplicacao.dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    public class CargosController : Controller
    {
        //
        // GET: /Cargos/
        private AppSetorArea appSetorArea;
        private AppCargo appCargo;

        public ActionResult Home()
        {
            return View();
        }

        public JsonResult Listar()
        {
            appCargo = new AppCargo();
            var result = appCargo.Listar();
 
            return new JsonResult() 
            {
                Data = result
            };
        }

        public JsonResult ListarSetoresAreas() 
        {
            appSetorArea = new AppSetorArea();
            var result = appSetorArea.Listar();

            return new JsonResult()
            {
                Data = result
            };
        }

        public JsonResult ObterCargoPorId(int CargoID)
        {
            appCargo = new AppCargo();
            var result = appCargo.Obter(CargoID);

            return new JsonResult()
            {
                Data = result
            };
        }

        public void Cadastrar(string nomeCargo,int setorArea)
        {
            appCargo = new AppCargo();
            appSetorArea = new AppSetorArea();
            DtoSetorArea dtoSetorArea = appSetorArea.Obter(setorArea);

            DtoCargo dtoCargo = new DtoCargo() 
            {
                NomeCargos = nomeCargo,
                SetorArea = dtoSetorArea
            };

            appCargo.Inserir(dtoCargo);
        }

        public void Alterar(int CargoID, string nomeCargo, int setorArea)
        {
            appCargo = new AppCargo();

            appSetorArea = new AppSetorArea();
            DtoSetorArea dtoSetorArea = appSetorArea.Obter(setorArea);

            DtoCargo dtoCargo = new DtoCargo()
            {
                NomeCargos = nomeCargo,
                SetorArea = dtoSetorArea
            };

            appCargo.Alterar(CargoID, dtoCargo);
        }

        public void Excluir(int idCargo)
        {
            appCargo = new AppCargo();
            appCargo.Excluir(idCargo);
        }
    }
}
