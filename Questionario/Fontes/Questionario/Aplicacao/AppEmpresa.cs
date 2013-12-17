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
    public class AppEmpresa
    {
        public Contexto Banco { get; set; }

        public AppEmpresa()
        {
            Banco = new Contexto();
        }

        public void Salvar(Empresa empresa) 
        {
            empresa.Sindicato = Banco.Sindicato.ToList().Where(x => x.SindicatoID == empresa.Sindicato.SindicatoID).FirstOrDefault();
            Banco.Empresa.Add(empresa);
            Banco.SaveChanges();
        }

        public IEnumerable<Empresa> ListarEmpresa()
        {
            return Banco.Empresa.ToList();
        }

        public IEnumerable<Empresa> ListarEmpresa(int identificador)
        {
            return Banco.Empresa.Where(x=> x.EmpresaID == identificador).ToList();
        }

        public void Alterar(Empresa empresa)
        {
            Empresa EmpresaSalvar = Banco.Empresa.Where( x=> x.EmpresaID == empresa.EmpresaID).First();

            EmpresaSalvar.NomeEmpresa = empresa.NomeEmpresa ;
            EmpresaSalvar.EmailEmpresa= empresa.EmailEmpresa;
            EmpresaSalvar.LogoMarca= empresa.LogoMarca;
            EmpresaSalvar.Observacao= empresa.Observacao;
            EmpresaSalvar.Endereco= empresa.Endereco;
            EmpresaSalvar.Bairro= empresa.Bairro;
            EmpresaSalvar.Cidade= empresa.Cidade;
            EmpresaSalvar.Estado= empresa.Estado;
            EmpresaSalvar.Complemento = empresa.Complemento;
            EmpresaSalvar.Cep = empresa.Cep;

            Banco.SaveChanges();
        }


        public void Excluir (int Id )
        {
            Empresa empresaExcluir = Banco.Empresa.Where(x => x.EmpresaID == Id).First();
            Banco.Set<Empresa>().Remove(empresaExcluir);
            Banco.SaveChanges();
        }


        public IEnumerable<DtoEmpresa> Listar()
        {
            var retorno = (from s in Banco.Empresa
                           select new DtoEmpresa
                           {
                               EmpresaID = s.EmpresaID,
                               NomeEmpresa = s.NomeEmpresa,
                               EmailEmpresa = s.EmailEmpresa,
                               LogoMarca = s.LogoMarca,
                               Observacao = s.Observacao,
                               Sindicato = s.Sindicato
                           }).ToList();
            return retorno;
        }

    }
}
