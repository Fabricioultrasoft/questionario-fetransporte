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
    [Table("Federacao")]
    public class Federacao
    {
        public int FederacaoID { get; set; }
     
        [MaxLength(255,ErrorMessage="Quantidade máxima de caracteres: 255")]
        public String DescricaoFederacao { get; set; }

        public virtual IEnumerable<UsuarioFederacao> UsuarioFederacao { get; set; }
    }
}
