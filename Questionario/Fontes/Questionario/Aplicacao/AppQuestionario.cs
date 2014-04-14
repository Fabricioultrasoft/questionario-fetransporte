using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aplicacao.dto;
using Dominio;
using Repositorio;
using System.Data.Entity;

namespace Aplicacao
{
    public class AppQuestionario
    {
        /*
         * OK - Criar novo questionario
         *          - Pode existir um questionário que não está ligado a nenhuma empresa?
         * OK - Copiar perguntas de questionario anterior
         * OK - Excluir questionário
         * OK - Alterar questionário
         * OK - Adicionar Pergunta
         * OK - Excluir Pergunta
         * Alterar pergunta?
         * OK - Obter
         * */

        public Contexto Banco { get; set; }

        public AppQuestionario()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public DtoQuestionario CriarNovoQuestionario(string ano, DateTime validade)
        {
            var questionario = new Questionario()
            {
                AnoQuestionario = ano,
                DataValidade = validade,
            };

            Banco.Questionario.Add(questionario);
            Banco.SaveChanges();

            return new DtoQuestionario()
            {
                AnoQuestionario = questionario.AnoQuestionario,
                DataValidade = questionario.DataValidade,
                QuestionarioID = questionario.QuestionarioID,
            };
        }

        public void CopiarPerguntasDeQuestionario(int idQuestionarioOrigem, int idQuestionarioDestino)
        {
            var origem = (from q in Banco.Questionario
                          where q.QuestionarioID == idQuestionarioOrigem
                          select q).FirstOrDefault();

            if (origem == null)
                throw new Exception("Questionário não encontrado");

            var destino = (from q in Banco.Questionario
                           where q.QuestionarioID == idQuestionarioDestino
                           select q).FirstOrDefault();

            if (destino == null)
                throw new Exception("Questionário não encontrado");

            foreach (var pergunta in origem.PerguntasQuestionario)
            {
                var novaPergunta = new PerguntaQuestionario()
                {
                    Descricao = pergunta.Descricao,
                    MultiplaEscolha = pergunta.MultiplaEscolha,
                    Questionario = destino,
                };

                foreach (var resposta in pergunta.RespostasPossiveis)
                {
                    var novaResposta = new RespostaPossivel()
                    {
                        DescricaoRespostaPossivel = resposta.DescricaoRespostaPossivel,
                        PerguntaQuestionario = novaPergunta,
                    };

                    Banco.RespostaPossivel.Add(novaResposta);
                }

                Banco.PerguntasQuestionario.Add(novaPergunta);
            }

            Banco.SaveChanges();
        }

        public void ExcluirQuestionario(int idQuestionario)
        {
            var questionario = (from q in Banco.Questionario
                                where q.QuestionarioID == idQuestionario
                                select q).FirstOrDefault();

            if (questionario == null)
                throw new Exception("Questionário não encontrado");

            
            var respostas = (from r in Banco.RespostaFuncionario
                            where r.Resposta.PerguntaQuestionario.Questionario.QuestionarioID == idQuestionario
                                 select r);

            if (respostas.Count() > 0)
                throw new Exception("O questionário já foi respondido e não pode ser excluído");

            Banco.Questionario.Remove(questionario);

            var perguntas = (from p in Banco.PerguntasQuestionario
                             where p.Questionario.QuestionarioID == idQuestionario
                             select p).ToList();

            foreach (var pergunta in perguntas)
            {
                Banco.PerguntasQuestionario.Remove(pergunta);

                var respostasPossiveis = (from r in Banco.RespostaPossivel
                                          where r.PerguntaQuestionario.PerguntaQuestionarioID == pergunta.PerguntaQuestionarioID
                                          select r).ToList();

                foreach (var resposta in respostasPossiveis)
                {
                    Banco.RespostaPossivel.Remove(resposta);
                }
            }
            Banco.SaveChanges();
        }

        public DtoQuestionario AlterarQuestionario(int idQuestionario, string ano, DateTime validade)
        {
            var questionario = (from q in Banco.Questionario
                                where q.QuestionarioID == idQuestionario
                                select q).FirstOrDefault();

            if (questionario == null)
                throw new Exception("Questionário não encontrado");

            questionario.AnoQuestionario = ano;
            questionario.DataValidade = validade;

            Banco.SaveChanges();

            return new DtoQuestionario()
            {
                AnoQuestionario = questionario.AnoQuestionario,
                DataValidade = questionario.DataValidade,
                QuestionarioID = questionario.QuestionarioID,
            };
        }

        public void AdicionarPergunta(int idQuestionario, DtoPerguntaQuestionario pergunta)
        {
            var questionario = (from q in Banco.Questionario
                                where q.QuestionarioID == idQuestionario
                                select q).FirstOrDefault();

            if (questionario == null)
                throw new Exception("Questionário não encontrado");

            var novaPergunta = new PerguntaQuestionario()
            {
                Descricao = pergunta.Descricao,
                MultiplaEscolha = pergunta.MultiplaEscolha,
                Questionario = questionario,
            };

            foreach (var resposta in pergunta.RespostasPossiveis)
            {
                var novaResposta = new RespostaPossivel()
                {
                    DescricaoRespostaPossivel = resposta.DescricaoRespostaPossivel,
                    PerguntaQuestionario = novaPergunta,
                };

                Banco.RespostaPossivel.Add(novaResposta);
            }

            Banco.PerguntasQuestionario.Add(novaPergunta);
            Banco.SaveChanges();
        }

        public void ExcluirPergunta(int idPergunta)
        {
            var pergunta = (from p in Banco.PerguntasQuestionario
                            where p.PerguntaQuestionarioID == idPergunta
                            select p).FirstOrDefault();

            if (pergunta == null)
                throw new Exception("Pergunta não encontrada");

            var respostas = Banco.RespostaFuncionario
                                 .Where(r => r.Resposta.PerguntaQuestionario.PerguntaQuestionarioID == pergunta.PerguntaQuestionarioID);

            if (respostas.Count() > 0)
                throw new Exception("A pergunta já foi respondida e não pode ser excluida");

            Banco.PerguntasQuestionario.Remove(pergunta);
            Banco.SaveChanges();
        }

        public DtoQuestionario Obter(int idQuestionario)
        {
            var questionario = (from q in Banco.Questionario
                                where q.QuestionarioID == idQuestionario
                                select q).FirstOrDefault();

            if (questionario == null)
                throw new Exception("Questionário não encontrado");
            
            return new DtoQuestionario()
            {
                AnoQuestionario = questionario.AnoQuestionario,
                DataValidade = questionario.DataValidade,
                QuestionarioID = questionario.QuestionarioID,
            };
        }
    }
}
