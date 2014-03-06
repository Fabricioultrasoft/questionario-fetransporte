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
        html += '<select id="empresaID" name="empresaID" size="1"></select>';
        html += 'Usuário:<input type="text" id="usuario" name="usuario"/>';
        html += 'Senha:<input type="text" id="senha" name="senha"/>';
        html += '</form>';

        modal.open({ content: html });
    },
    Listar: function (usuariosFrom) {
        console.log(usuariosFrom + ": ListarUsuarios()");
        if (usuariosFrom == 'Fetransportes') {
            $.ajax({
                url: 'ListarUsuarios',
                type: 'post',
                dataType: 'json',
                success: function (json) {
                    if (json != null) {
                        $.each(eval(json), function (item, index) {
                            $('#lista').html('<tr><td>' + json.UsuarioFederacaoID + '</td><td>' + json.LoginUsuarioFederacao + '</td><td>' + json.NomeUsuarioFederacao + '</td><td>' + json.LoginUsuarioFederacao + '</td></tr>');
                        });
                    }
                }
            });
        }
        else if (usuariosFrom == 'Sindicato') {

        } else if (usuariosFrom == 'Empresas') {

        }
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