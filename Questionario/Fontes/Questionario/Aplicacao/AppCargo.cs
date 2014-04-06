using System.Collections.Generic;
using System.Linq;
using System.Data.Entity;

using Aplicacao.dto;
using Repositorio;
using Dominio;
using System;

namespace Aplicacao
{
    public class AppCargo
    {
        public Contexto Banco { get; set; }

        public AppCargo()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public IEnumerable<Cargo> Listar()
        {
            var retorno = Banco.Cargo.Include(x => x.SetorArea).ToList();
            return retorno;
        }

        public Cargo ObterCargo(int codigoCargo)
        {
            var Cargo = (from s in Banco.Cargo
                         where s.CargoID == codigoCargo
                         select s).FirstOrDefault();

            if (Cargo != null)
            {
                return Cargo;
            }
            else
            {
                throw new Exception("Cargo não localizado.");
            }
        }

        public DtoCargo Obter(int codigoCargo)
        {
            var Cargo = ObterCargo(codigoCargo);
            var SetorArea = Cargo.SetorArea == null ? null : new AppSetorArea().Obter(Cargo.SetorArea.SetorAreaID);

            return new DtoCargo()
            {
                CargoID = Cargo.CargoID,
                NomeCargos = Cargo.NomeCargos,
                Observacao = Cargo.Observacao,
                SetorArea = SetorArea,
            };
        }
    }
}
