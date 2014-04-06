using System;
using System.Collections.Generic;

namespace Aplicacao.dto
{
    public class DtoEmpresa
    {
        public int EmpresaID { get; set; }
        public String NomeEmpresa { get; set; }
        public String EmailEmpresa { get; set; }
        public byte[] LogoMarca { get; set; }
        public String Observacao { get; set; }
        public String Endereco { get; set; }
        public String Complemento { get; set; }
        public String Cep { get; set; }

        public DtoBairro Bairro { get; set; }
        public DtoSindicato Sindicato { get; set; }

        
        //public Funcionario Funcionario { get; set; }
        //public virtual IEnumerable<PerguntaQuestionario> PerguntaQuestionario { get; set; }
    }
}
