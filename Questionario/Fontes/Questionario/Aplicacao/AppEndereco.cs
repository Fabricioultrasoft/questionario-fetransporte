﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppEndereco
    {
        public Contexto Banco { get; set; }

        public AppEndereco()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        #region MÉTODOS USADOS SOMENTE PELA PRÓPRIA CLASSE.
        private Cidade ObterCidade(DtoCidade DtoCidade)
        {
            var Cidade = (from s in Banco.Cidade
                          where s.CidadeID == DtoCidade.CidadeID
                          select s).FirstOrDefault();

            return Cidade;
        }
        private Bairro ObterBairro(DtoBairro DtoBairro)
        { 
            var Bairro = ( from s in Banco.Bairro
                           where s.BairroID == DtoBairro.BairroID
                           select s).FirstOrDefault();

            return Bairro;
        }
        
        private bool qtdCidadesPorEstado(int codEstado)
        {
            var cidadePorEstado = (from s in Banco.Cidade
                                   where s.Estado.EstadoID == codEstado
                                   select s).Count();
            if (cidadePorEstado > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private bool qtdBairrosPorCidade(int codCidade)
        {
            var bairroPorCidade = (from s in Banco.Bairro
                                   where s.Cidade.CidadeID == codCidade
                                   select s).Count();

            if (bairroPorCidade > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        #endregion

        #region ESTADOS

        public void InserirEstado(DtoEstado DtoEstado)
        {
            var estado = new Estado();

            estado.EstadoID = DtoEstado.EstadoID;
            estado.NomeEstado = DtoEstado.NomeEstado;
            estado.UF = DtoEstado.UF;

            Banco.Estado.Add(estado);
            Banco.SaveChanges();
        }

        public IEnumerable<DtoEstado> ListarEstado()
        {
            return (from s in Banco.Estado
                    select new DtoEstado
                    {
                        EstadoID = s.EstadoID,
                        NomeEstado = s.NomeEstado,
                        UF = s.UF
                    }).ToList();
        }

        public IEnumerable<DtoEstado> ObterEstado(int codEstado)
        {
            var retorno = (from s in Banco.Estado
                           where s.EstadoID == codEstado
                           select new DtoEstado
                           {
                               EstadoID = s.EstadoID,
                               NomeEstado = s.NomeEstado,
                               UF = s.UF
                           }).ToList();

            if (retorno != null)
            {
                return retorno;
            }
            else
            {
                throw new Exception("Estado não encontrado.");
            }
        }

        public void AlterarEstado(DtoEstado DtoEstado)
        {
            var EstadoAlterar = (from s in Banco.Estado
                                 where s.EstadoID == DtoEstado.EstadoID
                                 select s).First();

            EstadoAlterar.NomeEstado = DtoEstado.NomeEstado;
            EstadoAlterar.UF = DtoEstado.UF;

            Banco.SaveChanges();
        }

        public void ExcluirEstado(int codEstado)
        {
            if (qtdCidadesPorEstado(codEstado) != true)
            {
                var Estado = (from s in Banco.Estado
                              where s.EstadoID == codEstado
                              select s).FirstOrDefault();

                Banco.Estado.Remove(Estado);
                Banco.SaveChanges();
            }
            else
            {
                throw new Exception("Não foi possivel deletar o Estado pois existem CIDADES ligadas a ele.");
            }
        }

        #endregion

        #region CIDADES
        public void InserirCidade(DtoCidade DtoCidade)
        {
            var Cidade = new Cidade();

            Cidade.Estado = (from s in Banco.Estado
                             where s.EstadoID == DtoCidade.Estado.EstadoID
                             select s).FirstOrDefault();

            Cidade.Descricao = DtoCidade.Descricao;

            Banco.Cidade.Add(Cidade);
            Banco.SaveChanges();
        }

        public IEnumerable<DtoCidade> ListarCidadePorEstado(int codEstado)
        {
            var retorno = (from s in Banco.Cidade
                           where s.Estado.EstadoID == codEstado
                           select new DtoCidade
                           {
                               CidadeID = s.CidadeID,
                               Descricao = s.Descricao,
                           }).ToList();

            return retorno;
        }

        public IEnumerable<DtoCidade> ObterCidade(int codCidade)
        {
            var retorno = (from s in Banco.Cidade
                           where s.CidadeID == codCidade
                           select new DtoCidade
                           {
                               CidadeID = s.CidadeID,
                               Descricao = s.Descricao,
                           }).ToList();

            return retorno;
        }

        public void AlterarCidade(DtoCidade DtoCidade)
        {
            var CidadeAlterar = ObterCidade(DtoCidade);

            var EstadoAlterar = (from s in Banco.Estado
                                 where s.EstadoID == DtoCidade.Estado.EstadoID
                                 select s).FirstOrDefault();

            CidadeAlterar.CidadeID = DtoCidade.CidadeID;
            CidadeAlterar.Descricao = DtoCidade.Descricao;
            CidadeAlterar.Estado = EstadoAlterar;

            Banco.SaveChanges();
        }

        public void ExcluirCidade(int codCidade)
        {
            if (qtdCidadesPorEstado(codCidade) != true)
            {
                var Cidade = (from s in Banco.Cidade
                              where s.CidadeID == codCidade
                              select s).FirstOrDefault();

                if (Cidade != null)
                {
                    Banco.Cidade.Remove(Cidade);
                    Banco.SaveChanges();
                }
                else
                {
                    throw new Exception("Não foi possível deletar a cidade");
                }
            }
        }
        #endregion

        #region BAIRROS
        public void InserirBairro(DtoBairro DtoBairro)
        {
            var Bairro = new Bairro();

            Bairro.Cidade = ( from s in Banco.Cidade
                              where s.CidadeID == DtoBairro.Cidade.CidadeID
                              select s).FirstOrDefault();

            Bairro.NomeBairro = DtoBairro.NomeBairro;

            Banco.Bairro.Add(Bairro);
            Banco.SaveChanges();
        }

        public IEnumerable<DtoBairro> ListasBairrosPorCidade(int codCidade)
        {
            var retorno = (from s in Banco.Bairro
                          where s.Cidade.CidadeID == codCidade
                          select new DtoBairro
                          {
                              BairroID = s.BairroID,
                              NomeBairro = s.NomeBairro,
                          }).ToList();

            return retorno;
        }

        public IEnumerable<DtoBairro> ObterBairro(int codEstado)
        { 
            var retorno = ( from s in Banco.Bairro
                            where s.BairroID == codEstado
                            select new DtoBairro
                            {
                                BairroID = s.BairroID,
                                NomeBairro = s.NomeBairro,
                            }).ToList();
            return retorno;
        }

        public void AlterarBairro(DtoBairro DtoBairro)
        {
            var BairroAlterar = ObterBairro(DtoBairro);

            var CidadeAlterar = ( from s in Banco.Cidade
                                  where s.CidadeID == DtoBairro.Cidade.CidadeID
                                  select s).FirstOrDefault();

            BairroAlterar.BairroID = DtoBairro.BairroID;
            BairroAlterar.NomeBairro = DtoBairro.NomeBairro;
            BairroAlterar.Cidade = CidadeAlterar;

            Banco.SaveChanges();
        }

        public void ExcluirBairro(int codBairro)
        {
            if (qtdBairrosPorCidade(codBairro) == false)
            {
                var BairroExcluir = (from s in Banco.Bairro
                              where s.BairroID == codBairro
                              select s).FirstOrDefault();

                if (BairroExcluir != null)
                {
                    Banco.Bairro.Remove(BairroExcluir);
                    Banco.SaveChanges();
                }
                else 
                {
                    throw new Exception("Não foi possível Excluir o Bairro.");
                }
            }
        }
        #endregion
    }
}
