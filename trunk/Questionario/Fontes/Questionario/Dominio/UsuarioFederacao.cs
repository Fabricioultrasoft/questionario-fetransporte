using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosFederacao")]
    public class UsuarioFederacao
    {
        public int UsuarioFederacaoID { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage = "Quantidade maxima de caracteres")]
        public String NomeUsuarioFederacao { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String LoginUsuarioFederacao { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String SenhaUsuarioFederacao { get; set; }

        public Federacao Federacao { get; set; }
    }
}
