using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aplicacao.dto
{
    public class DtoQuestionario
    {
        public int QuestionarioID { get; set; }
        public String AnoQuestionario { get; set; }
        public DateTime DataValidade { get; set; }
    }
}
