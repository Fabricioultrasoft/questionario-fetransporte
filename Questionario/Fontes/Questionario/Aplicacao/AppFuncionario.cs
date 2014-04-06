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
    public class AppFuncionario
    {
        /*
         * OK - Inserir
         *      Excluir
         * OK - Alterar
         * OK - Obter Dto
         * OK - Obter Entidade
         * OK - Listar Dto
         * OK - Listar Entidade
         * */

        public Contexto Banco { get; set; }

        public AppFuncionario()
        {
            Banco = new Contexto();
            Banco.Configuration.LazyLoadingEnabled = true;
        }

        public void Inserir(DtoFuncionario DtoFuncionario)
        {
            if (DtoFuncionario == null)
                throw new Exception("Os dados do funcionário devem ser informados.");

            if (DtoFuncionario.Empresa == null)
                throw new Exception("A empresa do funcionário deve ser informada.");

            if (DtoFuncionario.Cargo == null)
                throw new Exception("O cargo do funcionário deve ser informado.");

            var Empresa = (from s in Banco.Empresa
                           where s.EmpresaID == DtoFuncionario.Empresa.EmpresaID
                           select s).FirstOrDefault();

            if (Empresa == null)
                throw new Exception("Empresa não localizada.");

            var Cargo = (from s in Banco.Cargo
                         where s.CargoID == DtoFuncionario.Cargo.CargoID
                         select s).FirstOrDefault();

            if (Cargo == null)
                throw new Exception("Cargo não localizado.");

            var Funcionario = new Funcionario()
            {
                Cargo = Cargo,
                Empresa = Empresa,
                EmailDoFuncionario = DtoFuncionario.EmailDoFuncionario,
                Matricula = DtoFuncionario.Matricula,
                NomeDoFuncionairo = DtoFuncionario.NomeDoFuncionairo,
            };

            Banco.Funcionario.Add(Funcionario);
            Banco.SaveChanges();
        }

        public void Excluir(int codigoFuncionario)
        {
            var Funcionario = ObterFuncionario(codigoFuncionario);

            Funcionario.Ativo = false;

            Banco.SaveChanges();
        }

        public void Alterar(DtoFuncionario DtoFuncionario)
        {
            var Funcionario = ObterFuncionario(DtoFuncionario.FuncionarioID);

            var Empresa = (from s in Banco.Empresa
                           where s.EmpresaID == DtoFuncionario.Empresa.EmpresaID
                           select s).FirstOrDefault();

            if (Empresa == null)
                throw new Exception("Empresa não localizada.");

            var Cargo = (from s in Banco.Cargo
                         where s.CargoID == DtoFuncionario.Cargo.CargoID
                         select s).FirstOrDefault();

            if (Cargo == null)
                throw new Exception("Cargo não localizado.");

            Funcionario.Cargo = Cargo;
            Funcionario.EmailDoFuncionario = DtoFuncionario.EmailDoFuncionario;
            Funcionario.Empresa = Empresa;
            Funcionario.Matricula = DtoFuncionario.Matricula;
            Funcionario.NomeDoFuncionairo = DtoFuncionario.NomeDoFuncionairo;

            Banco.SaveChanges();
        }

        public DtoFuncionario Obter(int codFuncionario)
        {
            var Funcionario = ObterFuncionario(codFuncionario);
            var Cargo = new AppCargo().Obter(Funcionario.Cargo.CargoID);
            var Empresa = new AppEmpresa().Obter(Funcionario.Empresa.EmpresaID);

            var DtoFuncionario = new DtoFuncionario()
            {
                Cargo = Cargo,
                Empresa = Empresa,
                EmailDoFuncionario = Funcionario.EmailDoFuncionario,
                FuncionarioID = Funcionario.FuncionarioID,
                Matricula = Funcionario.Matricula,
                NomeDoFuncionairo = Funcionario.NomeDoFuncionairo,
            };

            return DtoFuncionario;
        }

        public Funcionario ObterFuncionario(int codigoFuncionario)
        {
            var Funcionario = (from s in Banco.Funcionario.Include(f => f.Empresa).Include(f => f.Cargo)
                               where s.FuncionarioID == codigoFuncionario
                               select s).FirstOrDefault();

            if (Funcionario != null)
            {
                return Funcionario;
            }
            else
            {
                throw new Exception("Funcionário não localizado.");
            }
        }

        public IEnumerable<DtoFuncionario> Listar()
        {
            var retorno = (from s in Banco.Funcionario
                           select new DtoFuncionario()
                           {
                               Cargo = (from c in Banco.Cargo
                                        where c.CargoID == s.Cargo.CargoID
                                        select new DtoCargo()
                                        {
                                            CargoID = c.CargoID,
                                            NomeCargos = c.NomeCargos,
                                            Observacao = c.Observacao,
                                            SetorArea = (from a in Banco.SetorArea
                                                         where a.SetorAreaID == c.SetorArea.SetorAreaID
                                                         select new DtoSetorArea()
                                                         {
                                                             SetorAreaID = a.SetorAreaID,
                                                             NomeSetorArea = a.NomeSetorArea,
                                                         }).FirstOrDefault(),
                                        }).FirstOrDefault(),
                               Empresa = (from e in Banco.Empresa
                                          where e.EmpresaID == s.Empresa.EmpresaID
                                          select new DtoEmpresa()
                                          {
                                              NomeEmpresa = e.NomeEmpresa,
                                              EmailEmpresa = e.EmailEmpresa,
                                              LogoMarca = e.LogoMarca,
                                              Observacao = e.Observacao,
                                              Endereco = e.Endereco,
                                              Bairro = (from b in Banco.Bairro
                                                        where b.BairroID == e.Bairro.BairroID
                                                        select new DtoBairro()
                                                         {
                                                             BairroID = b.BairroID,
                                                             NomeBairro = b.NomeBairro
                                                         }).FirstOrDefault(),
                                              Complemento = s.Empresa.Complemento,
                                              Cep = s.Empresa.Cep,
                                          }).FirstOrDefault(),
                               EmailDoFuncionario = s.EmailDoFuncionario,
                               FuncionarioID = s.FuncionarioID,
                               Matricula = s.Matricula,
                               NomeDoFuncionairo = s.NomeDoFuncionairo,
                           });

            return retorno;
        }

        public IEnumerable<Funcionario> ListarFuncionarios()
        {
            var retorno = (from s in Banco.Funcionario
                           select s);

            return retorno;
        }
    }
}
