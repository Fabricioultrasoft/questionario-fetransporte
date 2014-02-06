var usuarios = {
    'FETRANSPORTES': [
        {'nome':'Adriana Coelho Vieira', 'login':'adriana', 'senha':'adriana'},
        {'nome':'Livia Miranda', 'login':'livia', 'senha':'2012'}
    ],
   'Sindicato': [
       {'GVBus':[{'nome':'Ludmila Santos Vidal', 'login':'ludmila', 'senha':'ludmila'}]},
       {'TRANSCARES':[{'nome':'Mariana Benincá', 'login':'mariana.transcares', 'senha':'mariana'}]},
       {'SETPES':[{'nome':'Mauricí', 'login':'maurici.setpes', 'senha':'maurici'}]},
    ],
    'Empresa': [
       {'VIAÇÃO GRANDE VITÓRIA LTDA.':[{'nome':'Eliene Oliveira', 'login':'eliene.oliveira', 'senha':'eliene'}]},
       {'Serramar Transporte Coletivo LTDA.':[{'nome':'Giovana Narciso', 'login':'giovana', 'senha':'giovana'}]},
       {'RODOPLAN COMÉRCIO, TRANSP. PREST. SERVIÇOS LTDA':[{'nome':'Josiane Oliveira', 'login':'josiane.oliveira', 'senha':'123abc'}]},
       {'Floramar Auto Homnibus Ltda.':[{'nome':'Katiuscia Agulhari', 'login':'katiuscia.floramar', 'senha':'katiuscia'}]},
       {'Expresso Santa Paula LTDA.':[{'nome':'Katiuscia Agulhari', 'login':'katiuscia.floramar', 'senha':'katiuscia'}]},
       {'VIAÇÃO FLECHA BRANCA LTDA.':[{'nome':'Thiago Vanini', 'login':'thiago.vanini', 'senha':'vanini123'}]}           
    ],
};

var cadastros = {
    'Sindicato': ['GVBus','SETPES','TRANSCARES']/*Campo para subir a logo marca*/,
    'Empresa': [
        {'GVBus':[
            /*Campo para subir a logo marca*/
            {'nome':'Expresso Santa Paula LTDA.','email':'katiuscia.agulhari@gruol.com.br'},
            {'nome':'Floramar Auto Homnibus Ltda.','email':'katiuscia.agulhari@gruol.com.br'},
            {'nome':'Granvitur Fretamento e Turismo LTDA.','email':''}, 
            {'nome':'Metropolitana Transportes e Serviços LTDA.','email':''},
            {'nome':'Nova Transportes LTDA.','email':''},
            {'nome':'Santa Zita Transporte Coletivo LTDA.','email':''},
            {'nome':'Serramar Transporte Coletivo LTDA.','email':''},
            {'nome':'Teste Sa','email':'livia.rh@fetransportes.org.br'},
            {'nome':'Unimar Transportes LTDA.','email':''},
            {'nome':'Viação Netuno LTDA.','email':''},
            {'nome':'Viação Praia Sol LTDA.','email':''},
            {'nome':'Viação Satélite LTDA.','email':''},
            {'nome':'Viação Serrana LTDA.','email':''}
        ]}
    ],
    'Funcionario': [{}],
    'Setor/Área': ['Administrativo','Comercial','Contabilidade','Financeiro','Gestão de Pessoas','Manutenção','Operação'],
    'Cargo':[
        {'Administrativo':['Arrecadação','Compras','Serviços Gerais','Auxiliar/Assistente/Analista']},
        {'Comercial':['Bilheteiro','Vendedor Externo','Supervisor/Encarregado/Coordenador']},
        {'Contabilidade':['Analista','Assistente']},        
        {'Financeiro':['Analista','Assistente']},          
        {'Gestão de Pessoas':['Analista','Assistente','Auxiliar','Supervisor/Encarregado/Coordenador']},      
        {'Manutenção':['Abastecimento','Almoxarifado','ASG (Limpeza de frota)','Borracheiro','Eletricista','Lanterneiro','Manobra','Mecânico','Supervisor/Encarregado/Coordenador']},
        {'Operação':['Ajudante de carga e descarga','Assistente/Auxiliar de Tráfego','Cobrador','Conferente de carga','Fiscal','Motorista','Supervisor/Encarregado/Coordenador']}
    ]
};

(function($){
    
    $.fn.exToData = function(settings){
        var config = { 
            data: null,
            tipo: null,
            parent: null,
        };
        if(settings){ $.extend(config,settings); }
        
        this.click(function(){            
           //for(var item in jsonData){ 
                $.ajax({
                    url: 'ImportarDados',
                    type: 'POST',
                    data: { tipo: config.tipo, dados: config.data },
                    dataType: 'json',
                    success: function () {
                        console.log('Dados importados com sucesso.');
                    }
                });
            // }
        });
        
        return this;
    }
})(jQuery);