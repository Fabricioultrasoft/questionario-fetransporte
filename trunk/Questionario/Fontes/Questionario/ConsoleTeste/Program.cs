using System;

using Aplicacao;
using Aplicacao.dto;


namespace ConsoleTeste
{
    class Program
    {
        static void Main(string[] args)
        {

            #region --- Configura ambiente
            ConfiguraAmbiente configuraAmbiente = new ConfiguraAmbiente();
            ConsoleKeyInfo cki = new ConsoleKeyInfo();
            Console.WriteLine("Digite: F1 PARA ACESSAR AS OPÇÕES DE SINDICATOS");
            cki = Console.ReadKey(true);
            #endregion


            if (cki.Key == ConsoleKey.F1)
            {
                Console.WriteLine("Digite: 1 para listar os sindicatos e as empresas");
                #region -- Lista todos os sindicatos e as empresas

                cki = Console.ReadKey(true);
                AppSindicato SindicatoApp = new AppSindicato();

                if (cki.Key == ConsoleKey.D1)
                {
                    Console.WriteLine("-----");
                    var listaDeSindicatos = SindicatoApp.Listar();
                    foreach (var sindicato in listaDeSindicatos)
                    {
                        Console.WriteLine("{0} - {1} ", sindicato.SindicatoID, sindicato.NomeSindicato);
                        foreach (var sindicatoEmpresa in sindicato.Empresas)
                        {
                            Console.WriteLine("         {0} ", sindicatoEmpresa.NomeEmpresa);
                        }
                    }
                    Console.ReadKey();
                }
            }
                #endregion

            else if (cki.Key == ConsoleKey.F2)
            {
                Console.WriteLine("Digite: 1 para Inserir novo usuário.");
                #region -- Lista todos os sindicatos e as empresas

                cki = Console.ReadKey(true);

                DtoUsuario usuarioDto = new DtoUsuario();
                AppUsuario UsuarioApp = new AppUsuario();

                if (cki.Key == ConsoleKey.D1)
                {
                    Console.WriteLine("Login");
                    usuarioDto.LoginUsuario = Console.ReadLine();
                    Console.WriteLine("Nome");
                    usuarioDto.NomeUsuario = Console.ReadLine();
                    Console.WriteLine("Senha");
                    usuarioDto.SenhaUsuario = Console.ReadLine();
                    Console.WriteLine("Tipo");
                    usuarioDto.TipoUsuario = Int32.Parse(Console.ReadLine());

                    UsuarioApp.Cadastrar(usuarioDto);
                }

                #endregion

                else if (cki.Key == ConsoleKey.D0)
                {
                    Console.WriteLine("Console FINALIZADO");
                }
            }

        }
    }
}

            //AppEmpresa EmpresaApp = new AppEmpresa();
            //AppCargo CargoApp = new AppCargo();

            //if (cki.Key == ConsoleKey.F5)
            //{
            //    var listaCargos = CargoApp.Listar();

            //    foreach (var cargos in listaCargos)
            //    {
            //        Console.WriteLine("{0}", cargos.NomeCargos);
            //    }
            //}

            //else if (cki.Key == ConsoleKey.F2)
            //{
            //    Empresa empresaNova = new Empresa();
            //    Console.WriteLine("Digite o nome da nova empresa:");
            //    empresaNova.NomeEmpresa = Console.ReadLine();

            //    Console.WriteLine("Digite o Codigo do Sindicato.");

            //    int codigoSindicato = Convert.ToInt32(Console.ReadLine());
            //    //empresaNova.Sindicato = SindicatoApp.ListarSindicato().Where(x => x.SindicatoID == codigoSindicato).FirstOrDefault();

            //    EmpresaApp.Inserir(empresaNova);
            //}

            //else if (cki.Key == ConsoleKey.F3)
            //{
            //    Console.WriteLine("Digite o código da empresa");
            //    int codigoDaEmpresa = Convert.ToInt16(Console.ReadLine());

            //    var listaDeEmpresas = EmpresaApp.ListarEmpresa(codigoDaEmpresa);
            //    foreach (var empresa in listaDeEmpresas)
            //    {
            //        Console.WriteLine(empresa.NomeEmpresa);
            //    }
            //}

            //else if (cki.Key == ConsoleKey.F4)
            //{
            //    Console.WriteLine("Digite o código da empresa");
            //    int codigoDaEmpresa = Convert.ToInt16(Console.ReadLine());

            //    EmpresaApp.Excluir(codigoDaEmpresa);
            //    Console.WriteLine("Empresa Excluida.");
            //}
