using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aplicacao.dto
{
    public class DtoPerguntaQuestionario
    {
        public int PerguntaQuestionarioID { get; set; }
        public String Descricao { get; set; }
        public bool MultiplaEscolha { get; set; }
        public IEnumerable<DtoRespostaPossivel> RespostasPossiveis { get; set; }
    }
}
