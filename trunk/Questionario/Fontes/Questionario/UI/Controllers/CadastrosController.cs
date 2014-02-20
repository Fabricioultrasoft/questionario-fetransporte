using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Aplicacao;
using Aplicacao.dto;
using Dominio;
using System.Xml;

namespace UI.Controllers
{
    public class CadastrosController : Controller
    {
        private Sindicato sindicato;
        private AppSindicato sindicatoApp;
        
        private XmlDocument doc;

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

        #region Usuario

            public ActionResult Usuario()
            {
                return View();
            }
            public JsonResult ListarUsuarios(string entidade, string path) {

                doc = new XmlDocument();
                doc.Load(path);

                List<Usuario> lista = new List<Usuario>();
           

                XmlNodeList nodes = doc.SelectNodes(@"/dados/usuarios/"+entidade+"/usuario");

                foreach (XmlNode node in nodes) {
                
                    var usuario = new Dominio.Usuario();

                    usuario.UsuarioID = int.Parse(node["id"].InnerText);
                    usuario.NomeUsuario = node["nome"].InnerText;
                    usuario.LoginUsuario = node["login"].InnerText;
                    usuario.SenhaUsuario = node["senha"].InnerText;

                    lista.Add(usuario);
                }

                return new JsonResult() 
                { 
                    Data = lista
                };
            }
            public void CadastrarUsuario(string id, string nome, string login, string senha, string entidade, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);

                XmlNode linha = doc.CreateElement("usuario");

                XmlNode Id = doc.CreateElement("id");
                XmlNode Nome = doc.CreateElement("nome");
                XmlNode Login = doc.CreateElement("login");
                XmlNode Senha = doc.CreateElement("senha");

                Id.InnerText = id;
                Nome.InnerText = nome;
                Login.InnerText = login;
                Senha.InnerText = senha;

                linha.AppendChild(Id);
                linha.AppendChild(Nome);
                linha.AppendChild(Login);
                linha.AppendChild(Senha);

                doc.SelectSingleNode(@"/dados/usuarios/" + entidade).AppendChild(linha);

                doc.Save(path);
            }
            public JsonResult getUsuarioEntidade(string id, string entidade, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);
                List<Dominio.Usuario> lista = new List<Dominio.Usuario>();

                XmlNodeList nodes = doc.SelectNodes(@"/dados/usuarios/"+entidade+"/usuario");

                foreach (XmlNode node in nodes)
                {
                    if (node["id"].InnerText == id)
                    {
                        var usuario = new Dominio.Usuario()
                        {
                            UsuarioID = int.Parse(node["id"].InnerText),
                            NomeUsuario = node["nome"].InnerText,
                            LoginUsuario = node["login"].InnerText,
                            SenhaUsuario = node["senha"].InnerText
                        };
                        lista.Add(usuario);
                    }
                }

