using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

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

        public IEnumerable<DtoSindicato> Listar()
        {
            var retorno = (from s in Banco.Sindicato
                           select new DtoSindicato
                           {
                               SindicatoID = s.SindicatoID,
                               NomeSindicato = s.NomeSindicato,
                               Empresas = s.Empresa.Select(e => new DtoEmpresa{NomeEmpresa = e.NomeEmpresa, EmailEmpresa = e.EmailEmpresa}).ToList()
                           }).ToList();


            return retorno;
        }

        public IEnumerable<Sindicato> ListarSindicato()
        {
            var retorno = Banco.Sindicato.Include(x => x.Empresa).ToList();

            return retorno;
        }

        public IEnumerable<Sindicato> ListarEmpresasDoSindicato(int codigo)
        {            
            var retorno = Banco.Sindicato.Include(x => x.Empresa).Where(x => x.SindicatoID == codigo).ToList();
            return retorno;
        }


        public void Inserir(DtoSindicato DtoSindicato)
        {
            var sindicato = new Sindicato();
            sindicato.NomeSindicato = DtoSindicato.NomeSindicato;
            Banco.Sindicato.Add(sindicato);
            Banco.SaveChanges();
        }

        public void Deletar(int codSindicato)
        {
            var sindicato = Banco.Sindicato.Find(codSindicato);
            if (sindicato != null)
            {
                Banco.Sindicato.Remove(sindicato);
                Banco.SaveChanges();
            }
        }


    }
}
