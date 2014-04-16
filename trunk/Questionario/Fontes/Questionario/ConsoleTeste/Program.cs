using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            Console.WriteLine("Digite: F4 PARA ACESSAR AS OPÇÕES DE EMPRESAS");
            Console.WriteLine("Digite: F5 PARA ACESSAR AS OPÇÕES DE USUARIOS");
            Console.WriteLine("Digite: F6 PARA ACESSAR AS OPÇÕES DE FUNCIONÁRIOS");
            Console.WriteLine("Digite: F7 PARA ACESSAR AS OPÇÕES DE QUESTIONÁRIOS");
            Console.WriteLine("Digite: F8 PARA ACESSAR AS OPÇÕES DE CARGOS");
            cki = Console.ReadKey(true);
            #endregion

            #region SINDICATOS
            if (cki.Key == ConsoleKey.F1)
            {
                AppSindicato SindicatoApp = new AppSindicato();

                Console.WriteLine("\t Digite: 1 para listar os sindicatos e as empresas");
                Console.WriteLine("\t Digite: 2 para listar todos os sindicatos");
                Console.WriteLine("\t Digite: 3 para deletar o sindicato");

                cki = Console.ReadKey(true);
                if (cki.Key == ConsoleKey.D1)
                {
                    Stopwatch stopwatch = new Stopwatch();
                    stopwatch.Start();

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

                    Console.WriteLine("----------------");
                    stopwatch.Stop();
                    Console.WriteLine("Tempo decorrido em milisegundos: {0} ", stopwatch.Elapsed);
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
                else if (cki.Key == ConsoleKey.D3 || cki.Key == ConsoleKey.NumPad3)
                {
                    Console.WriteLine("-----");
                    Console.WriteLine("Digite o código do sindicato a ser deletado.");

                    int codigoSindicato = Convert.ToInt32(Console.ReadLine());

                    SindicatoApp.Excluir(codigoSindicato);
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
                Console.WriteLine("\t Digite: 6 para Excluir o usuário por ID.");

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

                    UsuarioApp.Inserir(usuarioDto);
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
                    Console.WriteLine("Digite o tipo de Usuário.");
                    int tipoUsuario = Convert.ToInt32(Console.ReadLine());
                    foreach (var Usuario in UsuarioApp.Listar(tipoUsuario))
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
                else if (cki.Key == ConsoleKey.D6)
                {
                    Console.WriteLine("Digite o código do usuário.");
                    int codigoUsuario = Convert.ToInt32(Console.ReadLine());

                    UsuarioApp.Excluir(codigoUsuario);
                }

            }
            #endregion

            #region SETORAREA
            else if (cki.Key == ConsoleKey.F3)
            {
                Console.WriteLine("Digite 1 inserir um Setor/Area");
                Console.WriteLine("Digite 2 para excluir um Setor/Area");
                Console.WriteLine("Digite 3 para alterar um Setor/Area");
                Console.WriteLine("Digite 4 para obter um dto SetorArea");
                cki = Console.ReadKey(true);

                var app = new AppSetorArea();

                if (cki.Key == ConsoleKey.D1 || cki.Key == ConsoleKey.NumPad1)
                {
                    #region inserir

                    var dto = new DtoSetorArea();

                    Console.Write("Digite o Nome: ");
                    dto.NomeSetorArea = Console.ReadLine();

                    app.Inserir(dto);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D2 || cki.Key == ConsoleKey.NumPad2)
                {
                    #region excluir

                    Console.Write("Digite o Id do Setor/Area: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    app.Excluir(id);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D3 || cki.Key == ConsoleKey.NumPad3)
                {
                    #region Alterar

                    Console.Write("Digite o Id do Setor/Area: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var dto = new DtoSetorArea();

                    Console.Write("Digite o nome: ");
                    dto.NomeSetorArea = Console.ReadLine();

                    app.Alterar(id, dto);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D4 || cki.Key == ConsoleKey.NumPad4)
                {
                    #region Obter

                    Console.Write("Digite o Id do setorArea: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var setorArea = app.Obter(id);

                    Console.WriteLine("Id: " + setorArea.SetorAreaID);
                    Console.WriteLine("Nome: " + setorArea.NomeSetorArea);

                    Console.WriteLine("Fim");

                    #endregion
                }
            }
            #endregion

            #region EMPRESA
            else if (cki.Key == ConsoleKey.F4)
            {

                Console.WriteLine("Digite 1 Para Inserir uma Nova Empresa");
                cki = Console.ReadKey(true);

                if (cki.Key == ConsoleKey.D1)
                {
                    Console.WriteLine("Digite o codigo do Sindicato.");
                    var Codigo = Convert.ToInt32(Console.ReadLine());

                    AppSindicato SindicatoApp = new AppSindicato();

                    var SindicatoObtido = SindicatoApp.Obter(Codigo);

                    DtoEmpresa EmpresaDto = new DtoEmpresa();

                    EmpresaDto.Sindicato = SindicatoObtido;

                    Console.WriteLine("Digite o nome da Empresa");
                    EmpresaDto.NomeEmpresa = Console.ReadLine();

                    AppEmpresa EmpresaApp = new AppEmpresa();

                    EmpresaApp.Inserir(EmpresaDto);
                }
            }
            #endregion

            #region ENDERECOS
            else if (cki.Key == ConsoleKey.F5)
            {
                Console.WriteLine("DIGITE F1 NOVAMENTE PARA LISTAR AS OPÇÕES DE CADASTRO DE ESTADOS");

                configuraAmbiente.PularLinha(2);

                cki = Console.ReadKey(true);
                if (cki.Key == ConsoleKey.F1)
                {
                    Console.WriteLine("Digite 1 para inserir um ESTADO.");
                    Console.WriteLine("Digite 2 para listar um ESTADO.");
                    Console.WriteLine("Digite 3 para Obter um ESTADO.");
                    Console.WriteLine("Digite 4 para alterar um ESTADO.");
                    Console.WriteLine("Digite 5 para Deletar um ESTADO.");

                    cki = Console.ReadKey(true);

                    AppEndereco EnderecoApp = new AppEndereco();
                    DtoEstado EstadoDto = new DtoEstado();

                    if (cki.Key == ConsoleKey.D1)
                    {
                        Console.WriteLine("Digite o nome do Estado");
                        string nomeEstado = Console.ReadLine();

                        Console.WriteLine("Digite a sigla do Estado");
                        string sigla = Console.ReadLine();
                        
                        EstadoDto.NomeEstado = nomeEstado;
                        EstadoDto.UF = sigla;

                        EnderecoApp.InserirEstado(EstadoDto);

                        configuraAmbiente.EmitirFinaldeProcessamento("Estado Inserido.");
                    }
                    else if (cki.Key == ConsoleKey.D2)
                    {
                        var listaDeEstados = EnderecoApp.ListarEstado();

                        foreach (var item in listaDeEstados)
                        {
                            Console.WriteLine("Nome estado: {0}  -  UF: {1}", item.NomeEstado, item.UF);
                        }

                        configuraAmbiente.EmitirFinaldeProcessamento("Estados listados.");
                    }
                    else if (cki.Key == ConsoleKey.D3)
                    {
                        Console.WriteLine("Digite o codigo do estado.");
                        int codEstado = Convert.ToInt32(Console.ReadLine());

                        var estadoObtido = EnderecoApp.ObterEstado(codEstado);

                        foreach (var item in estadoObtido)
                        {
                            Console.WriteLine("Estado encontrado: {0}", item.NomeEstado);    
                        }

                        configuraAmbiente.EmitirFinaldeProcessamento("Fim.");
                    }
                    else if (cki.Key == ConsoleKey.D4)
                    {
                        Console.WriteLine("Insira o código do estado.");
                        int codEstado = Convert.ToInt32(Console.ReadLine());

                        Console.WriteLine("Insira o nome do estado.");
                        string nomeEstado = Console.ReadLine();

                        Console.WriteLine("Insira o UF do estado.");
                        string ufEstado = Console.ReadLine();

                        EstadoDto.EstadoID = codEstado;
                        EstadoDto.NomeEstado = nomeEstado;
                        EstadoDto.UF = ufEstado;

                        EnderecoApp.AlterarEstado(EstadoDto);

                        configuraAmbiente.EmitirFinaldeProcessamento("Fim");
                    }
                    else if (cki.Key == ConsoleKey.D5)
                    {
                        Console.WriteLine("Digite o código do estado a ser deletado.");

                        int codEstado = Convert.ToInt32(Console.ReadLine());

                        EnderecoApp.ExcluirEstado(codEstado);
                    }
                }
            }
            #endregion

            #region FUNCIONARIOS
            else if (cki.Key == ConsoleKey.F6)
            {
                Console.WriteLine("Digite 1 para listar os dtos funcionarios");
                Console.WriteLine("Digite 2 para inserir um novo funcionario");
                Console.WriteLine("Digite 3 para alterar um funcionario");
                Console.WriteLine("Digite 4 Para excluir um funcionario");
                Console.WriteLine("Digite 5 Para obter um dto funcionario");
                cki = Console.ReadKey(true);

                var app = new AppFuncionario();

                if (cki.Key == ConsoleKey.D1 || cki.Key == ConsoleKey.NumPad1)
                {
                    #region Listar
                    var funcionarios = app.Listar();

                    foreach (var funcionario in funcionarios)
                    {
                        Console.WriteLine("Id: " + funcionario.FuncionarioID);
                        Console.WriteLine("Nome: " + funcionario.NomeDoFuncionairo);
                        Console.WriteLine("Matricula: " + funcionario.Matricula);
                        Console.WriteLine("Email: " + funcionario.EmailDoFuncionario);
                        Console.WriteLine("Empresa: " + funcionario.Empresa.NomeEmpresa);
                        Console.WriteLine("Cargo: " + funcionario.Cargo.NomeCargos);
                    } 
                    #endregion
                }
                else if (cki.Key == ConsoleKey.D2 || cki.Key == ConsoleKey.NumPad2)
                {
                    #region Inserir
                    var dtoFuncionario = new DtoFuncionario();

                    Console.Write("Digite o Id da empresa: ");
                    var codigoEmpresa = Convert.ToInt32(Console.ReadLine());

                    dtoFuncionario.Empresa = new AppEmpresa().Obter(codigoEmpresa);

                    Console.Write("Digite o Id do cargo: ");
                    var codigoCargo = Convert.ToInt32(Console.ReadLine());

                    dtoFuncionario.Cargo = new AppCargo().Obter(codigoCargo);

                    Console.Write("Digite o nome do funcionario: ");
                    dtoFuncionario.NomeDoFuncionairo = Console.ReadLine();

                    Console.Write("Digite a matricula: ");
                    dtoFuncionario.Matricula = Console.ReadLine();

                    Console.Write("Digite o email: ");
                    dtoFuncionario.EmailDoFuncionario = Console.ReadLine();

                    app.Inserir(dtoFuncionario); 
                    #endregion
                }
                else if (cki.Key == ConsoleKey.D3 || cki.Key == ConsoleKey.NumPad3)
                {
                    #region Alterar
                    var dtoFuncionario = new DtoFuncionario();

                    Console.Write("Digite o Id do funcionario: ");
                    dtoFuncionario.FuncionarioID = Convert.ToInt32(Console.ReadLine());

                    Console.Write("Digite o Id da empresa: ");
                    var codigoEmpresa = Convert.ToInt32(Console.ReadLine());

                    dtoFuncionario.Empresa = new AppEmpresa().Obter(codigoEmpresa);

                    Console.Write("Digite o Id do cargo: ");
                    var codigoCargo = Convert.ToInt32(Console.ReadLine());

                    dtoFuncionario.Cargo = new AppCargo().Obter(codigoCargo);

                    Console.Write("Digite o nome do funcionario: ");
                    dtoFuncionario.NomeDoFuncionairo = Console.ReadLine();

                    Console.Write("Digite a matricula: ");
                    dtoFuncionario.Matricula = Console.ReadLine();

                    Console.Write("Digite o email: ");
                    dtoFuncionario.EmailDoFuncionario = Console.ReadLine();

                    app.Alterar(dtoFuncionario); 
                    #endregion
                }
                else if (cki.Key == ConsoleKey.D4 || cki.Key == ConsoleKey.NumPad4)
                {
                    #region Excluir
                    Console.Write("Digite o Id do funcionario: ");
                    var codigoFuncionario = Convert.ToInt32(Console.ReadLine());

                    app.Excluir(codigoFuncionario);
                    #endregion
                }
                else if (cki.Key == ConsoleKey.D5 || cki.Key == ConsoleKey.NumPad5)
                {
                    #region Obter
                    Console.Write("Digite o Id do funcionario: ");
                    var codigoFuncionario = Convert.ToInt32(Console.ReadLine());

                    var funcionario = app.Obter(codigoFuncionario);

                    Console.WriteLine("Id: " + funcionario.FuncionarioID);
                    Console.WriteLine("Nome: " + funcionario.NomeDoFuncionairo);
                    Console.WriteLine("Matricula: " + funcionario.Matricula);
                    Console.WriteLine("Email: " + funcionario.EmailDoFuncionario);
                    Console.WriteLine("Empresa: " + funcionario.Empresa.NomeEmpresa);
                    Console.WriteLine("Cargo: " + funcionario.Cargo.NomeCargos);

                    #endregion
                }
            }
            #endregion

            #region QUESTIONARIOS
            else if (cki.Key == ConsoleKey.F7)
            {
                Console.WriteLine("Digite 1 inserir um questionarios");
                Console.WriteLine("Digite 2 para excluir um questionario");
                Console.WriteLine("Digite 3 para alterar um questionario");
                Console.WriteLine("Digite 4 adicionar uma pergunta");
                Console.WriteLine("Digite 5 Para obter um dto questionario");
                cki = Console.ReadKey(true);

                var app = new AppQuestionario();

                if (cki.Key == ConsoleKey.D1 || cki.Key == ConsoleKey.NumPad1)
                {
                    #region inserir

                    Console.Write("Digite o ano: ");
                    var ano = Console.ReadLine();

                    Console.Write("Digite a validade: ");
                    var validade = DateTime.Parse(Console.ReadLine());

                    app.CriarNovoQuestionario(ano, validade);

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D2 || cki.Key == ConsoleKey.NumPad2)
                {
                    #region excluir

                    Console.Write("Digite o Id do questionario: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    app.ExcluirQuestionario(id);

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D3 || cki.Key == ConsoleKey.NumPad3)
                {
                    #region Alterar

                    Console.Write("Digite o Id do questionario: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    Console.Write("Digite o ano: ");
                    var ano = Console.ReadLine();

                    Console.Write("Digite a validade: ");
                    var validade = DateTime.Parse(Console.ReadLine());

                    app.AlterarQuestionario(id, ano, validade);

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D4 || cki.Key == ConsoleKey.NumPad4)
                {
                    #region adicionar pergunta
                    Console.Write("Digite o Id do questionario: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var pergunta = new DtoPerguntaQuestionario();

                    pergunta.Descricao = Console.ReadLine();
                    pergunta.MultiplaEscolha = Boolean.Parse(Console.ReadLine());

                    var respostas = new List<DtoRespostaPossivel>()
                    {
                        new DtoRespostaPossivel()
                        {
                             DescricaoRespostaPossivel = "Sim",
                        },
                        
                        new DtoRespostaPossivel()
                        {
                             DescricaoRespostaPossivel = "Não",
                        },
                    };

                    pergunta.RespostasPossiveis = respostas;

                    app.AdicionarPergunta(id, pergunta);
                    #endregion
                }
                else if (cki.Key == ConsoleKey.D5 || cki.Key == ConsoleKey.NumPad5)
                {
                    #region Obter
                    Console.Write("Digite o Id do questionario: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var questionario = app.Obter(id);

                    Console.WriteLine("Id: " + questionario.QuestionarioID);
                    Console.WriteLine("Ano: " + questionario.AnoQuestionario);
                    Console.WriteLine("Validade: " + questionario.DataValidade);
                    
                    #endregion
                }
            }
            #endregion

            #region CARGOS
            else if (cki.Key == ConsoleKey.F8)
            {
                Console.WriteLine("Digite 1 inserir um cargo");
                Console.WriteLine("Digite 2 para excluir um cargo");
                Console.WriteLine("Digite 3 para alterar um cargo");
                Console.WriteLine("Digite 4 para obter um dto cargo");
                cki = Console.ReadKey(true);

                var app = new AppCargo();

                if (cki.Key == ConsoleKey.D1 || cki.Key == ConsoleKey.NumPad1)
                {
                    #region inserir

                    var dto = new DtoCargo();

                    Console.Write("Digite o Nome: ");
                    dto.NomeCargos = Console.ReadLine();

                    Console.Write("Digite a observação: ");
                    dto.Observacao = Console.ReadLine();

                    dto.SetorArea = new AppSetorArea().Obter(1);

                    app.Inserir(dto);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D2 || cki.Key == ConsoleKey.NumPad2)
                {
                    #region excluir

                    Console.Write("Digite o Id do cargo: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    app.Excluir(id);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D3 || cki.Key == ConsoleKey.NumPad3)
                {
                    #region Alterar

                    Console.Write("Digite o Id do cargo: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var dto = new DtoCargo();

                    Console.Write("Digite o nome: ");
                    dto.NomeCargos = Console.ReadLine();

                    Console.Write("Digite a observação: ");
                    dto.Observacao = Console.ReadLine();

                    dto.SetorArea = new AppSetorArea().Obter(2);

                    app.Alterar(id, dto);

                    Console.WriteLine("Fim");

                    #endregion
                }
                else if (cki.Key == ConsoleKey.D4 || cki.Key == ConsoleKey.NumPad4)
                {
                    #region Obter

                    Console.Write("Digite o Id do cargo: ");
                    var id = Convert.ToInt32(Console.ReadLine());

                    var cargo = app.Obter(id);

                    Console.WriteLine("Id: " + cargo.CargoID);
                    Console.WriteLine("Nome: " + cargo.NomeCargos);
                    Console.WriteLine("Obs: " + cargo.Observacao);

                    Console.WriteLine("Fim");

                    #endregion
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
