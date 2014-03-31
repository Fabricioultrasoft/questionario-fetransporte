using System;

namespace Aplicacao.dto
{
    public class DtoCidade
    {
        public int CidadeID { get; set; }
        public String Descricao { get; set; }
        public DtoEstado Estado { get; set; }
    }
}
