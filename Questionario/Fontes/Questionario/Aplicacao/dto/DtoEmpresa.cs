using System;
using System.Collections.Generic;

using Dominio;

namespace Aplicacao.dto
{
    public class DtoEmpresa
    {
        public int EmpresaID { get; set; }
        public String NomeEmpresa { get; set; }
        public String EmailEmpresa { get; set; }
        public byte[] LogoMarca { get; set; }
        public String Observacao { get; set; }

        public Sindicato Sindicato { get; set; }
        public Funcionario Funcionario { get; set; }
        public virtual IEnumerable<UsuarioEmpresa> UsuarioEmpresa { get; set; }
        public virtual IEnumerable<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
