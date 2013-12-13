using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Usuarios")]
    public class Usuario
    {
        public  int UsuarioID { get; set; }

        [Required(ErrorMessage="Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage="Quantidade maxima de caracteres")]
        public String NomeUsuario { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage = "Quantidade maxima de caracteres")]
        public String LoginUsuario { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage = "Quantidade maxima de caracteres")]
        public String SenhaUsuario { get; set; }

    }
}
