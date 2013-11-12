using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class PerguntasQuestionario
    {
        public int PerguntasQuestionarioID { get; set; }
        public Questionario Questionario { get; set; }
        public Empresa Empresa { get; set; }
        public Sindicato Sindicato { get; set; }
        public Peso Peso { get; set; }
        public Altura Altura { get; set; }
        public Especialidade Especialidade { get; set; }
        public Cidade Cidade { get; set; }
        public AnoAdmissao AnoAdmissao { get; set; }
        public List<UtilizaEstruturaSestSenat> UtilizaEstruturaSestSenat { get; set; }

        // Enumerados
        public int Sexo { get; set; }
        public int Idade { get; set; }
        public int EstadoCivil { get; set; }
        public int QuantidadeDeFilhos { get; set; }
        public int Escolaridade { get; set; }
        public int Fumante { get; set; }
        public int AtividadeFisica { get; set; }
        public int VisitaMedico { get; set; }
        public int Treinamento { get; set; }
        public int ConsomeCarne { get; set; }
        public int ConsomeFruta { get; set; }
        public int ConsomePeixe { get; set; }
        public int ConsomeRefrigerante { get; set; }
        public int HistoricoHipertensao { get; set; }
        public int HistoricoDiabetes { get; set; }
        public int FrequenciaUtilizacao { get; set; }
        public int FrequenciaUtilizacaoFamilia { get; set; }




    }
}
