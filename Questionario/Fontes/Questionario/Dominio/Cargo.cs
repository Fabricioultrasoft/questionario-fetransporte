using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Cargos")]
    public class Cargo
    {
        public int CargoID { get; set; }

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String NomeCargos { get; set; }

        public String _SetorArea { get; set; }
        public string Observacao { get; set; }

        public virtual IEnumerable<Funcionario> Funcionario { get; set; }
        public SetorArea SetorArea { get; set; }

    }
}