                return new JsonResult()
                {
                    Data = lista
                };
            }
            public void AlterarUsuario(string id, string nome, string login, string senha, string entidade, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);
                XmlNode no;
                no = doc.SelectSingleNode(String.Format("/dados/usuarios/"+entidade+"/usuario[id={0}]", id));
                no.SelectSingleNode("./nome").InnerText = nome;
                no.SelectSingleNode("./login").InnerText = login;
                no.SelectSingleNode("./senha").InnerText = senha;
                doc.Save(path);
            }
            public void DeletarUsuario(string id, string entidade, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);

                XmlNode t = doc.SelectSingleNode(String.Format("/dados/usuarios/" + entidade + "/usuario[id={0}]", id));
                t.ParentNode.RemoveChild(t);

                doc.Save(path);
            }
        
        #endregion

        #region Cargo
        
            public ActionResult Cargo()
            {
                return View();
            }

            public JsonResult ListarCargos(string path) {
                doc = new XmlDocument();
                doc.Load(path);

                List<Dominio.Cargo> lista = new List<Dominio.Cargo>();


                XmlNodeList nodes = doc.SelectNodes(@"/dados/cargos/cargo");

                foreach (XmlNode node in nodes)
                {

                    var cargo = new Dominio.Cargo();

                    cargo.CargoID = int.Parse(node["id"].InnerText);
                    cargo.NomeCargos = node["nome"].InnerText;
                    

                    lista.Add(cargo);
                }

                return new JsonResult()
                {
                    Data = lista
                };
            }

            public void AdicionarCargo(string id, string nome, string setorArea, string path) {
                doc = new XmlDocument();
                doc.Load(path);

                XmlNode linha = doc.CreateElement("cargo");

                XmlNode Id = doc.CreateElement("id");
                XmlNode Cargo = doc.CreateElement("nome");
                XmlNode SetorArea = doc.CreateElement("setorArea");

                Id.InnerText = id;
                Cargo.InnerText = nome;
                SetorArea.InnerText = setorArea;

                linha.AppendChild(Id);
                linha.AppendChild(Cargo);
                linha.AppendChild(SetorArea);

                doc.SelectSingleNode(@"/dados/cargos").AppendChild(linha);

                doc.Save(path);
            }

            public void AlterarCargo(string id, string nome, string setorArea, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);
                XmlNode no;
                no = doc.SelectSingleNode(String.Format("/dados/cargos/cargo[id={0}]", id));
                no.SelectSingleNode("./cargo").InnerText = nome;
                no.SelectSingleNode("./setorArea").InnerText = setorArea;

                doc.Save(path);
            }
           
            public void DeletarCargo(string id, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);

                XmlNode t = doc.SelectSingleNode(String.Format("/dados/cargos/cargo[id={0}]", id));
                t.ParentNode.RemoveChild(t);

                doc.Save(path);
            }

            public JsonResult obterSetorAreas(String path) {

                doc = new XmlDocument();
                doc.Load(path);

                List<SetorArea> lista = new List<SetorArea>();
                XmlNodeList nodes = doc.SelectNodes(@"/dados/setorAreas/setorArea");

                foreach (XmlNode node in nodes) {
                    var setorArea = new SetorArea() { 
                        SetorAreaID = int.Parse(node["id"].InnerText),
                        NomeSetorArea = node["nome"].InnerText,
                    };

                    lista.Add(setorArea);
                }

                return new JsonResult() { 
                    Data = lista
                };
            }

            public JsonResult getCargo(string id, string path)
            {
                doc = new XmlDocument();
                doc.Load(path);
                List<Dominio.Cargo> lista = new List<Dominio.Cargo>();

                XmlNodeList nodes = doc.SelectNodes(@"/dados/cargos/cargo");

                foreach (XmlNode node in nodes)
                {
                    if (node["id"].InnerText == id)
                    {
                        var cargo = new Dominio.Cargo()
                        {
                            CargoID = int.Parse(node["id"].InnerText),
                            NomeCargos = node["nome"].InnerText,
                           
                        };
                        lista.Add(cargo);
                    }
                }
                return new JsonResult() { 
                    Data = lista
                };
            }

        #endregion


        public JsonResult obterSindicatos() {
            
           return new JsonResult() { 
                Data = null
            };

        }

        public void EnviarQuestionario() { 
             
        }

        public ActionResult Empresa()
        {
            return View();
        }

        public JsonResult ListarEmpresas(string path)
        {
            return new JsonResult()
            {
                Data = null
            };
        }

        public JsonResult getEmpresa(string id, string path)
        {
            return new JsonResult()
            {
                Data = null
            };
        }

        public void AdicionarEmpresa(string id, string nome, string email, string sindicato, string path)
        {
       
        }

        public void AlterarEmpresa(string id, string nome, string email, string sindicato, string path)
        {
        }

        public void DeletarEmpresa(string id, string path)
        {

        }

        public ActionResult Funcionario()
        {
            return View();
        }

        public ActionResult SetorArea()
        {
            return View();
        }

        public ActionResult Questionario()
        {
            return View();
        }

    }

}
