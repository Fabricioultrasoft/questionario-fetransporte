using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Cidades")]
    public class Cidade
    {
        public int CidadeID { get; set; }

        [StringLength(100, ErrorMessage = "")]
        public String Descricao { get; set; }

        public IEnumerable<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
