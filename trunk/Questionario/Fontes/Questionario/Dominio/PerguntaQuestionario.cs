using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    [Table("PerguntasQuestionario")]
    public class PerguntaQuestionario
    {
        public int PerguntaQuestionarioID { get; set; }

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        [Required(ErrorMessage="A descrição da pergunta é de preenchimento obrigatório")]
        public String Descricao { get; set; }

        public bool MultiplaEscolha { get; set; }

        public Questionario Questionario { get; set; }

        public IEnumerable<RespostaPossivel> RespostasPossiveis { get; set; }
    }
}
