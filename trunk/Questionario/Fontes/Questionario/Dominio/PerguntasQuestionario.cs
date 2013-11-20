using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class PerguntasQuestionario
    {
        public int PerguntasQuestionarioID { get; set; }
        public Questionario Questionario { get; set; }
        public Empresa Empresa { get; set; }
        public Sindicato Sindicato { get; set; }
    }
}
