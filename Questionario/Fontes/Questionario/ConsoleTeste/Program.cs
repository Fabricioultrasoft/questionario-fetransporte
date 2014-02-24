using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Repositorio;
using Dominio;
using Aplicacao;
using Aplicacao.dto;


namespace ConsoleTeste
{
    class Program
    {
        static void Main(string[] args)
        {

            #region configurando ambiente.
            Console.BackgroundColor = ConsoleColor.DarkYellow;
            Console.ForegroundColor = ConsoleColor.Green;
            ConsoleKeyInfo cki = new ConsoleKeyInfo();
            #endregion

            #region mostra opções de uso:
            Console.WriteLine("Digite: F1 para listar os sindicatos e as empresas");
            Console.WriteLine("Digite: F2 para Inserir Empresas");
            Console.WriteLine("Digite: F3 para listar as empresas por código.");
            Console.WriteLine("Digite: F4 para listar as Sindicatos por código.");
            Console.WriteLine("Digite: F5 para listar as dtoSetorArea.");
            cki = Console.ReadKey(true);
            #endregion
            AppSindicato SindicatoApp = new AppSindicato();
            AppEmpresa EmpresaApp = new AppEmpresa();
            AppCargo CargoApp = new AppCargo();

            if (cki.Key == ConsoleKey.F5)
            {
                var listaCargos = CargoApp.Listar();

                foreach (var cargos in listaCargos)
                {
                    Console.WriteLine("{0}", cargos.NomeCargos);
                }
            }

            else if (cki.Key == ConsoleKey.F1)
            {
                Console.WriteLine("-----");
                Console.WriteLine("Digite o código do sindicato.");

                int codigoSindicato = Convert.ToInt32(Console.ReadLine());
                //var listaDeSindicatos = SindicatoApp.ListarSindicato(codigoSindicato);
                var listaDeSindicatos = SindicatoApp.ListarSindicato();
                foreach (var sindicato in listaDeSindicatos)
                {
                    Console.WriteLine("{0} - {1} ", sindicato.SindicatoID, sindicato.NomeSindicato);
                    foreach (var sindicatoEmpresa in sindicato.Empresa)
                    {
                        Console.WriteLine("Listando Empresas dos Sindicato:{0} - {1}  ", sindicato.NomeSindicato, sindicatoEmpresa.NomeEmpresa);
                    }
                }
            }

            else if (cki.Key == ConsoleKey.F2)
            {
                Empresa empresaNova = new Empresa();
                Console.WriteLine("Digite o nome da nova empresa:");
                empresaNova.NomeEmpresa = Console.ReadLine();

                Console.WriteLine("Digite o Codigo do Sindicato.");

                int codigoSindicato = Convert.ToInt32(Console.ReadLine());
                empresaNova.Sindicato = SindicatoApp.ListarSindicato().Where(x => x.SindicatoID == codigoSindicato).FirstOrDefault();

                EmpresaApp.Inserir(empresaNova);
            }

            else if (cki.Key == ConsoleKey.F3)
            {
                Console.WriteLine("Digite o código da empresa");
                int codigoDaEmpresa = Convert.ToInt16(Console.ReadLine());

                var listaDeEmpresas = EmpresaApp.ListarEmpresa(codigoDaEmpresa);
                foreach (var empresa in listaDeEmpresas)
                {
                    Console.WriteLine(empresa.NomeEmpresa);
                }
            }

            else if (cki.Key == ConsoleKey.F4)
            {
                Console.WriteLine("Digite o código da empresa");
                int codigoDaEmpresa = Convert.ToInt16(Console.ReadLine());

                EmpresaApp.Excluir(codigoDaEmpresa);
                Console.WriteLine("Empresa Excluida.");
            }
            Console.ReadKey();
        }
    }
}