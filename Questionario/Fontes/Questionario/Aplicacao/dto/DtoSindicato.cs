using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Aplicacao.dto
{
    public class DtoSindicato
    {
        public DtoSindicato()
        {
            this.Empresas = new List<DtoEmpresa>();
        }

        public int SindicatoID { get; set; }
        public String NomeSindicato { get; set; }
        public List<DtoEmpresa> Empresas { get; set; }
    }
}
