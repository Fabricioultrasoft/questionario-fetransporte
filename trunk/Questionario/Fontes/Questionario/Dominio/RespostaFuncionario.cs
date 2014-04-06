using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    [Table("RespostasFuncionario")]
    public class RespostaFuncionario
    {
        public int RespostaFuncionarioID { get; set; }

        public virtual Funcionario Funcionario { get; set; }
        public virtual RespostaPossivel Resposta { get; set; }
        public DateTime DataHoraDaResposta { get; set; }
    }
}
