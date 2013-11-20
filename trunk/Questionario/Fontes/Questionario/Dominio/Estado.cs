using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Estados")]
    public class Estado
    {
        public int EstadoID { get; set; }

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String NomeEstado { get; set; }

        [MaxLength(2, ErrorMessage = "Quantidade máxima de caracteres: 2")]
        public String UF { get; set; }
       
    }
}
