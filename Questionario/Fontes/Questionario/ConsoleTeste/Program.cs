using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aplicacao;
using Aplicacao.dto;


namespace ConsoleTeste
{
    class Program
    {
        static void Main(string[] args)
        {
            #region configurando ambiente. e declarando as classes.
            Console.BackgroundColor = ConsoleColor.DarkYellow;
            Console.ForegroundColor = ConsoleColor.Green;

            Console.WriteLine("Digite: F1 para listar os sindicatos");
            Console.WriteLine("Digite: F2 para listar as Empresas  ");

            ConsoleKeyInfo cki = new ConsoleKeyInfo();

            cki = Console.ReadKey(true);

            #endregion

            #region funções do sindicato
            if (cki.Key == ConsoleKey.F1)
            {
                var appSindicato = new AppSindicato();
                var dtoSindicato = new DtoSindicato();

                var AppUsuario = new AppUsuario();
                var dtoUsuario = new DtoUsuario();

                var AppUsuarioSindicato = new AppUsuarioSindicato();
                var DtoUsuarioSindicato = new DtoUsuarioSindicato();

                Console.WriteLine("Digite: 1 ou 2 para listar os sindicatos e 3 para deletar");
                cki = Console.ReadKey(true);

                if (cki.Key == ConsoleKey.D1)
                {
                    IEnumerable<DtoSindicato> listaDeSindicatos = appSindicato.Listar();
                    foreach (DtoSindicato sindicatos in listaDeSindicatos)
                    {
                        Console.WriteLine(sindicatos.NomeSindicato);
                    }

                    Console.WriteLine("Listando todos os usuarios");
                    Console.WriteLine(">>>>>>>>>>>>>>>>>>>>>>>>>>");

                    IEnumerable<DtoUsuario> listaDeUsuarios = AppUsuario.Listar();
                    foreach (DtoUsuario usuarios in listaDeUsuarios)
                    {
                        Console.WriteLine("ID do Usuario: {0} *** Nome do Usuário: {1}", usuarios.UsuarioID, usuarios.NomeUsuario);
                    }

                    Console.WriteLine("Listando os usuarios do Sindicato.");
                    IEnumerable<DtoUsuarioSindicato> listaDeUsuariosSindicato = AppUsuarioSindicato.Listar();
                    foreach (DtoUsuarioSindicato usuariosSindicato in listaDeUsuariosSindicato)
                    {
                        Console.WriteLine("ID do Usuario: {0} *** Nome do Usuário: {1}", usuariosSindicato.UsuarioSindicatoID);
                    }

                    Console.ReadKey();
                }
                else if (cki.Key == ConsoleKey.D2)
                {
                    dtoSindicato.NomeSindicato = Console.ReadLine();
                    appSindicato.Inserir(dtoSindicato);
                }
                else if (cki.Key == ConsoleKey.D3)
                {
                    int codSindicato = Convert.ToInt32(Console.ReadLine());
                    appSindicato.Deletar(codSindicato);
                }
            }
            #endregion

            #region teste
            else if (cki.Key == ConsoleKey.F2)
            {
                var appEmpresa = new AppEmpresa();
                var dtoEmpresa = new DtoEmpresa();

                if (cki.Key == ConsoleKey.D1)
                {
                    IEnumerable<DtoEmpresa> listaDeEmpresas = appEmpresa.Listar();
                    foreach (DtoEmpresa empresas in listaDeEmpresas)
                    {
                        Console.WriteLine(empresas.NomeEmpresa);
                    }

                    Console.ReadKey();
                }
              
                //else if (cki.Key == ConsoleKey.D2)
                //{
                //    dtoEmpresa.NomeEmpresa = Console.ReadLine();
                //    appEmpresa.Inserir(dtoEmpresa);
                //}
                //else if (cki.Key == ConsoleKey.D3)
                //{
                //    int codSindicato = Convert.ToInt32(Console.ReadLine());
                //    appSindicato.Deletar(codSindicato);
                //}
                #endregion teste
            }
            Console.ReadKey();
        }
    }
}
