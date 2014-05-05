var App = {
    obterUsuario: false,
    obterSindicato: false,
    obterEmpresa: false,
    obterSetorArea: false,
    obterCargo: false,
    obterFuncionario: false,
    init: function () {
        
    },
    efetuarLogin: function () {
        $.ajax({
            url: '/Login/Efetuarlogin',
            data: { usuario: $('#Usuario').val(), senha: $("#Senha").val() },
            type: 'POST',
            beforeSend: function () {
                modal.open({ content: '<center>Aguarde<br/><img src="Scripts/jsUI/plugins/modal/load.gif" border="0"/></center>' });
            },
            success: function (json) {
                if (json) {
                    modal.open({ content: '<center>Redirecionando...<br/><img src="Scripts/jsUI/plugins/modal/load.gif" border="0"/></center>' });
                    location.href = '/Home/Index';
                } else {
                    modal.open({ content: '<center>Autenticado: <b>' + json + '</b> <br/><br/> <a href="javascript:;" onclick="modal.close()" ><img src="Scripts/jsUI/plugins/modal/close.png" border="0"/></a></center>' });
                }
            },
        });
    },
    //usuarios
    openFrmCadastrarUsuario: function () {    
        var html = '<form id="frmCadastrarUsuario">';
        html += '<b>Cadastrar Usuário<b><br/><br/><input type="hidden" id="idUsuario" name="idUsuario" />'
            +'<input type="hidden" id="tipoUsuario" name="tipoUsuario" value="' + tipo_usuario + '"/>';
        html += 'Nome:<br/><br/><input type="text" id="nome" name="nome"/><br/><br/>';
        html += 'Usuário:<br/><br/><input type="text" id="usuario" name="usuario"/><br/><br/>';
        html += 'Senha:<br/><br/><input type="password" id="senha" name="senha"/><br/>';

        if (App.obterUsuario) {
            html += '<small>Para manter a senha atual deixe o campo em branco.</small>';
            html += '<br/><br/><input type="button" id="alterarUsuario" onclick="App.AlterarUsuario()" value="Alterar"/> ';
        } else {
            html += '<br/><br/><input type="button" id="cadastrarUsuario" onclick="App.CadastrarUsuario()" value="Cadastrar"/> ';
        }
     
        html += '<input type="button" id="cadastrarUsuario" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    ListarUsuarios: function (tipo_usuario) {
        console.log(tipo_usuario + ": ListarUsuarios()");
       
        $.ajax({
            url: 'ListarUsuarios',
            type: 'post',
            data: { tipoUsuario: tipo_usuario },
            dataType: 'json',
            success: function (json) {
                if (json != null) {
                    //console.log('Usuários encontrados.');
                    //console.log(json);
                    $('#lista').find($('#lista tr')).remove();
                    $.each(eval(json), function (item, index) {
                            
                        $('#lista').append('<tr><td>' + json[item].UsuarioID + '</td><td>' + json[item].NomeUsuario + '</td><td>' + json[item].LoginUsuario
                            + '</td><td><a href="javascript:;" title="Editar" onclick="App.getUsuario(' + json[item].UsuarioID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirUsuario('+json[item].UsuarioID+')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                    });
                } else {
                    //console.log('Nenhum usuário cadastrado');
                    $('#lista').html('<tr><td colspan="4">Não existe usuários cadastrados.</td></tr>');
                }
            }
            
        });
        tUsuario = tipo_usuario;
    },
    getUsuario: function (idUsuario) {
        App.obterUsuario = true;
        if (idUsuario != 0) {
            $.ajax({
                url: 'ObterUsuarioPorID',
                type: 'post',
                data: { UsuarioID: idUsuario },
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    App.openFrmCadastrarUsuario();
                    $('#idUsuario').val(json[0].UsuarioID);
                    $('#nome').val(json[0].NomeUsuario);
                    $('#tipoUsuario').val(json[0].TipoUsuario);
                    $('#usuario').val(json[0].LoginUsuario);
                    $('#senha').val(json[0].SenhaUsuario);
                }
            });
        }
    },
    CadastrarUsuario: function () {
        $.ajax({
            url: 'CadastrarUsuario',
            type: 'post',
            data: { nome: $('#nome').val(), login: $('#usuario').val(), senha: $('#senha').val(), tipoUsuario: parseInt($('#tipoUsuario').val()) },
            dataType: 'json',
            success: function (json) {
                modal.close();
                App.ListarUsuarios(tUsuario);
            }
        });
    },
    AlterarUsuario: function () {
        $.ajax({
            url: 'AlterarUsuario',
            type: 'post',
            data: { id: $('#idUsuario').val(), nome: $('#nome').val(), login: $('#usuario').val(), senha: $('#senha').val(), tipoUsuario: parseInt($('#tipoUsuario').val()) },
            dataType: 'json',
            success: function (json) {
                modal.close();
                $('#idUsuario').val('');
                $('#nome').val('');
                $('#tipoUsuario').val('');
                $('#usuario').val('');
                $('#senha').val('');
                App.closeModal();
                App.ListarUsuarios(tUsuario);
            }
        });
    },
    ExcluirUsuario: function (id) {
        $.ajax({
            url: 'ExcluirUsuario',
            type: 'post',
            data: { codUsuario: id },
            success: function () {
                App.ListarUsuarios(tUsuario);
            }
        });
    },
    //sindicatos
    getSindicato: function (idSindicato) {
        App.obterSindicato = true;
        if (idSindicato != 0) {
            $.ajax({
                url: 'ObterSindicatoPorID',
                type: 'post',
                data: { SindicatoID: idSindicato },
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    App.openFrmCadastrarSindicato();
                    $('#nomeSindicato').val(json.NomeSindicato);
                }
            });
        }
    },
    openFrmCadastrarSindicato: function () {
        var html = '<form id="frmCadastrarSindicato">';
        html += '<b>Cadastrar Sindicato<b><br/><br/><input type="hidden" id="idSindicato" name="idSindicato" />';
        html += 'Nome:<br/><br/><input type="text" id="nomeSindicato" name="nomeSindicato"/><br/><br/>';
        html += 'Logomarca:<br/><br/><input type="file" id="logomarca" name="logomarca"/><br/><br/><small id="logo">(Deixe o campo vazio para manter a logo atual)</small><br/>';

        if (App.obterSindicato) {
            html += '<br/><br/><input type="button" id="alterarSindicato" onclick="App.AlterarSindicato()" value="Alterar"/> ';
        } else {
            html += '<br/><br/><input type="button" id="cadastrarSindicato" onclick="App.CadastrarSindicato()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarSindicato" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    CadastrarSindicato: function(){
        $.ajax({
            url: 'Cadastrar',
            type: 'post',
            data: { nome: $('#nomeSindicato').val(), logomarca: $('#logomarca').val() },
            dataType: 'json',
            success: function () {
                App.ListarEntidade('Sindicatos');
                $('#nomeSindicato').val('');
                $('#logomarca').val('');
                App.closeModal();
            }
        });
    },
    AlterarSindicato: function () {
        $.ajax({
            url: 'Alterar',
            type: 'post',
            data: { idSindicato: $('#idSindicato').val(), nome: $('#nomeSindicato').val(), logomarca: $('#logomarca').val() },
            dataType: 'json',
            success: function () {
                App.ListarEntidade('Sindicatos');
                $('#nomeSindicato').val('');
                $('#logomarca').val('');
                App.closeModal();
            }
        });
    },
    ExcluirSindicato: function (id) {
        $.ajax({
            url: 'Excluir',
            type: 'post',
            data: { codSindicato: id },
            success: function () {
                $('#lista').find($('#lista tr')).remove();
                App.ListarEntidade('Sindicatos');
            }
        });
    },
    //empresas
    getEmpresa: function (idEmpresa) {
        App.obterEmpresa = true;
        if (idEmpresa != 0) {
            $.ajax({
                url: 'ObterEmpresaPorID',
                type: 'post',
                data: { EmpresaID: idEmpresa },
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    App.openFrmCadastrarEmpresa();
                    $('#idEmpresa').val(json.EmpresaID);
                    $('#nomeEmpresa').val(json.NomeEmpresa);
                    $('#emailEmpresa').val(json.EmailEmpresa);
                    $('#endereco').val(json.Endereco);
                    $('#complemento').val(json.Complemento);
                    $('#cep').val(json.Cep);
                    $('#idSindicato').val(json.Sindicato_SindicatoID);
                }
            });
        }
    },
    openFrmCadastrarEmpresa: function () {
  
        var html = '<form id="frmCadastrarEmpresa">';
        html += '<b>Cadastrar Empresa<b><input type="hidden" id="idEmpresa" name="idEmpresa" /><br/><br/>';
        html += 'Nome:<br/><input type="text" id="nomeEmpresa" name="nomeEmpresa"/><br/><br/>';
        html += 'E-mail:<br/><input type="text" id="emailEmpresa" name="emailEmpresa"/><br/><br/>';
        // Buscar endereco por cep
        html += 'Cep:<br/><input type="text" id="cep" name="cep"/><br/><br/>';
        html += 'Endereço:<br/><input type="text" id="endereco" name="endereco"/><br/><br/>';
        html += 'Complemeto:<br/><input type="text" id="complemento" name="complemento"/><br/><br/>';
        html += '<select id="estados" class="small-hard" onchange="App.ListarCidades()"><option>UF</option></select>';
        html += '<select id="cidades" class="small" onchange="App.ListarBairros()"><option>Cidade</option></select><br/><br/>';
        html += '<select id="bairros" class="small-normal"><option>Bairro</option></select><br/><br/>';
        html += '<select id="idSindicato" class="small-normal"><option>Sindicato</option></select>';

        if (App.obterEmpresa) {
            html += '<br/><br/><input type="button" id="alterarEmpresa" onclick="App.AlterarEmpresa()" value="Alterar"/> ';
        } else {
            html += '<br/><br/><input type="button" id="cadastrarEmpresa" onclick="App.CadastrarEmpresa()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarSindicato" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
        App.ListarEstados();
        App.ListarSindicatos();
    },
    CadastrarEmpresa: function ()
    {
        $.ajax({
            url: 'Cadastrar',
            type: 'post',
            data: { nome: $('#nomeEmpresa').val(), email: $('#emailEmpresa').val(), logomarca: null, endereco: $('#endereco').val(), complemento: $('#complemento').val(), cep: $('#cep').val(), idBairro: $('#bairros').val(), idSindicato: $('#idSindicato').val(), obs: null },
            dataType: 'json',
            success: function (json) {
                App.closeModal();
            }
        });
    },
    AlterarEmpresa: function ()
    {
        $.ajax({
            url: 'Alterar',
            type: 'post',
            data: { empresaID: $('#idEmpresa').val(), nome: $('#nomeEmpresa').val(), email: $('#emailEmpresa').val(), logomarca: null, endereco: $('#endereco').val(), complemento: $('#complemento').val(), cep: $('#cep').val(), idBairro: $('#bairros').val(), idSindicato: $('#idSindicato').val(), obs: null },
            dataType: 'json',
            success: function (json) {
                App.closeModal();
            }
        });
    },
    ExcluirEmpresa: function (idEmpresa) {
        $.ajax({
            url: 'Excluir',
            type: 'post',
            data: { codEmpresa: idEmpresa },
            success: function () {
                $('#lista').find($('#lista tr')).remove();
                App.Listar('Empresas');
            }
        });
    },
    //SetorArea
    getSetorArea: function (idSetorArea) {
        App.obterSetorArea = true;
        if (idSetorArea != 0) {
            $.ajax({
                url: 'ObterSetorAreaPorID',
                type: 'post',
                data: { SetorAreaID: idSetorArea },
                dataType: 'json',
                success: function (json) {
                    App.openFrmCadastrarSetorArea();
                    $('#idSetorArea').val(json.SetorAreaID);
                    $('#nomeSetorArea').val(json.NomeSetorArea);
                }
            });
        }
    },
    openFrmCadastrarSetorArea: function () {
        var html = '<form id="frmCadastrarSetorArea">';
        html += '<b>Cadastrar Setor/Área</b><input type="hidden" id="idSetorArea" name="idSetorArea" /><br/><br/>';
        html += 'Nome:<br/><input type="text" id="nomeSetorArea" name="nomeSetorArea"/><br/>';

        if (App.obterSetorArea) {
            html += '<br/><input type="button" id="alterarSetorArea" onclick="App.AlterarSetorArea()" value="Alterar"/> ';
        } else {
            html += '<br/><input type="button" id="cadastrarSetorArea" onclick="App.CadastrarSetorArea()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarCargo" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    CadastrarSetorArea: function () {
        $.ajax({
            url: 'Cadastrar',
            type: 'post',
            data: { nomeSetorArea: $('#nomeSetorArea').val() },
            dataType: 'json',
            success: function (json)
            {
                App.ListarEntidade('SetorArea');
                $('#nomeSetorArea').val('');
                App.closeModal();
            }
        });
    },
    AlterarSetorArea: function () {
        $.ajax({
            url: 'Alterar',
            type: 'post',
            data: { idSetorArea: $('#idSetorArea').val(), nomeSetorArea: $('#nomeSetorArea').val() },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('SetorArea');
                App.closeModal();
            }
        });
    },
    ExcluirSetorArea: function (idSetorArea) {
        $.ajax({
            url: 'Excluir',
            type: 'post',
            data: { idSetorArea: idSetorArea },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('SetorArea');
            }
        });
    },
    //Cargos
    getCargo: function (idCargo) {
        App.obterCargo = true;
        if (idCargo != 0) {
            $.ajax({
                url: 'ObterCargoPorID',
                type: 'post',
                data: { CargoID: idCargo },
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    App.openFrmCadastrarCargo();
                    $('#idCargo').val(json.CargoID);
                    $('#nomeCargos').val(json.NomeCargos);
                }
            });
        }
    },
    openFrmCadastrarCargo: function () {
        var html = '<form id="frmCadastrarSetorArea">';
        html += '<b>Cadastrar Cargo</b><input type="hidden" id="idCargo" name="idCargo" /><br/><br/>';
        html += 'Nome:<br/><input type="text" id="nomeCargos" name="nomeCargos"/><br/><br/>';
        html += 'Setor/Área:<br/><select id="setorArea"></select><br/><br/>'

        if (App.obterCargo) {
            html += '<br/><input type="button" id="alterarCargo" onclick="App.AlterarCargo()" value="Alterar"/> ';
        } else {
            html += '<br/><input type="button" id="cadastrarCargo" onclick="App.CadastrarCargo()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarCargo" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
        App.ListarSetoresAreas();
    },
    CadastrarCargo: function () {
        $.ajax({
            url: 'Cadastrar',
            type: 'post',
            data: { nomeCargo: $('#nomeCargos').val(), setorArea: $('#setorArea').val() },
            dataType: 'json',
            sucess: function () {
                App.ListarEntidade('Cargos');
                modal.close();
            }
        });
    },
    AlterarCargo: function () {
        $.ajax({
            url: 'Alterar',
            type: 'post',
            data: { CargoID: $('#idCargo').val(), nomeCargo: $('#nomeCargos').val(), setorArea: $('#setorArea').val() },
            dataType: 'json',
            sucess: function () {
                App.ListarEntidade('Cargos');
                modal.close();
            }
        });
    },
    ExcluirCargo: function (idCargo) {
        $.ajax({
            url: 'Excluir',
            type: 'post',
            data: { CargoID: idCargo },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('Cargos');
            }
        });
    },
    //funcionarios
    getFuncionario: function (idFuncionario) {
        App.obterCargo = true;
        if (idFuncionario != 0) {
            $.ajax({
                url: 'ObterFuncionarioPorID',
                type: 'post',
                data: { FuncionarioID: idFuncionario },
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    App.openFrmCadastrarCargo();
                    $('#idFuncionario').val(json.FuncionarioID);
                    $('#nome').val(json.NomeDoFuncionario);
                    $('#email').val(json.EmailDoFuncionario);
                }
            });
        }
    },
    openFrmCadastrarFuncionario: function () {
        var html = '<form id="frmCadastrarFuncionario">';
        html += '<b>Cadastrar Funcionário<b><br/><br/><input type="hidden" id="idFuncionario" name="idFuncionario" />';
        html += 'Matrícula:<br/><br/><input type="text" id="matricula" name="matricula"/><br/><br/>';
        html += 'Nome:<br/><br/><input type="text" id="nome" name="nome"/><br/><br/>';
        html += 'E-mail:<br/><br/><input type="text" id="email" name="email"/><br/><br/>';
        //html += '<input type="checkbox" id="ativo" name="ativo"/> Ativo<br/><br/>';
        if (App.obterFuncionario) {
            html += '<small>Para manter a senha atual deixe o campo em branco.</small>';
            html += '<br/><br/><input type="button" id="alterarFuncionario" onclick="App.AlterarFuncionario()" value="Alterar"/> ';
        } else {
            html += '<br/><br/><input type="button" id="cadastrarFuncionario" onclick="App.CadastrarFuncionario()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarFuncionario" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    CadastrarFuncionario: function () {
        $.ajax({
            url: 'Cadastrar',
            type: 'post',
            data: { matricula: $('#matricula').val(), nome: $('#nome').val(), email: $('#email').val() },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('Funcionarios');
            }
        });
    },
    AlterarFuncionario: function () {
        $.ajax({
            url: 'Alterar',
            type: 'post',
            data: { funcionarioID: $('#idFuncionario').val(), matricula: $('#matricula').val(), nome: $('#nome').val(), email: $('#email').val() },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('Funcionarios');
            }
        });
    },
    ExcluirFuncionario: function (idFuncionario) {
        $.ajax({
            url: 'Excluir',
            type: 'post',
            data: { funcionarioID: idFuncionario },
            dataType: 'json',
            success: function (json) {
                App.ListarEntidade('Funcionarios');
            }
        });
    },
    //global
    ListarSetoresAreas: function () {
        $.ajax({
            url: 'ListarSetoresAreas',
            type: 'post',
            success: function (json) {
                $('#setorArea').append('<option>Selecione...</option>');
                $.each(eval(json), function (index, i) {
                    $('#setorArea').append('<option value="' + json[index].SetorAreaID + '">' + json[index].NomeSetorArea + '</option>');
                });
            }
        });
    },
    ListarEntidade: function (entidade) {
        if (entidade == 'Sindicatos') {
            $.ajax({
                url: 'Listar',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    $('#lista').find($('#lista tr')).remove();
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').append('<tr><td>' + json[item].SindicatoID + '</td><td>' + json[item].NomeSindicato + '</td><td><a href="javascript:;" title="Editar" onclick="App.getSindicato(' + json[item].SindicatoID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirSindicato(' + json[item].SindicatoID + ')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    } else {
                        $('#lista').html('<tr><td colspan="4">Não existe sindicatos cadastrados.</td></tr>');
                    }
                }
            });
        } else if (entidade == 'Empresas') {
            $.ajax({
                url: 'Listar',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    //console.log(json);
                    $('#lista').find($('#lista tr')).remove();
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').append('<tr><td>' + json[item].EmpresaID + '</td><td>' + json[item].NomeEmpresa + '</td><td><a href="javascript:;" title="Editar" onclick="App.getEmpresa(' + json[item].EmpresaID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirEmpresa(' + json[item].EmpresaID + ')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    } else {
                        $('#lista').html('<tr><td colspan="4">Não existe sindicatos cadastrados.</td></tr>');
                    }
                }
            });
        } else if (entidade == 'Funcionarios') {
            $.ajax({
                url: 'Listar',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    $('#lista').find($('#lista tr')).remove();
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json[item].FuncionarioID + '</td><td>' + json[item].NomeFuncionario + '</td><td>' + json[item].EmailFuncionario + '</td><td>' + json[item].CargoFuncionario + '</td><td>' + json[item].EmpresaFuncionario + + '</td></tr>');
                        });
                    } else {
                        $('#lista').html('<tr><td colspan="4">Não existe funcionários cadastrados.</td></tr>');
                    }
                }
            });
        } else if (entidade == 'SetorArea') {
            $.ajax({
                url: 'Listar',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    $('#lista').find($('#lista tr')).remove();
                    if (json != null) {
                        $.each(eval(json), function (index, i) {
                            $('#lista').append('<tr><td>' + json[index].SetorAreaID + '</td><td>' + json[index].NomeSetorArea + '</td><td><a href="javascript:;" title="Editar" onclick="App.getSetorArea(' + json[index].SetorAreaID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirSetorArea(' + json[index].SetorAreaID + ')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    }
                }
            });
        } else if (entidade == 'Cargos') {
            $.ajax({
                url: 'Listar',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    $('#lista').find($('#lista tr')).remove();
                    
                    if (json != null) {
                        $.each(eval(json), function (index, i) {
                            $('#lista').append('<tr><td>' + json[index].CargoID + '</td><td>' + json[index].NomeCargos + '</td><td><a href="javascript:;" title="Editar" onclick="App.getCargo(' + json[index].CargoID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirCargo(' + json[index].CargoID + ')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    }
                }
            });
        }
    },
    ListarSindicatos: function () {
        $.ajax({
            url: 'ListarSindicatos',
            type: 'post',
            success: function (json) {
                $('#idSindicato').find($('option')).remove();
                $.each(eval(json), function (item, index) {
                    $('#idSindicato').append('<option value="' + json[item].SindicatoID + '">' + json[item].NomeSindicato + '</option>');
                });
            }
        });
    },
    ListarEstados: function () {
        $.ajax({
            url: 'ListarEstados',
            type: 'post',
            success: function (json) {
                $('#estados').find($('option')).remove();
                $.each(eval(json), function (item, index) {
                    $('#estados').append('<option value="' + json[item].EstadoID + '">' + json[item].UF + '</option>');
                });
            }
        });
    },
    ListarCidades: function () {
        $.ajax({
            url: 'ListarCidades',
            type: 'post',
            data: { codEstado: $('#estados').val() },
            dataType: 'json',
            success: function (json) {
                $('#cidades').find($('option')).remove();
                $.each(eval(json), function (index, i) {
                    $('#cidades').append('<option value="' + json[index].CidadeID + '">' + json[index].Descricao + '</option>');
                });
            }
        });
    },
    ListarBairros: function () {
        $.ajax({
            url: 'ListarBairros',
            data: { codCidade: $('#cidades').val() },
            type: 'post',
            dataType: 'json',
            success: function (json) {
                $('#bairros').find($('option')).remove();
                $.each(eval(json), function (index, i) {
                    $('#bairros').append('<option value="' + json[index].BairroID + '">' + json[index].NomeBairro + '</option>');
                });
            }
        });
    },
    closeModal: function () {
        obterUsuario = false;
        obterSindicato = false;
        obterEmpresa = false;
        obterSetorArea = false;
        obterCargo = false;
        modal.close();
    }
}

