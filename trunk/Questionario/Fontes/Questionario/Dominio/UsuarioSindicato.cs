using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosSindicatos")]
    public class UsuarioSindicato
    {
        public int UsuarioSindicatoID { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage = "Quantidade maxima de caracteres")]
        public String NomeUsuarioSindicato { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String LoginUsuarioSindicato { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String SenhaUsuarioSindicato { get; set; }

        public Sindicato Sindicato { get; set; }
    }
}
