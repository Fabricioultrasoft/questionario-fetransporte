using System;
using System.Collections.Generic;

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
