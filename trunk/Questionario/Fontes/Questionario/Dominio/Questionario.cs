using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;


namespace Dominio
{
    [Table("Questionarios")]
    public class Questionario
    {
        public int QuestionarioID { get; set; }

        [Required(ErrorMessage="O Campo Ano é obrigatório.")]
        public String AnoQuestionario { get; set; }

        public DateTime DataValidade { get; set; }

        public virtual Empresa Empresa { get; set; }
        public virtual IEnumerable<PerguntaQuestionario> PerguntasQuestionario { get; set; }
    }
}
