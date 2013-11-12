using System;
using System.Collections.Generic;

using Dominio;


namespace Aplicacao.dto
{
    public class DtoCargo
    {
        public int CargoID { get; set; }
        public String NomeCargos { get; set; }
        public string Observacao { get; set; }
        public virtual IEnumerable<Funcionario> Funcionario { get; set; }
        public SetorArea SetorArea { get; set; }
    }
}
