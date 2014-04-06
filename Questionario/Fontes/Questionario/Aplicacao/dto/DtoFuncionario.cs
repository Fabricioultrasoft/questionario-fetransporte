using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aplicacao.dto
{
    public class DtoFuncionario
    {
        public int FuncionarioID { get; set; }
        public String Matricula { get; set; }
        public String NomeDoFuncionairo { get; set; }
        public String EmailDoFuncionario { get; set; }

        public DtoCargo Cargo { get; set; }
        public DtoEmpresa Empresa { get; set; }
    }
}
