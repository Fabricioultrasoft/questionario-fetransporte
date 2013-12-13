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
 
            XmlNodeList nodes = doc.SelectNodes(@"/dados/setorAreas/setorArea");

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
            return new JsonResult() { 
                Data = lista
            };
        }

        public void Adicionar(string id,string name,string path) {
            doc = new XmlDocument();
            doc.Load(path);

            XmlNode linha = doc.CreateElement("setorArea");

            XmlNode Id = doc.CreateElement("id");
            XmlNode SetorArea = doc.CreateElement("nome");

            Id.InnerText = id;
            SetorArea.InnerText = name;

            linha.AppendChild(Id);
            linha.AppendChild(SetorArea);

            doc.SelectSingleNode("/dados/setorAreas").AppendChild(linha);

            doc.Save(path);
        }

        public JsonResult getSetorArea(string id, string path) 
        {
            doc = new XmlDocument();
            doc.Load(path);
            List<Dominio.SetorArea> lista = new List<Dominio.SetorArea>();

            XmlNodeList nodes = doc.SelectNodes(@"/dados/setorAreas/setorArea");
            XmlNodeList xnList = doc.GetElementsByTagName("setorAreas");

            foreach (XmlNode node in nodes)
            {
                if (node["id"].InnerText==id)
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

        public void Alterar(string id, string name, string path)
        {
            doc = new XmlDocument();
            doc.Load(path);
            XmlNode no;
            no = doc.SelectSingleNode(String.Format("/dados/setorAreas/setorArea[id={0}]", id));
            no.SelectSingleNode("./nome").InnerText = name;
            doc.Save(path);
        }

        public void DeletarSetorArea(string id, string path)
        {
            doc = new XmlDocument();
            doc.Load(path);

            XmlNode t = doc.SelectSingleNode(String.Format("/dados/setorAreas/setorArea[id={0}]", id));
            t.ParentNode.RemoveChild(t);

            doc.Save(path);
        }
    }
}
