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
    public class EmpresaController : Controller
    {
        //
        // GET: /SetorArea/
        string path = "H:\\files\\data.xml";
        private XmlDocument doc;
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult Listar(string path)
        {
            doc = new XmlDocument();
            doc.Load(path);
            List<Dominio.SetorArea> lista = new List<Dominio.SetorArea>();

            XmlNodeList nodes = doc.SelectNodes(@"/dados/empresas/empresa");

            if (nodes.Count > 0)
            {
                foreach (XmlNode node in nodes)
                {
                    var SetorArea = new Dominio.SetorArea()
                    {
                        SetorAreaID = int.Parse(node["id"].InnerText),
                        NomeSetorArea = node["nome"].InnerText
                    };
                    lista.Add(SetorArea);
                }
            }
            return new JsonResult()
            {
                Data = lista
            };
        }

        public void AdicionarSetorAreaNoXML(string id, string name, string email, string sindicato, string path)
        {
            doc = new XmlDocument();
            doc.Load(path);

            XmlNode linha = doc.CreateElement("empresa");

            XmlNode Id = doc.CreateElement("id");
            XmlNode Nome = doc.CreateElement("nome");
            XmlNode Email = doc.CreateElement("email");
            XmlNode Sindicato = doc.CreateElement("sindicato");

            Id.InnerText = id;
            Nome.InnerText = name;
            Email.InnerText = email;
            Sindicato.InnerText = sindicato;

            linha.AppendChild(Id);
            linha.AppendChild(Nome);

            doc.SelectSingleNode("/dados/empresas").AppendChild(linha);

            doc.Save(path);
        }

        public JsonResult getSetorArea(string id, string name, string email, string sindicato, string path)
        {
            doc = new XmlDocument();
            doc.Load(path);
            List<Dominio.SetorArea> lista = new List<Dominio.SetorArea>();

            XmlNodeList nodes = doc.SelectNodes(@"/dados/setorAreas/setorArea");
            XmlNodeList xnList = doc.GetElementsByTagName("setorAreas");

            foreach (XmlNode node in nodes)
            {
                if (node["id"].InnerText == id)
                {
                    var SetorArea = new Dominio.SetorArea()
                    {
                        SetorAreaID = int.Parse(node["id"].InnerText),
                        NomeSetorArea = node["nome"].InnerText
                    };
                    lista.Add(SetorArea);
                }
            }

            return new JsonResult()
            {
                Data = lista
            };
        }

        public void Alterar(string id, string name, string email, string sindicato, string path)
        {
            doc = new XmlDocument();
            doc.Load(path);
            XmlNode no;
            no = doc.SelectSingleNode(String.Format("/dados/setorAreas/setorArea[id={0}]", id));
            no.SelectSingleNode("./nome").InnerText = name;
            doc.Save(path);
        }

        public void Excluir(string id, string path)
        {

        }
    }
}
