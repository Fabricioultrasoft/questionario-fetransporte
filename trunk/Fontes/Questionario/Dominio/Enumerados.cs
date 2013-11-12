using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Enumerados
    {
        enum Sexo
        {
            Masculino = 0,
            Feminino = 1
        }

        enum Idade
        {
            Menos_de_25 = 0,
            De_25_A_32 = 1,
            De_33_A_40 = 2,
            DE_41_a_50 = 3,
            De_51_a_60 = 4,
            Mais_de_60 = 5
        }

        enum EstadoCivil
        {
            Solteiro = 0,
            Casado = 1,
            Separado = 2,
            Divorciado = 3,
            Viuvo = 4,
            Mora_com_companheiro = 5
        }

        enum QuantidadeDeFilhos
        {
            Nao = 0,
            _1 = 1,
            _2 = 2,
            _3 = 3,
            _4 = 4,
            _5 = 5,
            Acima_de_5 = 5
        }

        enum ConsomeCarne
        {
            Sim = 0,
            Nao = 1,
        }

        enum ConsomeFruta
        {
            Sim = 0,
            Nao = 1,
        }

        enum ConsomePeixe
        {
            Sim = 0,
            Nao = 1,
        }

        enum ConsomeRefrigerante
        {
            Sim = 0,
            Nao = 1,
        }

        enum HistoricoHipertenso
        {
            Sim = 0,
            Nao = 1,
        }

        enum HistoricoDiabetes
        {
            Sim = 0,
            Nao = 1,
        }

        enum FrequenciaUtilizacao
        {
            Semanal = 0,
            Quinzenal = 1,
            Mensal = 2,
            Bimestral = 3,
            Trimestral = 4,
            Semestral = 5,
            Anual = 6,
        }

        enum FrequenciaUtilizacaoFamilia
        {
            Sim = 0,
            Nao = 1,
            Nao_Sabe = 2,
        }

        enum Fumante
        {
            Sim = 0,
            Nao = 1,
        }

        enum AtividadeFisica
        {
            Sim = 0,
            Nao = 1,
        }

        enum VisitaMedico
        {
            Mensalmente = 0,
            Trimestralmente = 1,
            Semestralmente = 2,
            Anualmente = 3,
            Esporadicamente = 4
        }

        enum Treinamento
        {
            Não_participei = 0,
            Sim_pago_pela_empresa = 1,
            Sim_por_minha_conta = 2,
            Sim_parte_pago_por_mim_e_parte_pago_pela_Empresa = 3
        }

        enum Escolaridade
        {
            Analfabeto = 0,
            Leitura_e_escrita = 1,
            Fundamental_I_1_a_4_Série = 2,
            Fundamental_II_5ª_a_8ª_Série_Completo = 3,
            Ensino_Médio_Completo_2_Grau = 4,
            Técnico_Completo_Pós_Médio = 5,
            Superior_Completo = 6,
            Pós_Graduação_Completo = 7,
        }

    }
}
