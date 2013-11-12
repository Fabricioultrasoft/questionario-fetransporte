using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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

        public IEnumerable<DtoEmpresa> Listar()
        {
            var retorno = (from s in Banco.Empresa
                           select new DtoEmpresa
                           {
                                EmpresaID    =    s.EmpresaID   ,
                                NomeEmpresa  =    s.NomeEmpresa ,
                                EmailEmpresa  =   s.EmailEmpresa,
                                LogoMarca    =    s.LogoMarca   ,
                                Observacao   =    s.Observacao, 
                                Sindicato    =    s.Sindicato,
                                Funcionario = s.Funcionario
                           }).ToList();
            return retorno;
        }



    }
}
