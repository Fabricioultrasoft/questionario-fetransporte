using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Repositorio;

namespace Aplicacao.dto
{
    public class DtoSetorArea
    {
        public int SetorAreaID { get; set; }
        public String NomeSetorArea { get; set; }
        public virtual IEnumerable<Cargo> Cargo { get; set; }
    }
}
