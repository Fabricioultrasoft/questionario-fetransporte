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

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String Endereco { get; set; }

        [MaxLength(100, ErrorMessage = "Quantidade máxima de caracteres: 100")]
        public String Bairro { get; set; }

        [MaxLength(100, ErrorMessage = "Quantidade máxima de caracteres: 100")]
        public String Cidade { get; set; }

        [MaxLength(50, ErrorMessage = "Quantidade máxima de caracteres: 50")]
        public String Estado { get; set; }

        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String Complemento { get; set; }

        [MaxLength(8, ErrorMessage = "Quantidade máxima de caracteres: 8")]
        public String Cep { get; set; }

        [Required(ErrorMessage = "Obrigatório informar o Sindicato")]
        public  Sindicato Sindicato { get; set; }
        public string _Sindicato { get; set; }
        public virtual IEnumerable<UsuarioEmpresa> UsuarioEmpresa { get; set; }
        public virtual IEnumerable<PerguntasQuestionario> PerguntasQuestionario { get; set; }
    }
}
