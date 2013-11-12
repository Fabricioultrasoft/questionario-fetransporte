using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("SetoresAreas")]
    public class SetorArea
    {
        public int SetorAreaID { get; set; }

        [Required(ErrorMessage="Descrição do setor é obrigatória")]
        [MaxLength(100, ErrorMessage = "Quantidade máxima de caracteres: 100")]
        public String NomeSetorArea { get; set; }

        public virtual IEnumerable<Cargo> Cargo { get; set; }
    }
}
