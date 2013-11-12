using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("AnoAdmissao")]
    public class AnoAdmissao
    {
        public int AnoAdmissaoID { get; set; }

        [StringLength(04, ErrorMessage = "")]
        public String Descricao { get; set; }

        public IEnumerable<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
