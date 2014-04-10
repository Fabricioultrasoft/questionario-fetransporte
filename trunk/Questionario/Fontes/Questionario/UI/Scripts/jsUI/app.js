var App = {
    obterUsuario: false,
    obterSindicato: false,
    obterEmpresa: false,
    obterSetorArea: false,
    obterCargo: false,
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
                console.log(json);
                if (json != null) {
                    console.log('Usuários encontrados.');
                    $('#lista').find($('#lista tr')).remove();
                    $.each(eval(json), function (item, index) {
                            
                        $('#lista').append('<tr><td>' + json[item].UsuarioID + '</td><td>' + json[item].NomeUsuario + '</td><td>' + json[item].LoginUsuario
                            + '</td><td><a href="javascript:;" title="Editar" onclick="App.getUsuario(' + json[item].UsuarioID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirUsuario('+json[item].UsuarioID+')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                    });
                } else {
                    console.log('Nenhum usuário cadastrado');
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
                    console.log(json);
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
                    console.log(json);
                    App.openFrmCadastrarSindicato();
                    $('#nomeSindicato').val(json.NomeSindicato);
                    $('#logo').val(json.l);
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
                App.Listar('Sindicatos');
                $('#nomeSindicato').val('');
                $('#logomarca').val('');
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
                App.Listar('Sindicatos');
                $('#nomeSindicato').val('');
                $('#logomarca').val('');
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
                App.Listar('Sindicatos');
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
                    console.log(json);
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
        html += '<b>Cadastrar Empresa<b><br/><br/><input type="hidden" id="idEmpresa" name="idEmpresa" />';
        html += 'Nome:<br/><br/><input type="text" id="nomeEmpresa" name="nomeEmpresa"/><br/><br/>';
        html += 'E-mail:<br/><br/><input type="text" id="emailEmpresa" name="emailEmpresa"/><br/><br/>';
        html += 'Cep:<br/><br/><input type="text" id="cep" name="cep"/><br/><br/>';
        html += 'Endereço:<br/><br/><input type="text" id="endereco" name="endereco"/><br/><br/>';
        html += 'Complemeto:<br/><br/><input type="text" id="complemento" name="complemento"/><br/><br/>';
        html += '<select id="idBairro"></select>';
        html += '<select id="idSindicato"></select>';

        if (App.obterEmpresa) {
            html += '<br/><br/><input type="button" id="alterarEmpresa" onclick="App.AlterarEmpresa()" value="Alterar"/> ';
        } else {
            html += '<br/><br/><input type="button" id="cadastrarEmpresa" onclick="App.CadastrarEmpresa()" value="Cadastrar"/> ';
        }

        html += '<input type="button" id="cadastrarSindicato" onclick="App.closeModal()" value="Cancelar"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    CadastrarEmpresa: function () { },
    AlterarEmpresa: function () { },
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
                    console.log(json);
                    App.openFrmCadastrarSetorArea();

                }
            });
        }
    },
    openFrmCadastrarSetorArea: function () {

    },
    CadastrarSetorArea: function () { },
    AlterarSetorArea: function () { },
    ExcluirSetorArea: function (idSetorArea) { },
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
                    console.log(json);
                    App.openFrmCadastrarCargo();
                }
            });
        }
    },
    CadastrarCargo: function () { },
    AlterarCargo: function () { },
    ExcluirCargo: function (idCargo) { },
    //global
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
                        console.log('Nenhum sindicato cadastrado');
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
                    console.log(json);
                    $('#lista').find($('#lista tr')).remove();
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').append('<tr><td>' + json[item].EmpresaID + '</td><td>' + json[item].NomeEmpresa + '</td><td><a href="javascript:;" title="Editar" onclick="App.getEmpresa(' + json[item].EmpresaID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                            + '<a href="javascript:;" onclick="App.ExcluirEmpresa(' + json[item].EmpresaID + ')" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    } else {
                        console.log('Nenhum sindicato cadastrado');
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
                            $('#lista').html('<tr><td>' + json.FuncionarioID + '</td><td>' + json.NomeFuncionario + '</td><td>' + json.EmailFuncionario + '</td><td>' + json.CargoFuncionario +  '</td><td>' + json.EmpresaFuncionario + + '</td></tr>');
                        });
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
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.SindicatoID + '</td><td>' + json.NomeSindicato + '</td></tr>');
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
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.SindicatoID + '</td><td>' + json.NomeSindicato + '</td></tr>');
                        });
                    }
                }
            });
        }
    },
    closeModal: function () {
        App.obterUsuario = false;
        modal.close();
    }
}

