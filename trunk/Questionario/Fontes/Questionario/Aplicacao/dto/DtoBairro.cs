using System;

using Dominio;

namespace Aplicacao.dto
{
    public class DtoBairro
    {
        public int BairroID { get; set; }
        public String NomeBairro { get; set; }

        public DtoCidade Cidade { get; set; }
    }
}
