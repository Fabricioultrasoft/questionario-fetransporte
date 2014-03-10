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
        public int UsuarioID { get; set; }
        public string NomeUsuario { get; set; }
        public string LoginUsuario { get; set; }
        public string SenhaUsuario { get; set; }
        public int TipoUsuario { get; set; }

        public virtual Empresa Empresa { get; set; }
        public virtual Sindicato Sindicato { get; set; }
        public virtual Federacao Federacao { get; set; }
    }
}
