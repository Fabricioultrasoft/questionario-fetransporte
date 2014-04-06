using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Dominio
{
    [Table("Funcionarios")]
    public class Funcionario
    {
        public int FuncionarioID { get; set; }
        
        [MaxLength(10, ErrorMessage = "Quantidade máxima de caracteres: 10")]
        public string Matricula { get; set; }

        [Required(ErrorMessage="Nome do funcionário obrigatório")]
        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String NomeDoFuncionairo { get; set; }
        
        [MaxLength(255, ErrorMessage = "Quantidade máxima de caracteres: 255")]
        public String EmailDoFuncionario { get; set; }

        public bool Ativo { get; set; }

        public Cargo Cargo { get; set; }

        public Empresa Empresa { get; set; }

        public Funcionario()
        {
            Ativo = true;
        }

    }
}
