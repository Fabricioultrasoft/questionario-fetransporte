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
    public class AppSetorArea
    {
        public Contexto Banco { get; set; }

        public AppSetorArea()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public SetorArea ObterSetorArea(int codigoSetorArea)
        {
            var SetorArea = (from s in Banco.SetorArea
                             where s.SetorAreaID == codigoSetorArea
                             select s).FirstOrDefault();

            if (SetorArea != null)
            {
                return SetorArea;
            }
            else
            {
                throw new Exception("Setor/Área não localizado.");
            }
        }

        public IEnumerable<DtoSetorArea> Listar()
        {
            var retorno = (from s in Banco.SetorArea
                           select new DtoSetorArea
                           {
                               SetorAreaID = s.SetorAreaID,
                               NomeSetorArea = s.NomeSetorArea
                           }).ToList();
            return retorno;
        }

        public DtoSetorArea Obter(int codigoSetorArea)
        {
            var SetorArea = ObterSetorArea(codigoSetorArea);

            return new DtoSetorArea()
            {
                SetorAreaID = SetorArea.SetorAreaID,
                NomeSetorArea = SetorArea.NomeSetorArea,
            };
        }

        public void Inserir(DtoSetorArea dto)
        {
            var setorArea = new SetorArea()
            {
                NomeSetorArea = dto.NomeSetorArea,
            };

            Banco.SetorArea.Add(setorArea);
            Banco.SaveChanges();
        }

        public void Alterar(int idSetorArea, DtoSetorArea dto)
        {
            var setor = (from s in Banco.SetorArea
                         where s.SetorAreaID == idSetorArea
                         select s).FirstOrDefault();

            if (setor == null)
                throw new Exception("Setor/Área não encontrado");

            setor.NomeSetorArea = dto.NomeSetorArea;

            Banco.SaveChanges();
        }

        public void Excluir(int idSetorArea)
        {
            var setor = (from s in Banco.SetorArea.Include(s => s.Cargo)
                         where s.SetorAreaID == idSetorArea
                         select s).FirstOrDefault();

            if (setor == null)
                throw new Exception("Setor/Área não encontrado");

            if (setor.Cargo.Count > 0)
                throw new Exception("Existem cargos cadastrados nesse setor");

            Banco.SetorArea.Remove(setor);
            Banco.SaveChanges();
        }
    }
}
