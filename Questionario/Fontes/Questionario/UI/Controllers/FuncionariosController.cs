using Aplicacao;
using Aplicacao.dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace UI.Controllers
{
    

    public class FuncionariosController : Controller
    {
        private AppCargo appCargo;
        private AppEmpresa appEmpresa;

        private DtoFuncionario dtoFuncionario;
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

        public void Cadastrar(string matricula, string nome, string email, bool ativo, int cargoID, int empresaID)
        {
            appCargo = new AppCargo();
            appEmpresa = new AppEmpresa();
            appFuncionario = new AppFuncionario();

            dtoFuncionario = new DtoFuncionario() 
            {
                Matricula = matricula,
                NomeDoFuncionairo = nome,
                EmailDoFuncionario = email,
                //Cargo = appCargo.ObterCargo(cargoID),
                //Empresa = appEmpresa.ObterEmpresa(empresaID)
                
            };

            appFuncionario.Inserir(dtoFuncionario);
        }

        public void Alterar(int funcionarioID, string matricula, string nome, string email, bool ativo, int cargoID, int empresaID)
        {
            appCargo = new AppCargo();
            appEmpresa = new AppEmpresa();
            appFuncionario = new AppFuncionario();

            dtoFuncionario = new DtoFuncionario()
            {
                FuncionarioID = funcionarioID,
                Matricula = matricula,
                NomeDoFuncionairo = nome,
                EmailDoFuncionario = email,
                //Cargo = appCargo.ObterCargo(cargoID),
                //Empresa = appEmpresa.ObterEmpresa(empresaID)
                
            };

            appFuncionario.Alterar(dtoFuncionario);
        }

        public void Excluir(int funcionarioID)
        {
            appFuncionario = new AppFuncionario();
            appFuncionario.Excluir(funcionarioID);
        }
    }
}
