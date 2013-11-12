using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosEmpresas")]
    public class UsuarioEmpresa : Usuario
    {
        public int UsuarioEmpresaID { get; set; }

        public Empresa Empresa { get; set; }
    }
}
