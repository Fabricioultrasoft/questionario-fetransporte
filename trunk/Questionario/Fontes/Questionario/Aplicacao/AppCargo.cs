using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;

using Aplicacao.dto;
using Repositorio;
using Dominio;

namespace Aplicacao
{
    public class AppCargo
    {
        public Contexto Banco { get; set; }

        public AppCargo()
        {
            Banco = new Contexto();
        }


        public IEnumerable<Cargo> Listar()
        {
            var retorno = Banco.Cargo.Include(x=> x.SetorArea).ToList();
            return retorno;
        }


        //public IEnumerable<DtoCargo> Listar()
        //{ 
        //    var retorno = ( from s in Banco.Cargo
        //                    select new DtoCargo
        //                    {
        //                        CargoID  =      s.CargoID,
        //                        NomeCargos  =   s.NomeCargos,
        //                        Observacao  =   s.Observacao, 
        //                        Funcionario =   s.Funcionario,
        //                        SetorArea  =    s.SetorArea
        //                    }).ToList();
        //    return retorno ;
        //}
    }
}
