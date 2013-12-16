var stringPath = "G:\\files\\data.xml";
var lastId = 0;
var lista = $("#lista");
var entde = null;

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
    Listar: function (page,entidade) {
        entde = entidade;
        $('#Entidade').val("");
        lista.empty();
        if (page == 'Usuarios' && entde != "") {
            console.log('#ListarUsuarios');
            $.ajax({
                url: '/Cadastros/ListarUsuarios',
                type: 'post',
                dataType: 'json',
                data: { entidade: App.getEntidade() , path: stringPath },
                success: function (json) {
                    if (json == null) {
                        console.log("");
                    } else {
                        $.each(eval(json), function (index, value) {
                            lista.append('<tr><td>' + json[index].UsuarioID +
                                        '</td><td>' + json[index].NomeUsuario +
                                        '</td><td>' + json[index].LoginUsuario +
                                        '</td><td><a href="javascript:;" onclick="App.openFrmEditarUsuario(' + json[index].UsuarioID + ')"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" onclick="App.deleterUsuario(' + json[index].UsuarioID + ')"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
                            $('#nextID').val(json[index].UsuarioID + 1);
                        });
                       
                    }
                }
            });
            $('#Entidade').val(App.getEntidade());
        } else if (page === 'SetorArea') {
            console.log('#ListarSetorAreas');
            lastId = 1;
            $('#nextID').val('');
            $.ajax({
                url: '/' + page + '/Listar',
                type: 'post',
                dataType: 'json',
                data: { path: stringPath },
                success: function (json) {
                    if (json == null) {
                        console.log("");
                    } else {
                        $.each(eval(json), function (index, value) {
                            lista.append('<tr><td>' + json[index].SetorAreaID + '</td><td>' + json[index].NomeSetorArea + '</td><td><a href="javascript:;" data-id="' + json[index].SetorAreaID + '" onclick="App.openFrmEditarCadastrarSetorArea(' + json[index].SetorAreaID + ')"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" onclick="App.deletarSetorArea(' + json[index].SetorAreaID + ')"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
                            console.log(json[index].SetorAreaID);
                            $('#nextID').val(json[index].SetorAreaID + 1);
                        });
                    }
                }
            });
        } else if (page === 'Cargos') {
            console.log('#ListarCargos');
            lastId = 1;
            $('#nextID').val('');
            $.ajax({
                url: '/Cadastros/ListarCargos',
                type: 'post',
                dataType: 'json',
                data: { path: stringPath },
                success: function (json) {
                    if (json == null) {
                        console.log("");
                    } else {
                        $.each(eval(json), function (index, value) {
                            lista.append('<tr><td>' + json[index].CargoID + '</td><td>' + json[index].NomeCargos + '</td><td>' + json[index]._SetorArea + '</td><td><a href="javascript:;" data-id="' + json[index].CargoID + '" onclick="App.openFrmEditarCargo(' + json[index].CargoID + ')"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" onclick="App.deletarCargo(' + json[index].CargoID + ')"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
                            console.log(json[index].CargoID);
                            $('#nextID').val(json[index].CargoID + 1);
                        });
                    }
                }
            });
        } else if (page === 'Empresas') {
            console.log('#ListarEmpresas');
            lastId = 1;
            $('#nextID').val('');
            $.ajax({
                url: '/Cadastros/ListarEmpresas',
                type: 'post',
                dataType: 'json',
                data: { path: stringPath },
                success: function (json) {
                    if (json == null) {
                        console.log("");
                    } else {
                        $.each(eval(json), function (index, value) {
                            lista.append('<tr><td>' + json[index].EmpresaID + '</td><td>' + json[index].NomeEmpresa + '</td><td>' + json[index].EmailEmpresa + '</td><td>' + json[index]._Sindicato + '</td><td><a href="javascript:;" data-id="' + json[index].EmpresaID + '" onclick="App.openFrmEditarEmpresa(' + json[index].EmpresaID + ')"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" onclick="App.deletarCargo(' + json[index].EmpresaID + ')"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
                            console.log(json[index].EmpresaID);
                            $('#nextID').val(json[index].EmpresaID + 1);
                        });
                    }
                }
            });
        }
    },
    getEntidade: function () {
        var url = $(location).attr('href');
        var urlSplited = $(location).attr('href').split('/');
        var urlSplitedLen = urlSplited.length;

        //console.log(url);
        //console.log(urlSplited);
        //console.log(urlSplited.length);
        //console.log(urlSplited[urlSplitedLen-1]);
        var entidade = urlSplited[urlSplitedLen - 1];

        return entidade;
    },
    openFrmCadastrarUsuario: function () {

        var html = '<h3>Cadastrar Usuário</h3><br/>';

        html += '<labe><b>Usuário<b></label><br/>'
        html += '<input type="text" id="NomeUsuario" name="NomeUsuario" /><br /><br />';

        html += '<labe><b>Login<b></label><br/>';
        html += '<input type="text" id="LoginUsuario" name="LoginUsuario" /><br /><br />';

        html += '<labe><b>Senha<b></label><br/>';
        html += '<input type="text" id="senha" name="senha" /><br /><br />';

        html += '<center><input type="button" id="btnCadastrarUsuario" onclick="App.cadastrarUsuario();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal()" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    openFrmEditarUsuario: function (id) {
        $.ajax({
            url: '/Cadastros/getUsuarioEntidade',
            type: 'post',
            dataType: 'json',
            data: { id: id, entidade: $('#Entidade').val(), path: stringPath },
            success: function (json) {

                var html = '<h3>Editar Usuário</h3><br/>';

                html += '<labe><b>Usuário<b></label><br/>'
                html += '<input type="text" id="NomeUsuario" name="NomeUsuario" value="' + json[0].NomeUsuario + '"/><br /><br />';

                html += '<labe><b>Login<b></label><br/>';
                html += '<input type="text" id="LoginUsuario" name="LoginUsuario" value="' + json[0].LoginUsuario + '"/><br /><br />';

                html += '<labe><b>Senha<b></label><br/>';
                html += '<input type="text" id="senha" name="senha" value="' + json[0].SenhaUsuario + '" /><br /><br />';

                html += '<center><input type="button" id="btnCadastrarUsuario" onclick="App.alterarUsuario(' + json[0].UsuarioID+');" value="Salvar"/> ';
                html += '<input type="button" id="btnCancelar" onclick="App.closeModal()" value="Cancelar"/></center>';
                App.openModal(html);
            }
        });
    },
    cadastrarUsuario: function () {
        console.log('#CadastrarUsuario');

        if (lastId != 0) {
            var new_id = lastId + 1;
            lastId = new_id;
        } else {
            var new_id = 1;
        }
        var _nome = $('#NomeUsuario').val();
        var _login = $('#LoginUsuario').val();
        var _senha = $('#senha').val();

          $.ajax({
                url: '/Cadastros/CadastrarUsuario',
                type: 'post',
                data: { id: $('#nextID').val(), nome: _nome, login: _login, senha: _senha, entidade: $('#Entidade').val(), path: stringPath },
                success: function () {
                    App.Listar('Usuarios', entde);
                    App.closeModal();
                }
            });
    },
    alterarUsuario: function (id) {

        var _nome = $('#NomeUsuario').val();
        var _login = $('#LoginUsuario').val();
        var _senha = $('#senha').val();

        $.ajax({
            url: '/Cadastros/AlterarUsuario',
            type: 'post',
            data: { id: id, nome: _nome, login: _login, senha: _senha, entidade: $('#Entidade').val(), path: stringPath },
            success: function () {
                App.Listar('Usuarios', entde);
                App.closeModal();
            }
        });
    },
    deleterUsuario: function (id) {
        $.ajax({
            url: '/Cadastros/DeletarUsuario',
            type: 'post',
            data: { id: id, entidade: $('#Entidade').val(), path: stringPath },
            success: function () {
                App.Listar('Usuarios', entde);
            }
        });
    },
    //SetorArea
    openFrmCadastrarSetorArea: function () {

        var html = '<h3>Cadastrar Setor/Área</h3><br/>';

        html += '<labe><b>Setor/Área<b></label><br/>'
        html += '<input type="text" id="setorArea" name="setorArea" /><br /><br />';

        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarSetorArea();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

        modal.open({ content: html });
    },
    openFrmEditarCadastrarSetorArea: function (id) {
        $.ajax({
            url: '../SetorArea/getSetorArea',
            type: 'post',
            dataType: 'json',
            data: { id: id, path: stringPath },
            success: function (json) {

                var html = '<h3>Editar Setor/Área</h3><br/>';
                html += '<labe><b>Setor/Área<b></label><br/>'
                html += '<input type="text" id="setorArea" name="setorArea" value="' + json[0].NomeSetorArea + '"/><br /><br />';

                html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.alterarSetorArea(' + json[0].SetorAreaID + ');" value="Salvar"/> ';
                html += '<input type="button" id="btnCancelar" onclick="App.closeModal()" value="Cancelar"/></center>';
                App.openModal(html);
            }
        });

    },
    alterarSetorArea: function (id) {
        $.ajax({
            url: '../SetorArea/Alterar',
            type: 'post',
            data: { id: id, name: $("input[name=setorArea]").val(), path: stringPath },
            success: function () {
                App.closeModal();
                App.Listar('SetorArea',null);
            }
        });
    },
    cadastrarSetorArea: function () {
        var lista = $('#lista');

        if (lastId != 0) {
            var new_id = lastId + 1;
            lastId = new_id;
        } else {
            var new_id = 1;
        }
        var setorArea = $('#setorArea').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        lista.append('<tr><td>' + $('#nextID').val() + '</td><td>' + setorArea + '</td><td><a href="javascript:;" data-id="' + new_id + '" onclick="App.openFrmEditarCadastrarSetorArea(' + $('#nextID').val() + ')"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" onclick="App.deletarSetorArea(' + new_id + ')"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
        $.ajax({
            url: '../SetorArea/Adicionar',
            type: 'post',
            data: { id: $('#nextID').val() , name: setorArea, path: stringPath },
            success: function () {
                console.log('Setor/Área adicionado.');
            }
        });
        App.closeModal();
    },
    deletarSetorArea: function (id) {
        $.ajax({
            url: '/SetorArea/DeletarSetorArea',
            type: 'post',
            data: { id: id, path: stringPath },
            success: function () {
                App.Listar('SetorArea', entde);
            }
        });
    },
    //Cargo
    openFrmCadastrarCargo: function () {

        var html = '<h3>Cadastrar Setor/Área</h3><br/>';

        html += '<labe><b>Setor/Área<b></label><br/>';
        $.ajax({
            url: '/Cadastros/obterSetorAreas',
            type: 'post',
            dataType: 'json',
            data: { path: stringPath },
            success: function (json) {
                if (json == null) { } else {
                    html += '<select id="setorArea" >';
                    html += '<option value="">Selecione...</option>';
                    $.each(eval(json), function (index, value) {
                        html += '<option value="' + json[index].NomeSetorArea + '">' + json[index].NomeSetorArea + '</option>';
                    });
                    html += '</select><br/><br/>';

                    html += '<labe><b>Cargo<b></label><br/>';
                    html += '<input type="text" id="cargo" name="cargo" /><br /><br />';

                    html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarCargo();" value="Cadastrar"/> ';
                    html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

                    modal.open({ content: html });
                }
            }
        });
       
    },
    openFrmEditarCargo: function (id) {
        $.ajax({
            url: '/Cadastros/getCargo',
            type: 'post',
            dataType: 'json',
            data: { id: id, path: stringPath },
            success: function (json) {

                var html = '<h3>Editar Cargo/Área</h3><br/>';
                if (json == null) { } else {
                    html += '<select id="setorArea" >';
                    html += '<option value="">Selecione...</option>';
                    $.each(eval(json), function (index, value) {
                        html += '<option value="' + json[index]._SetorArea + '">' + json[index]._SetorArea + '</option>';
                   
                    html += '</select><br/><br/>';

                    html += '<labe><b>Cargo<b></label><br/>';
                    html += '<input type="text" id="cargo" name="cargo" value="' + json[index].NomeCargos + '"/><br /><br />';
                    });
                    html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.alterarCargo('+id+');" value="Cadastrar"/> ';
                    html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

                    modal.open({ content: html });
                }
            }
        });
    },
    cadastrarCargo: function () {

        var lista = $('#lista');

        if (lastId != 0) {
            var new_id = lastId + 1;
            lastId = new_id;
        } else {
            var new_id = 1;
        }
        var cargo = $('#cargo').val();
        var setorArea = $('#setorArea').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        $.ajax({
            url: '/Cadastros/AdicionarCargo',
            type: 'post',
            data: { id: $('#nextID').val(), nome: cargo, setorArea: setorArea, path: stringPath },
            dataType: 'json',
            success: function () {
                App.Listar('Cargos', null);
                lista.append('<tr><td>' + new_id + '</td><td>' + cargo + '</td><td>' + setorArea + '</td><td><a href="javascript:;" data-id="' + $('#nextID').val() + '"><img src="../../Content/imagens/icones/b_edit.png" border="0" /></a> <a href="javascript:;" data-id="' + $('#nextID').val() + '"><img src="../../Content/imagens/icones/b_trash.png" border="0" /></a></td></tr>');
            }
        });
        App.closeModal();
    },
    alterarCargo: function (id) {
        $.ajax({
            url: '../Cadastros/AlterarCargo',
            type: 'post',
            data: { id: id, nome: cargo, setorArea: setorArea, path: stringPath },
            success: function () {
                App.closeModal();
                App.Listar('Cargos', null);
            }
        });
    },
    openFrmCadastrarEmpresa: function () {
        var html = '<h3>Cadastrar Empresa</h3><br/>';


        html += '<labe><b>Sindicato<b></label><br/>';
        html += '<select id="Sindicato" name="sindicato">';
        html += '<option value="GVBUS">GVBUS</option>';
        html += '<option value="GVBUS">TRANSCARES</option>';
        html += '</select><br/><br/>';
       
        html += '<labe><b>Empresa<b></label><br/>';
        html += '<input type="text" id="Empresa" name="empresa" /><br /><br />';

        html += '<labe><b>E-mail<b></label><br/>';
        html += '<input type="text" id="Email" name="email" /><br /><br />';

  
        html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.cadastrarEmpresa();" value="Cadastrar"/> ';
        html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';
        modal.open({ content: html });
    },
    openFrmEditarEmpresa: function (id){
        $.ajax({
            url: '/Cadastros/getEmpresa',
            type: 'post',
            dataType: 'json',
            data: { id: id, path: stringPath },
            success: function (json) {

                var html = '<h3>EditarEmpresa</h3><br/>';
                if (json == null) { } else {
                    html += '<labe><b>Sindicato<b></label><br/>';
                    html += '<select id="Sindicato" name="sindicato">';
                    html += '<option value="GVBUS">GVBUS</option>';
                    html += '<option value="TRANSCARES">TRANSCARES</option>';
                    html += '</select><br/><br/>';
                    $.each(eval(json), function (index, value) {


                        html += '<labe><b>Empresa<b></label><br/>';
                        html += '<input type="text" id="Empresa" name="empresa" value="'+json[index].NomeEmpresa+'"/><br /><br />';

                        html += '<labe><b>E-mail<b></label><br/>';
                        html += '<input type="text" id="Email" name="email" value="' + json[index].EmailEmpresa + '"/><br /><br />';
                    });
                    html += '<center><input type="button" id="btnCadastrarEmpresa" onclick="App.alterarEmpresa(' + id + ');" value="Cadastrar"/> ';
                    html += '<input type="button" id="btnCancelar" onclick="App.closeModal();" value="Cancelar"/></center>';

                    modal.open({ content: html });
                }
            }
        });
    },
    cadastrarEmpresa: function () {
        var lista = $('#lista');

        if (lastId != 0) {
            var new_id = lastId + 1;
            lastId = new_id;
        } else {
            var new_id = 1;
        }

        var empresa = $('#Empresa').val();
        var emailEmpresa = $('#Email').val();
        var empresaSindicato = $('#Sindicato').val();
        //var logomarca = $('#logomarcaEmpresa').val();

        $.ajax({
            url: '/Cadastros/AdicionarEmpresa',
            type: 'post',
            data: { id: $('#nextID').val(), nome: empresa, email: emailEmpresa, sindicato: empresaSindicato, path: stringPath },
            dataType: 'json',
            success: function () {
                App.Listar('Empresas', null);
         
            }
        });
        App.closeModal();
    },
    alterarEmpresa: function (id) { },
    openModal: function (html) {
        modal.open({ content: html });
    },
    closeModal: function () {
        modal.close();
    }
}