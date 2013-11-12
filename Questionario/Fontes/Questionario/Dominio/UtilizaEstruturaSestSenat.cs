using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UtilizaEstruturaSestSenat")]
    public class UtilizaEstruturaSestSenat
    {
        public int UtilizaEstruturaSestSenatID { get; set; }

        [StringLength(100, ErrorMessage = "")]
        public int Descricao { get; set; }

        public List<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
