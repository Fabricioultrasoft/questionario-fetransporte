using System.Collections.Generic;
using System.Linq;
using System;

using Aplicacao.dto;
using Dominio;
using Repositorio;

namespace Aplicacao
{
    public class AppSindicato
    {
        public Contexto Banco { get; set; }

        public AppSindicato()
        {
            Banco = new Contexto();
        }

        public IEnumerable<DtoSindicato> ListarSindicatoEmpresas(int codSindicato)
        {
            var retorno = (from s in Banco.Sindicato
                           where s.SindicatoID == codSindicato
                           select new DtoSindicato
                           {
                               SindicatoID = s.SindicatoID,
                               NomeSindicato = s.NomeSindicato,
                               Empresas = s.Empresa.Select(e => new DtoEmpresa { NomeEmpresa = e.NomeEmpresa, EmailEmpresa = e.EmailEmpresa }).ToList()
                           }).ToList();
            return retorno;
        }

        public IEnumerable<DtoSindicato> ListarSindicatoEmpresas()
        {
            var retorno = (from s in Banco.Sindicato
                           select new DtoSindicato
                           {
                               SindicatoID = s.SindicatoID,
                               NomeSindicato = s.NomeSindicato,
                               Empresas = s.Empresa.Select(e => new DtoEmpresa { NomeEmpresa = e.NomeEmpresa, EmailEmpresa = e.EmailEmpresa }).ToList()
                           }).ToList();
            return retorno;
        }

        public IEnumerable<DtoSindicato> Listar()
        {
            var retorno = (from s in Banco.Sindicato
                           select new DtoSindicato
                           {
                               SindicatoID = s.SindicatoID,
                               NomeSindicato = s.NomeSindicato
                           }).ToList();
            return retorno;
        }

        public DtoSindicato Obter(int codSindicato)
        {
            var retorno = (from s in Banco.Sindicato
                           where s.SindicatoID == codSindicato
                           select new DtoSindicato
                           {
                               SindicatoID = s.SindicatoID,
                               NomeSindicato = s.NomeSindicato
                           }).FirstOrDefault();

            return retorno;
        }

        public void Inserir(DtoSindicato DtoSindicato)
        {
            var sindicato = new Sindicato();

            sindicato.NomeSindicato = DtoSindicato.NomeSindicato;
            Banco.Sindicato.Add(sindicato);
            Banco.SaveChanges();
        }

        public void Excluir(int codSindicato)
        {
            var empresaDeSindicato = (from s in Banco.Empresa
                                      where s.Sindicato.SindicatoID == codSindicato
                                      select s).Count();

            if (empresaDeSindicato == 0)
            {
                var sindicatoExcluir = (from s in Banco.Sindicato
                                        where s.SindicatoID == codSindicato
                                        select s).FirstOrDefault();
                Banco.Sindicato.Remove(sindicatoExcluir);
                Banco.SaveChanges();
            }
            else
            {
                throw new Exception("O Sindicato não pode ser excluido porque existem empresas ligadas a ele.");
            }
        }
    }
}
