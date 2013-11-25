var App = {
    init: function () {
        $('#importar').exToData({ tipo: 'Sindicato' , data: $.toJSON(cadastros) });
    },
    efetuarLogin: function () {
        
        $.ajax({
            url: '/Login/Efetuarlogin',
            data: { usuario: $('#Usuario').val() , senha: $("#Senha").val() },
            type: 'POST',
            dataType: 'json',
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
    openFrmCadastrarSindicado: function () {

        var html = '<h3>Cadastrar Sindicato</h3><br/>';
            html += '<labe><b>Sindicato<b></label><br/>'
            html += '<form><input type="text" id="nomeSindicato" name="nomeSindicato" /><br /><br />';

            html += '<labe><b>Logomarca<b></label><br/>';
            html += '<input type="file" id="logoSindicato name="logomarca" /><br /><br />';
            
            html += '<center><input type="button" id="btnCadastrarSindicato" onclick="App.cadastrarSindicato();" value="Cadastrar"/> ';
            html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></form></center>';

        modal.open({ content: html });
    },
    cadastrarSindicato: function () {
        console.log("Cadastrar Sindicato");

        $.ajax({
            url: '../Cadastros/AdicionarSindicato',
            type: 'post',
            data: { nome: $('#nomeSindicato').val(), logo: 'logo.jpg' },
            success: function () {
                console.log('Sindicato adicionado.');
            }
        });
        App.closeModal();
    },
    openFrmCadastrarEmpresa: function () {

        var html = '<h3>Cadastrar Empresa</h3><br/>';
        html += '<labe><b>Sindicato<b></label><br/>';
        html += '<select id="sindicatoEmpresa" ><option value="GVBUS">GVBUS</option><option value="SETPES">SETPES</option><option value="TRANSCARE">TRANSCARE</option></select><br/><br/>';

        html += '<labe><b>Empresa<b></label><br/>'
        html += '<input type="text" id="nomeEmpresa" name="nomeEmpresa" /><br /><br />';

        html += '<labe><b>E-mail<b></label><br/>'
        html += '<input type="text" id="emailEmpresa" name="emailEmpresa" /><br /><br />';

        html += '<labe><b>Logomarca<b></label><br/>';
        html += '<input type="file" id="logoMarcaEmpresa" name="logomarca" /><br /><br />';

        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarEmpresa();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    cadastrarEmpresa: function () {

        var lista = $('#lista');

        var last_id = 0;

        var new_id = last_id + 1;
        var empresa = $('#nomeEmpresa').val();
        var email = $('#emailEmpresa').val();
        var sindicato = $('#sindicatoEmpresa').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        lista.append('<tr><td>' + new_id + '</td><td>' + empresa + '</td><td>' + email + '</td><td>' + sindicato + '</td><td><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        App.closeModal();
    },
    openFrmCadastrarfuncionario: function () {

        var html = '<h3>Cadastrar Funcionario</h3><br/>';

        html += '<labe><b>Empresa<b></label><br/>';
        html += '<select id="empresaFuncionario" ><option value="">Selecione...</option></select><br/><br/>';

        html += '<labe><b>Empresa<b></label><br/>'
        html += '<input type="text" id="nomeFuncionario" name="nomeFuncionario" /><br /><br />';

        html += '<labe><b>E-mail<b></label><br/>'
        html += '<input type="text" id="emailFuncionario" name="emailFuncionario" /><br /><br />';

        html += '<labe><b>Setor/Área - Cargo<b></label><br/>';
        html += '<select id="setorAreaCargoFuncionario" ><option value="">Selecione...</option></select><br/><br/>';

        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarEmpresa();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    cadastrarFuncionario: function () {

        var lista = $('#lista');

        var last_id = 0;

        var new_id = last_id + 1;
        var nome = $('#nomeFuncionario').val();
        var email = $('#emailFuncionario').val();
        var empresa = $('#empresaEmpresa').val();
        var setorAreaCargo = $('#setorAreaCargo').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        lista.append('<tr><td>' + new_id + '</td><td>' + nome + '</td><td>' + email + '</td><td>' + setorAreaCargo + '</td><td>' + empresa + '</td><td><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        App.closeModal();
    },
    openFrmCadastrarSetorArea: function () {

        var html = '<h3>Cadastrar Setor/Área</h3><br/>';

        html += '<labe><b>Setor/Área<b></label><br/>'
        html += '<input type="text" id="setorArea" name="setorArea" /><br /><br />';

        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarSetorArea();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    cadastrarSetorArea: function () {

        var lista = $('#lista');

        var last_id = 0;

        var new_id = last_id + 1;
        var setorArea = $('#setorArea').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        lista.append('<tr><td>' + new_id + '</td><td>' + setorArea + '</td><td><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        App.closeModal();
    },
    openFrmCadastrarCargo: function () {

        var html = '<h3>Cadastrar Setor/Área</h3><br/>';

        html += '<labe><b>Setor/Área<b></label><br/>';
        html += '<select id="setorArea" ><option value="">Selecione...</option></select><br/><br/>';

        html += '<labe><b>Cargo<b></label><br/>';
        html += '<input type="text" id="cargo" name="cargo" /><br /><br />';

        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarCargo();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    cadastrarCargo: function () {

        var lista = $('#lista');

        var last_id = 0;

        var new_id = last_id + 1;
        var cargo = $('#cargo').val();
        var setorArea = $('#setorArea').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        lista.append('<tr><td>' + new_id + '</td><td>' + cargo + '</td><td>' + setorArea + '</td><td><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        App.closeModal();
    },
    openFrmCadastrarUsuario: function () {

            var html = '<h3>Cadastrar Usuário</h3><br/>';
            html += '<labe><b>Usuário<b></label><br/>'
            html += '<input type="text" id="usuario" name="usuario" /><br /><br />';

            html += '<labe><b>Login<b></label><br/>';
            html += '<input type="text" id="login" name="login" /><br /><br />';

            html += '<labe><b>Senha<b></label><br/>';
            html += '<input type="text" id="senha" name="senha" /><br /><br />';
            
            html += '<center><input type="button" id="btnCadastrarSindicato" onclick="App.cadastrarUsuario();" value="Cadastrar"/> ';
            html += '<input type="button" id="btnCancelar" onclick="App.closeModal()" value="Cancelar"/></center>';

            modal.open({ content: html });
    },
    cadastrarUsuario: function () {

        var lista = $('#lista');

        var last_id = 0;

        var new_id = last_id + 1;
        var usuario = $('#usuario').val();
        var login = $('#login').val();
        var senha = $('#senha').val();

        lista.append('<tr><td>' + new_id + '</td><td>' + usuario + '</td><td>' + login + '</td><td><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a><a href="javascript:;" data-id="' + new_id + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        App.closeModal();

    },
    closeModal: function () {
        modal.close();
    }
}