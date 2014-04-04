using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    [Table("Pergunta")]
    public class Pergunta
    {
       public int PerguntaID { get; set; }

       [StringLength(100, ErrorMessage = "")]
       public String Descricao { get; set; }
               
    }
}
