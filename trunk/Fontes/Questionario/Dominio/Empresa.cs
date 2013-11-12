using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Empresas")]
    public class Empresa
    {
        public int EmpresaID { get; set; }
        
        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
       	public String NomeEmpresa {get;set;}

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String EmailEmpresa { get; set; }

        public byte[] LogoMarca { get; set; }

        public String Observacao { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o Sindicato")]
        public Sindicato Sindicato { get; set; }

        [Required(ErrorMessage="Obrigatório informar o Funcionário.")]
        public Funcionario Funcionario { get; set; }

        public virtual IEnumerable<UsuarioEmpresa> UsuarioEmpresa { get; set; }
        public virtual IEnumerable<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
