using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Sindicatos")]
    public class Sindicato
    {
        public int SindicatoID { get; set; }

        [Required(ErrorMessage="Descrição do sindicato é obrigatória")]
        [StringLength(255,ErrorMessage="Quantidade maxima de caracteres: 255")]
        public String NomeSindicato { get; set; }

        public byte[] LogoMarca { get; set; }

        public virtual List<Empresa> Empresa { get; set; }

        public Federacao Federacao { get; set; }

        public virtual IEnumerable<PerguntaQuestionario> PerguntasQuestionario { get; set; }
    }
}
