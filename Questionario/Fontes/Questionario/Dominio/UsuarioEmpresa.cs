using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosEmpresas")]
    public class UsuarioEmpresa
    {
        public int UsuarioEmpresaID { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(100, ErrorMessage = "Quantidade maxima de caracteres")]
        public String NomeUsuarioEmpresa { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String LoginUsuarioEmpresa { get; set; }

        [Required(ErrorMessage = "Obrigatório nome do usuario")]
        [StringLength(10, ErrorMessage = "Quantidade maxima de caracteres")]
        public String SenhaUsuarioEmpresa { get; set; }

        public Empresa Empresa { get; set; }
    }
}
