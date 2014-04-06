using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("RespostasPossiveis")]
    public class RespostaPossivel
    {
        public int RespostaPossivelID { get; set; }

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String DescricaoRespostaPossivel { get; set; }

        public PerguntaQuestionario PerguntaQuestionario { get; set; }
    }
}
