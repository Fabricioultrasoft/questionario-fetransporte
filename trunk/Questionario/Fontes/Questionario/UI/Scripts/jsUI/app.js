var App = {
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
    openFrmCadastrarUsuario: function () {
       
        var html = '<form id="frmCadastrarUsuario">';
        html += '<b>Cadastrar Usuário<b><br/><br/><input type="hidden" id="tipoUsuario" name="tipoUsuario" value="' + tipo_usuario + '"/>';
        html += 'Nome:<br/><br/><input type="text" id="nome" name="nome"/><br/><br/>';
        html += 'Usuário:<br/><br/><input type="text" id="usuario" name="usuario"/><br/><br/>';
        html += 'Senha:<br/><br/><input type="password" id="senha" name="senha"/><br/><br/>';
        html += '<input type="button" id="cadastrarUsuario" onclick="App.CadastrarUsuario()" value="Cadastrar"/> ';
        html += '<input type="button" id="cadastrarUsuario" onclick="modal.close()" value="Cancelar"/>';
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
                        $('#lista').remove('tr');
                        $.each(eval(json), function (item, index) {
                            
                            $('#lista').append('<tr><td>' + json[item].UsuarioID + '</td><td>' + json[item].NomeUsuario + '</td><td>' + json[item].LoginUsuario
                                + '</td><td><a href="javascript:;" title="Editar" onclick="App.getUsuario(' + json[item].UsuarioID + ')"><img src="../Content/imagens/icones/b_edit.png" border="0"/></a> '
                                + '<a href="javascript:;" title="Excluir"><img src="../Content/imagens/icones/b_trash.png" border="0"/></a> </td></tr>');
                        });
                    } else {
                        console.log('Nenhum usuário cadastrado');
                        $('#lista').html('<tr><td colspan="4">Não existe usuários cadastrados.</td></tr>');
                    }
                }
            });
       
    },
    getUsuario: function (idUsuario) {
        if (idUsuario != 0) {
            $.ajax({
                url: 'ObterUsuario',
                type: 'post',
                data: { UsuarioID: idUsuario },
                dataType: 'json',
                success: function (json) {
                    App.openFrmCadastrarUsuario();
                    $('#nome').val(json.NomeUsuario);
                    $('#tipoUsuario').val(json.TipoUsuario);
                    $('#usuario').val(json.Loginusuario);
                    $('#senha').val(json.SenhaUsuario);
                    $('#cadastrarUsuario').attr('id', 'alterarUsuario');
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
                App.ListarUsuarios(1);
            }
        });
    },
    ListarEntidade: function (entidade) {
        if (entidade == 'Sindicato') {
            $.ajax({
                url: 'ListarSindicatos',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.SindicatoID + '</td><td>' + json.NomeSindicato + '</td></tr>');
                        });
                    }
                }
            });
        } else if (entidade == 'Empresas') {
            $.ajax({
                url: 'ListarEmpresas',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.NomeEmpresa + '</td><td>' + json.EmailEmpresa + '</td></tr>');
                        });
                    }
                }
            });
        } else if (entidade == 'Funcionarios') {
            $.ajax({
                url: 'ListarFuncionarios',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.FuncionarioID + '</td><td>' + json.NomeFuncionario + '</td><td>' + json.EmailFuncionario + '</td><td>' + json.CargoFuncionario +  '</td><td>' + json.EmpresaFuncionario + + '</td></tr>');
                        });
                    }
                }
            });
        } else if (entidade == 'SetorArea') {
            $.ajax({
                url: 'ListarSetorArea',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.SindicatoID + '</td><td>' + json.NomeSindicato + '</td></tr>');
                        });
                    }
                }
            });
        } else if (entidade == 'Cargos') {
            $.ajax({
                url: 'ListarCargos',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.SindicatoID + '</td><td>' + json.NomeSindicato + '</td></tr>');
                        });
                    }
                }
            });
        }
    }
}