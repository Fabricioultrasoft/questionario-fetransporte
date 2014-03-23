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
            Console.WriteLine("Digite: F2 PARA ACESSAR AS OPÇÕES DE USUÁRIOS");
            Console.WriteLine("Digite: F3 PARA ACESSAR AS OPÇÕES DE SETORES E AREAS");
            cki = Console.ReadKey(true);
            #endregion

            #region -- SINDICATOS
            if (cki.Key == ConsoleKey.F1)
            {
                AppSindicato SindicatoApp = new AppSindicato();

                Console.WriteLine("\t Digite: 1 para listar os sindicatos e as empresas");
                Console.WriteLine("\t Digite: 2 para listar todos os sindicatos");
                Console.WriteLine("\t Digite: 3 para deletar o sindicato");

                cki = Console.ReadKey(true);
                if (cki.Key == ConsoleKey.D1)
                {
                    Console.WriteLine("-----");
                    var listaDeSindicatos = SindicatoApp.ListarSindicatoEmpresas();
                    foreach (var sindicato in listaDeSindicatos)
                    {
                        Console.WriteLine("{0} - {1} ", sindicato.SindicatoID, sindicato.NomeSindicato);
                        foreach (var sindicatoEmpresa in sindicato.Empresas)
                        {
                            Console.WriteLine("         {0} ", sindicatoEmpresa.NomeEmpresa);
                        }
                    }
                }
                else if (cki.Key == ConsoleKey.D2)
                {
                    Console.WriteLine("-----");
                    var listaDeSindicatos = SindicatoApp.Listar();
                    foreach (var sindicato in listaDeSindicatos)
                    {
                        Console.WriteLine("{0} - {1} ", sindicato.SindicatoID, sindicato.NomeSindicato);
                    }
                }
                else if (cki.Key == ConsoleKey.D3)
                {
                    Console.WriteLine("-----");
                    Console.WriteLine("Digite o código do sindicato a ser deletado.");

                    int ID = Convert.ToInt32(Console.ReadLine());

                    SindicatoApp.Deletar(ID);
                }

            }
            #endregion

            #region USUARIOS
            else if (cki.Key == ConsoleKey.F2)
            {
                Console.WriteLine("\t Digite: 1 para Inserir novo usuário.");
                Console.WriteLine("\t Digite: 2 para validar usuário.");
                Console.WriteLine("\t Digite: 3 para listar usuário.");
                Console.WriteLine("\t Digite: 4 para Alterar usuário.");
                Console.WriteLine("\t Digite: 5 para obter o usuário por ID.");

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

                else if (cki.Key == ConsoleKey.D2)
                {
                    Console.WriteLine("Login:");
                    string login = Console.ReadLine();

                    Console.WriteLine("Senha:");
                    string senha = Console.ReadLine();

                    if (UsuarioApp.VerificarLogin(login, senha) == true)
                    {
                        Console.WriteLine("USUARIO LOGADO.");
                    }
                    else
                    {
                        Console.WriteLine("USUARIO NAO EXISTE.");
                    }
                }
                else if (cki.Key == ConsoleKey.D3)
                {
                    foreach (var Usuario in UsuarioApp.Listar())
                    {
                        Console.WriteLine("Login: {0} - Nome completo: {1}", Usuario.LoginUsuario, Usuario.NomeUsuario);
                    }
                }
                else if (cki.Key == ConsoleKey.D4)
                {
                    DtoUsuario DtoUsuarioParaSalvar = new DtoUsuario();

                    Console.WriteLine("Digite o ID do Usuario: ");
                    int ID = Convert.ToInt32(Console.ReadLine());
                    Console.WriteLine("Digite o Nome do Usuario: ");
                    string Nome = Console.ReadLine();

                    DtoUsuarioParaSalvar.NomeUsuario = Nome;
                    UsuarioApp.Alterar(DtoUsuarioParaSalvar);
                }
                else if (cki.Key == ConsoleKey.D5)
                {
                    Console.WriteLine("Digite o código do usuário.");
                    int codigoUsuario = Convert.ToInt32(Console.ReadLine());

                    foreach (var Usuario in UsuarioApp.Obter(codigoUsuario))
                    {
                        Console.WriteLine("Id do Usuario: {0} - Nome do Usuario:{1} ", Usuario.UsuarioID, Usuario.NomeUsuario);
                    }
                }
            }
            #endregion

            #region -- SETORAREA
            else if (cki.Key == ConsoleKey.F3)
            {
                AppSetorArea SetorAreaApp = new AppSetorArea();

                Console.WriteLine("\t Digite: 1 para listar as areas");

                cki = Console.ReadKey(true);

                if (cki.Key == ConsoleKey.D1)
                {
                    Console.WriteLine("-----");
                    var listaDeSetoresAreas = SetorAreaApp.Listar();
                    foreach (var setorarea in listaDeSetoresAreas)
                    {
                        Console.WriteLine("{0} - {1} ", setorarea.SetorAreaID, setorarea.NomeSetorArea);
                    }
                    Console.ReadKey();
                }
            }
            #endregion

            else if (cki.Key == ConsoleKey.D0)
            {
                Console.WriteLine("Console FINALIZADO");
            }
            Console.ReadKey();
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
