﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;

using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppEmpresa
    {
        public Contexto Banco { get; set; }

        public AppEmpresa()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public Empresa ObterEmpresa(int codigoEmpresa)
        {
            var Empresa = (from s in Banco.Empresa.Include(e => e.Sindicato)
                           where s.EmpresaID == codigoEmpresa
                           select s).FirstOrDefault();

            if (Empresa != null)
            {
                return Empresa;
            }
            else
            {
                throw new Exception("Empresa não localizada.");
            }
        }

        public void Inserir(DtoEmpresa DtoEmpresa)
        {
            var Empresa = new Empresa();

            Empresa.Sindicato = (from s in Banco.Sindicato
                                 where s.SindicatoID == DtoEmpresa.Sindicato.SindicatoID
                                 select s).FirstOrDefault();

            Empresa.NomeEmpresa = DtoEmpresa.NomeEmpresa;
            Empresa.EmailEmpresa = DtoEmpresa.EmailEmpresa;
            Empresa.LogoMarca = DtoEmpresa.LogoMarca;
            Empresa.Observacao = DtoEmpresa.Observacao;
            Empresa.Complemento = DtoEmpresa.Complemento;
            Empresa.Cep = DtoEmpresa.Cep;
            Empresa.Endereco = DtoEmpresa.Endereco;

            Empresa.Bairro = (from s in Banco.Bairro
                            where s.BairroID == DtoEmpresa.Bairro.BairroID
                            select s).FirstOrDefault();
            

            Banco.Empresa.Add(Empresa);
            Banco.SaveChanges();
        }

        public IEnumerable<Empresa> ListarEmpresa()
        {
            var retorno = (from s in Banco.Empresa
                           select s).ToList();

            return retorno;
        }

        public DtoEmpresa Obter(int codEmpresa)
        {
            var DtoEmpresa = (from s in Banco.Empresa
                              where s.EmpresaID == codEmpresa
                              select new DtoEmpresa
                              {
                                  EmpresaID = s.EmpresaID,
                                  NomeEmpresa = s.NomeEmpresa,
                                  EmailEmpresa = s.EmailEmpresa,
                                  LogoMarca = s.LogoMarca,
                                  Observacao = s.Observacao,
                                  Endereco = s.Endereco,
                                  Bairro = (from x in Banco.Bairro
                                            where x.BairroID == s.Bairro.BairroID
                                            select new DtoBairro
                                            {
                                                BairroID = x.BairroID,
                                                NomeBairro = x.NomeBairro,
                                                Cidade = new DtoCidade
                                                {
                                                    CidadeID = x.Cidade.CidadeID,
                                                    Descricao = x.Cidade.Descricao,
                                                    Estado = new DtoEstado
                                                    {
                                                        EstadoID = x.Cidade.Estado.EstadoID,
                                                        NomeEstado = x.Cidade.Estado.NomeEstado,
                                                        UF = x.Cidade.Estado.UF
                                                    }

                                                }
                                            }).FirstOrDefault(),
                                  Complemento = s.Complemento,
                                  Cep = s.Cep,
                                  Sindicato = new DtoSindicato()
                                  {
                                      NomeSindicato = s.Sindicato.NomeSindicato,
                                      SindicatoID = s.Sindicato.SindicatoID,
                                  },
                              }
                              ).FirstOrDefault();

            return DtoEmpresa;
        }

        public void Alterar(DtoEmpresa DtoEmpresa)
        {
            var Empresa = ObterEmpresa(DtoEmpresa.EmpresaID);

            var Bairro = (from s in Banco.Bairro
                          where s.BairroID == DtoEmpresa.Bairro.BairroID
                          select s).FirstOrDefault();

            Empresa.NomeEmpresa = DtoEmpresa.NomeEmpresa;
            Empresa.EmailEmpresa = DtoEmpresa.EmailEmpresa;
            Empresa.LogoMarca = DtoEmpresa.LogoMarca;
            Empresa.Observacao = DtoEmpresa.Observacao;
            Empresa.Endereco = DtoEmpresa.Endereco;
            Empresa.Bairro = Bairro;
            Empresa.Complemento = DtoEmpresa.Complemento;
            Empresa.Cep = DtoEmpresa.Cep;

            Banco.SaveChanges();
        }

        public void Excluir(int codigoEmpresa)
        {
            var funcionarioEmpresa = (from s in Banco.Funcionario
                                      where s.Empresa.EmpresaID == codigoEmpresa
                                      select s).Count();

            if (funcionarioEmpresa == 0)
            {
                var empresaExcluir = (from s in Banco.Empresa
                                      where s.EmpresaID == codigoEmpresa
                                      select s).FirstOrDefault();
                Banco.Empresa.Remove(empresaExcluir);
                Banco.SaveChanges();
            }
            else
            {
                throw new Exception("Existem funcionarios ligados a esta empresa não é possivel exclui-la.");
            }
        }
    }
}
