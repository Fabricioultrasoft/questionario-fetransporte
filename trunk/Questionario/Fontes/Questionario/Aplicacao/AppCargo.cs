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

        public void Inserir(DtoCargo dto)
        {
            var setorArea = (from s in Banco.SetorArea
                             where s.SetorAreaID == dto.SetorArea.SetorAreaID
                             select s).FirstOrDefault();

            if (setorArea == null)
                throw new Exception("Setor/Área não localizado");

            var cargo = new Cargo()
            {
                NomeCargos = dto.NomeCargos,
                Observacao = dto.Observacao,
                SetorArea = setorArea,
            };

            Banco.Cargo.Add(cargo);
            Banco.SaveChanges();
        }

        public void Excluir(int idCargo)
        {
            var cargo = (from c in Banco.Cargo
                         where c.CargoID == idCargo
                         select c).FirstOrDefault();

            if (cargo == null)
                throw new Exception("Cargo não encontrado");

            Banco.Cargo.Remove(cargo);
            Banco.SaveChanges();
        }

        public void Alterar(int idCargo, DtoCargo dto)
        {
            var cargo = (from c in Banco.Cargo
                         where c.CargoID == idCargo
                         select c).FirstOrDefault();

            if (cargo == null)
                throw new Exception("Cargo não localizado");

            var setorArea = (from s in Banco.SetorArea
                             where s.SetorAreaID == dto.SetorArea.SetorAreaID
                             select s).FirstOrDefault();

            if (setorArea == null)
                throw new Exception("Setor/Área não localizado");

            cargo.NomeCargos = dto.NomeCargos;
            cargo.Observacao = dto.Observacao;
            cargo.SetorArea = setorArea;

            Banco.SaveChanges();
        }
    }
}
