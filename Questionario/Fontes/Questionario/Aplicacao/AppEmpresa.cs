using System.Collections.Generic;
using System.Linq;

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

        public void Inserir(DtoEmpresa DtoEmpresa, int codSindicato)
        {
            var Empresa = new Empresa();

            Empresa.NomeEmpresa = DtoEmpresa.NomeEmpresa;
            Empresa.EmailEmpresa = DtoEmpresa.EmailEmpresa;
            Empresa.LogoMarca = DtoEmpresa.LogoMarca;
            Empresa.Observacao = DtoEmpresa.Observacao;
            //Empresa.Sindicato = DtoSindicato;

            Banco.Empresa.Add(Empresa);
            Banco.SaveChanges();
        }

        public IEnumerable<Empresa> ListarEmpresa()
        {
            return Banco.Empresa.ToList();
        }

        public IEnumerable<Empresa> ListarEmpresa(int identificador)
        {
            return Banco.Empresa.Where(x => x.EmpresaID == identificador).ToList();
        }

        public void Alterar(Empresa empresa)
        {
            Empresa EmpresaSalvar = Banco.Empresa.Where(x => x.EmpresaID == empresa.EmpresaID).First();

            EmpresaSalvar.NomeEmpresa = empresa.NomeEmpresa;
            EmpresaSalvar.EmailEmpresa = empresa.EmailEmpresa;
            EmpresaSalvar.LogoMarca = empresa.LogoMarca;
            EmpresaSalvar.Observacao = empresa.Observacao;
            EmpresaSalvar.Endereco = empresa.Endereco;
            EmpresaSalvar.Bairro = empresa.Bairro;
            EmpresaSalvar.Complemento = empresa.Complemento;
            EmpresaSalvar.Cep = empresa.Cep;

            Banco.SaveChanges();
        }

        public void Excluir(int Id)
        {
            Empresa empresaExcluir = Banco.Empresa.Where(x => x.EmpresaID == Id).First();
            Banco.Set<Empresa>().Remove(empresaExcluir);
            Banco.SaveChanges();
        }


    }
}
