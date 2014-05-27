using Aplicacao;
using Aplicacao.dto;
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
        private AppUsuario appUsuario;

        public ActionResult Home()
        {
            appSindicato = new AppSindicato();
            return View();
        }

        public JsonResult Listar() 
        {
            appSindicato = new AppSindicato();
            var result = appSindicato.Listar();

            if (result.Count() == 0) 
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public JsonResult ObterSindicatoPorID(int SindicatoID)
        {
            appSindicato = new AppSindicato();
            var result = appSindicato.Obter(SindicatoID);
           
            return new JsonResult()
            {
                Data = result
            };           
        }

        public void Cadastrar(string nome,string logomarca) 
        {
           
            appSindicato = new AppSindicato();

            DtoSindicato sindicato = new DtoSindicato() {
                NomeSindicato = nome,  
            };

            appSindicato.Inserir(sindicato);
        }

        public JsonResult Alterar(int idSindicato,string nome, string logomarca)
        {
            appSindicato = new AppSindicato();
            var sindicato = appSindicato.Obter(idSindicato);

            sindicato.NomeSindicato = nome;

            //TODO: fazer funcao para atualizar o sindicato
            //appSindicato.Alterar(sindicato);

            return new JsonResult()
            {
                Data = sindicato
            };
            
        }

        public void Deletar(int codSindicato) 
        {
            appSindicato = new AppSindicato();
            appSindicato.Excluir(codSindicato);
        }

        #region ======= Usuarios

        public ActionResult Usuarios()
        {
            appUsuario = new AppUsuario();
            return View();
        }

        public JsonResult ListarUsuarios(int tipoUsuario)
        {

            appUsuario = new AppUsuario();
            var result = appUsuario.Listar(tipoUsuario);

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public void CadastrarUsuario(string nome, string login, string senha, int tipoUsuario)
        {

            appUsuario = new AppUsuario();
            DtoUsuario usuario = new DtoUsuario()
            {
                NomeUsuario = nome,
                LoginUsuario = login,
                SenhaUsuario = senha,
                TipoUsuario = tipoUsuario,
            };

            appUsuario.Inserir(usuario);
        }

        public JsonResult ObterUsuarioPorID(int UsuarioID)
        {
            appUsuario = new AppUsuario();
            var result = appUsuario.Obter(UsuarioID);

            if (result.Count() == 0)
            {
                result = null;
            }

            return new JsonResult()
            {
                Data = result
            };
        }

        public void AlterarUsuario(int id, string nome, string login, string senha, int tipoUsuario)
        {
            appUsuario = new AppUsuario();
            DtoUsuario usuario = new DtoUsuario();

            usuario.UsuarioID = id;
            usuario.NomeUsuario = nome;
            usuario.LoginUsuario = login;
            usuario.TipoUsuario = tipoUsuario;

            if (!senha.Equals(""))
            {
                usuario.SenhaUsuario = senha;
            }

            appUsuario.Alterar(usuario);
        }

        public void ExcluirUsuario(int codUsuario){
            appUsuario = new AppUsuario();
            appUsuario.Excluir(codUsuario);
        }

        #endregion
    }
}
