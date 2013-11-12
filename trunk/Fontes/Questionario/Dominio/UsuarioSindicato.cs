using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("UsuariosSindicatos")]
    public class UsuarioSindicato : Usuario
    {
        public int UsuarioSindicatoID { get; set; }

        public Sindicato Sindicato { get; set; }
    }
}
