/*
	select * From Federacao	
	select * From Sindicatos
	select * From Empresas 

*/
Begin tran
	Insert Into Federacao ( Descricaofederacao ) Values ( 'FETRANSPORTES' )
Commit

Begin tran
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'GVBUS', 1 )
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'SETPES', 1 )
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'TRANSCARES', 1 )
	
	Begin Tran
	Insert Into UsuariosFederacao (NomeUsuarioFederacao,LoginUsuarioFederacao ,SenhaUsuarioFederacao ,Federacao_FederacaoID) Values ('Edilene', 'Edilene', 'Edilene',1)
	Insert Into UsuariosFederacao (NomeUsuarioFederacao,LoginUsuarioFederacao ,SenhaUsuarioFederacao ,Federacao_FederacaoID) Values ('Adriana', 'Adriana', 'Adriana',1)
	Insert Into UsuariosFederacao (NomeUsuarioFederacao,LoginUsuarioFederacao ,SenhaUsuarioFederacao ,Federacao_FederacaoID) Values ('Livia', 'Livia', 'Livia',1)
Commit

Begin tran 
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONS�RCIO CENTRO SUL' , 'Empresa l�der: Via��o Praia Sol', '', '', 'Vila Velha', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONS�RCIO CIDADANIA', 'Empresa l�der: Serramar', '', '', 'Serra', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONS�RCIO SERRA','Empresa l�der: Unimar', '', '','Serra', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SANTA PAULA','', 'Rua 1 D, n� 178 A Lote III', 'Civit II','Serra','ES',1, '29168064')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GRANVITUR FRETAMENTO E TURISMO LTDA','','Rod. Serafim Derenze, 2715','Grande Vit�ria','Vit�ria','ES', 1, '29031319')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('METROPOLITANA TRANSPORTES E SERVI�OS LTDA','','Rua Galdino Ferraz,10','Vila Independ�ncia', 'Cariacica','ES',1,'29148610')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('NOVA TRANSPORTE LTDA','','Rua Padre Leandro Del Ommo, S/n�', 'S�o Francisco', 'Cariacica','ES',1,'29145405')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('SANTA ZITA TRANSPORTES COLETIVOS LTDA','','Av.Hozack Ferreira Brante, s/n', 'Marc�lio de Noronha','Viana','ES',1,'29135000')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('SERRAMAR TRANSPORTE COLETIVO LTDA','','Terceira Avenida, 355','Jardim Limoeiro','Serra','ES',1,'29163666')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O NETUNO LTDA','','Rod. Jos� Sette, Km 7,5','Vila Tabajara','Cariacica','ES',1,'29154580')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O PRAIA SOL LTDA','','Rua Humberto Lorenzutti, s/n','N. Sra. Da Penha', 'Vila Velha','ES',1,'29110180')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O SAT�LITE LTDA','','Rod. Jos� Sette, Km 7,5','Vila Tabajara','Cariacica','ES',1,'29154580')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O SERRANA LTDA','','Rua 1 D n� 178 A Lote III','Civit II','Serra','ES',1,'29168064')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VEREDA TRANSPORTE COLETIVO LTDA','','Rua Linhares, s/n�', 'Nossa Senhora da Penha','Vila Velha','ES',1,'29127206')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('Unimar Transportes Ltda','', 'Rua Cel. Manoel Nunes, 475', 'Laranjeiras','Serra','ES',1,'29162155')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ALVORADA SUL AMERICA DE TURISMO - ASAT','Rua Francisco Vieira Passos, 441 A','Muqui�aba','Guarapari','ES',2,'29200000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ARARA AZUL TURISMO LTDA','Av. Lourival Nunes, 700','Jardim Limoeiro','Serra','ES',2,'29164050')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CORDIAL TRASNPORTE E TURISMO LTDA','Rua Francisco Vieira Passos, 441 A','Guaxindiba','Aracruz','ES',2,'29190000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('COSTA SUL TRASNPORTE E TURISMO LTDA','Rod. Frederico Augusto Coser, 200', 'Aeroporto', 'Cachoeiro de Itapemirim', 'ES',2,'29314400')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO ARACRUZ LTDA','Rod. Aracruz Barra do Riacho km 1,5', 'Moroba', 'Aracruz', 'ES', 2, '29190000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('LUZA TRANSPORTES E TURISMO LTDA - ME','Rua Cel Darcy Pacheco de Queiroz, 141','Sotema', 'Cariacica','ES',2,'29152140')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('MARLIM AZUL TURISMO LTDA�EPP','Br 101- Km 262, s/n','Laranjeiras Velha','Serra','ES',2,'29165681')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('MINASTUR - TRANSPORTES TURISMO LTDA','Rua Fazenda do Ouro, cax postal 21','Centro','Manhumirim','MG',2,'36970000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('REIS TRANSPORTES LTDA','Av. Jones Santos Neves, 62','Maria Ortiz','Cachoeirio de Itapemirim','ES',2,'29300500')	
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('TRANSITUR TRANSPORTE COLETIVO LTDA ME','Rod Br 101 Norte, km 265 - sala 106','Carapina','Serra','ES',2,'29160470')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('TRANSPORTES COLETIVOS S�O CIPRIANO LTDA','Av. Nove de Agosto, 2289','Centro','Jaguar�','ES',2,'29950000')	
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('UNIMAR TRANSPORTES LTDA','Rua Cel Manoel Nunes, 475','Laranjeiras Velha','Serra','ES',2,'29162155')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O �GUIA BRANCA S/A','Rodovia BR 262, km 05','Campo Grande','Cariacica','ES', 2, '29140905')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O ALVORADA LTDA','Rua Ernesto Canal, 200','Alvorada','Vila Velha','ES',2,'29154000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O FLECHA BRANCA LTDA','Av. Nossa Senhora da Consola��o, 64','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O GRANDE VIT�RIA LTDA','Rod. Serafim Derenzi, 2415','Inhangueta','Vit�ria','ES',2,'29031600')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O ITAPEMIRIM S/A','Rod. Br 262 - Km 03','Campo Grande','Cariacica','ES',2,'29140501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O JOANA DARC S/A','Av. Silvio Avidos, 1680','S�o Silvano','Colatina','ES',2,'29706010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O JOANA DARC S/A - FILIAL','Av. Prefeito Samuel Batista Cruz, s/n�','Tr�s Barras','Linhares','ES',2,'29907380')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O MARILANDIA LTDA','Rua Uceucino Malta Bauer, 425','Lace','Colatina','ES',2,'29703020')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O MUTUM PRETO LTDA','Rua Jos� Martins da Silva, 310','Bairro Boa F�','Afonso Claudio','ES',2,'29600000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O PRETTI LTDA','Rua Jo�o Pretti, 95','S�o Silvano','Colatina','ES',2,'29706060')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O REAL ITA LTDA','Av. Jones Santos Neves, 146','Maria Ortiz','Cachoeiro de Itapemirim','ES',2,'29300500')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O SANREMO LTDA','Av. Ernesto Canal, 200','Alvorada','Vila Velha','ES',2,'29117120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O SANTA LUZIA LTDA','Av. Nossa Senhora da Consola��o, 64','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O S�O GABRIEL LTDA','Rua Pernambuco,653','Posto Esso','S�o Mateus','ES',2,'29931560')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O S�O ROQUE LTDA','Rua Fioravanti Rossi, 670','S�o Bras','Colatina','ES',2,'29703810')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O SUDESTE LTDA','Av. Nossa Senhora da Consola��o, 70','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O TABUAZEIRO LTDA','Rod. Br 101 Norte, km 8,5','Jardim Tropical','Serra','ES',2,'29075050')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIA��O VERDES VALES LTDA','Rua Jos�  Martins Silva, 310','Boa F�','Afonso Claudio','ES',2,'29600000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIX  LOG�STICA S/A','Av. Jer�nimo Vervloet, 275','Goiabeiras','Vit�ria','ES',2,'29070350')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('A. J. VIEIRA TRANSPORTE E COMERCIO LTDA','Localidade de Crubixa','Zona Rural','Iconha','ES',3,'29280000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('A. L. MONTEIRO TRANSPORTES EPP','R. Pedro Zangranzi, 360','Esc. Virtual 02','Jardim Limoeiro','ES', 3,'29164020')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('AGUIA ASSISTENCIA AUTOMOTIVA 24 H LTDA','Rua Independ�ncia n� 169','Rosario de F�tima','Serra','ES',3,'29161101')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('�GUIA BRANCA LOG�STICA LTDA','Rod. br 262, km 5','Campo Grande','Cariacica','ES',3,'29140905')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ALESAT COMBUST�VEIS S/A','Av. dante Michelini, n� 5500','Jardim Camburi','Vit�ria','ES',3,'29090070')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('AQCES LOG�STICA NACIONAL LTDA','Rod. Norte Sul, n�308','Rosario Fatima','Serra','ES',3,'29161172')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ATENDER RIO TRANSPORTES LTDA (TRANSMARONI)','Rua Buenos Aires, 104 LJ 03','Ara�as','Vila Velha','ES',3,'29103010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BASE TRANSPORTES E LOG�STICA LTDA','Av. Acesso Rodovi�rio, s/n','Tim/QD 09/mod02/03','Serra','ES',3,'29161376')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BATISTA COMERCIAL LOG�STICA REPRES. LTDA','Av. Darly Santos, n�4680','Ara��s','Vila Velha','ES',3,'29103091')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BAYER TRANSPORTES LTDA EPP','R. S�o Paulo, n�10, Qd 11','Marcilio de Noronha','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASIL CARGO TRANSPORTES LTDA ME','Rua Santa Clara - s/n�, lotes 07 a 16 -  Quadra 02','Loteamento Simer','Vila Bethania','ES',3,'')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASIL REAL LOG�STICA E TRANSPORTES LTDA','Rod Br 101 norte, KM291, s/n','Contorno','Nova Valverde','ES',3,'29151814')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASPRESS TRANSPORTES URGENTES LTDA','Rua Atalydes Moreira de Souza, 1656','CIVIT I','Serra','ES',3,'29168055')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRENDA TRANSPORTES LTDA','Av. Gov. Valadares, n�3, Quadra 65','Marc�lio de Noronha','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CACHOEIRO TRANSPORTES LTDA EPP','Rod. Engenheiro Fabiano Vivacqua, n�2115','Safra','Cachoeiro de Itapemirim','ES',3,'29315025')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CAITE TRANSPORTES LTDA','Av. Prefeito Samuel Batista Cruz, n 1923,','Centro','Linhares','ES',3,'29900515')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CAPIXABALOG TRANSPORTES E LOG�ST. LTDA ME','Estrada Marc�lio de Noronha, s/n�','Guaritas','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGA PESADA ENG� E TRANSP. LTDA','RODOVIA BR 262 - KM 10 - S/N�','BAIRRO AREINHA','VIANA','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGOLUX TRANSPORTES LTDA ME','Rod. BR 262 km 5,5, s/n','S�o Francisco','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGOLUX LOG�STICA LTDA','Rod. BR 262 km 5,5, s/n','S�o Francisco','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CENTRONORTE ARMAZENS GERAIS LTDA Matriz','R. Vale do Rio Doce, n�60','Porto de Santana','Cariacica','ES',3,'29153078')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CEREAIS DO NICO LTDA (TRANSPORTES DO NICO)','R. Ip�, n�15','Movelar','Linhares','ES',3,'29906120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CHEIM TRANSPORTES S.A.','Rod. Br 101 Norte - Km 12','Carapina','Serra','ES',3,'29160042')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CICLO TRANSPORTES LTDA','Rua E - s/n','Campo Verde','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CLAC IMPORTA��O E EXPORTA��O LTDA','Rod. BR 101 Norte- KM 265 - s/n','Laranjeiras Velha','Serra','ES',3,'29162122')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('COL CENTROESTE LOG�STICA LTDA','Rua mestre Gomes - n� 613','Gl�ria','Vila Velha','ES',3,'29100320')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONFIAN�A MUDAN�AS E TRANSPORTES','LTDA Av. Luiz Silva, 37-A','Cobilandia','Vila Velha','ES',3,'29111175')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CORPUS SANEAMENTO E OBRAS LTDA','Rua S�o Sebasti�o n�. 70','Resist�ncia','Vit�ria','ES',3,'29030738')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DARCY TRAVAGLIA  ME','Rua Jo�o Sasso, s/n','S�o Geraldo','Cachoeiro de Itapemirim','ES',3,'29314650')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DICASTELLI TRANSPORTES LTDA - EPP','R. Ecologista Chico Mendes, n�482','Santa Barbara','Castelo','ES',3,'29360000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DIRECIONAL TRANSP. E LOG�STICA LTDA','Rod BR262 km4,5','Vila Capixaba','Cariacica','ES',3,'29148022')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DUCLORO IND COM TRANSP. REP. LTDA','Rua dos Coelhos � s/n','Jardim Limeiro','Serra','ES',3,'29163105')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('E S TRANSPORTES LTDA -ME','Rua Galdino Ferraz n� 90 Trevo do Contorno de Vit�ria','Vila Independ�ncia � Pr�ximo a Vit�ria Diesel','Cariacica','ES',3,'29148610') 
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ECOS TRANSPORTES E SERVI�OS  LTDA','Av. Brigadeiro Eduardo Gomes, 501 sala02','Jardim Limoeiro','Serra','ES',3,'29164072')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ELO TRANSPORTES LTDA','Rod. Br 101 Norte Km 254','Posto Esso','Serra','ES',3,'29176015')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EMPRESAS DE TRANSPORTES ATLAS LTDA','Rod. Br 101 Norte Km 263 s/n�','Laranjeiras','Serra','ES',3,'29162010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EMPRESAS DE TRANSPORTES PAJU�ARA','Rod Br 262 - Km 06  - s/n','S�o Franciso','Cariacica','ES',3,'29241409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EWALD COM�RCIO E TRANSPORTES LTDA','Rua Um � Quadra A � Lotes 16/19','Flamengo','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO JUNDIA�  S�O PAULO LTDA','Rua S�o Jorge, n� 05','Campo Grande','Cariacica','ES',3,'29140501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO LIMEIRA DE VIA��O','Rod. BR 101-Norte, n� 2930 � Km 291','Contorno Nova Valverde','Cariacica','ES',3,'29151815')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SERRANO LTDA','Rod. Br 262  Km 5,5','Campo Grande','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SANTANA LTDA','Rua Estrada de Capuaba,n�483','Ilha das Flores','Vila Velha','ES',3,'29115486')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO VILA VELHA LOG�STICA LTDA ME','End.: Av. Muqui , N�1021','Praia de Itaparica','Vila velha','ES',3,'29102190')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('FADEL TRANSPORTES E LOG�STICA LTDA','Br 101 Km 290 s/n','Tabajara - Contorno','Cariacica','ES',3,'29154501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('FT TRANSPORTES LTDA','Rua Bela Vista, n�96','Industrial','Vila Velha','ES',3,'29118710')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('G D TRANSPORTES E REPRESENTA��O','LTDA Rua Jo�o Calmon, 992','Centro','Linhares','ES',3,'29900120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GIORI TRANSPORTES LTDA','Rod. Br 101 - Km 291- n� 90','Nova valverde','Cariacica','ES',3,'29151815')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GOLD COM�RCIO E TRANSPORTES LTDA','Rod Br 262 � Km 09','Primavera','Viana','ES',3,'29350000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GPS CORRETORA e ADM de SEGS LTDA','Av. Nossa Sra dos Navegantes, 675 - 4� andar  Ed Palacio do Caf�','Enseada do Su�','Vit�ria','ES',3,'29050912')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GSV TRANSPORTE E COM. DE GASES LTDA','Rodovia do Contorno � Km 9,5','Bairro Morro Grande','Cach. Itapemirim','ES',3,'29300970')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HIPER EXPORT TERMINAIS RETROPORTU�RIOS S.A','Estrada  do Cais de Capuaba, 1500','lha das Flores','Vila Velha','ES',3,'29119000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HORTIGIL HORTIFRUTI S/A','R. Edson Bonadiman,n� 45','S�o Francisco','Cariacica','ES',3,'29145450')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HUMAR TRANSPORTES LTDA','Rua 4 - Esquina c/ a rua 4-a s/n','Civit II','Serra','ES',3,'29160970')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ILHA AZUL PARTICIPA��ES ADM. CONSULT. CORRET. DE SEGUROS LTDA','AV.Nossa Senhora da Penha,n�1506, Loja 01 Ed. Praia Flat','Santa L�cia','Vit�ria','ES',3,'29045400')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('INTERLOG TRANSPORTES E LOG. LTDA','Rua Costa Rica n� 43 - Sala 101','Jardim Am�rica','Cariacica','ES',3,'29140280')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('INTERPORT LOG�STICA LTDA','Rodovia Darly Santos, 4723','Nossa Sra da Penha','Vila Velha','ES',3,'29110340')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J.  ALVES LOG�STICA  LTDA  EPP','Rua Piracicaba n� 219','Jardim Marilandia','Vila Velha','ES',3,'29112170')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J.CALLENZANE & CIA LTDA','Rua Vicente Burian - 207','Camar�','Serra','ES',3,'29173080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J C LIMA E CIA LTDA','Rua Ronilson Queiroz J�nior, s/n�','Portal de Anchieta','Anchieta','ES',3,'29330000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('JM COM�RCIO DE HORTIFRUTI LTDA- ME(COMERCIAL BARBA)','Rodovia BR262, s/n','Vila Capixaba','Cariacica','ES',3,'29145906')
Commit

('JAMEF TRANSPORTES LTDA','Margens da BR 262, s/n�, KM 9','Primavera','Viana','ES',3,'29135000') 
('KR TRANSPORTES e LOG�STICA LTDA','Rodovia ES 010, n� 4.255 -A','Jardim Limoeiro','Serra','ES'3,'29164043')
('L B T TRANSPORTES LTDA','Rod do Caf� 0 Km 01 - 590','Carlos G. Nauman','Colatina','ES',3,'29705200')
('LIDER LOG�STICA DE TRANSPORTES LTDA','Av. Dos Camaras, n945','Santo Antonio','Cariacica','ES',3,'29156837')
('LOG�STICA E TRANSPORTE FIOROT LTDA','Av. Gra�a Aranha � n� 45','S�o Torquato','Vila Velha','ES',3,'29114330')
('LOG�STICA VERA CRUZ LTDA- ME','Rua Vicente Sant�rio Fantine - 64','Vera Cruz','Cariacica','ES',3,'29146786')
('MA TRANSPORTES LTDA  ME','Av. Francisco Mardegam, n� 123','Aeroporto','Cachoeiro de Itapemirim','ES',3,'29314100')
('MSC MEDITERRANEAN LOGISTICA LTDA (MEDLOG)',' Av. Carlos Lindemberg, s/n','Nossa Senhora da Penha','Vila Velha','ES',3,'29110902')
('M G TRANSPORTES E LOG�STICA LTDA (Expresso Uni�o)',' Av.Ana Merotto Stefanon, n� 30','Cobil�ndia','Vila Velha','ES',3,'29111630')
('MRJS LOG�STICA E TRANSPORTES LTDA (SS LOG�STICA)',' R. Athalides Moreira de Souza, n�140, lt 2, Qd 3','Civit I','Serra','ES',3,'29168055')
('MAROVIC TRANSPORTES LTDA',' Rod. BR 101, km 267, s/n','Jardim Limoeiro','Serra','ES',3,'29164038')
('MEGA TRANSPORTES E SERVI�OS LTDA ME',' Rua Trindade, 100','Nova Bethania','Viana','ES',3,'29135000')
('MEGALOG LOG�STICA E TRANSPORTES LTDA',' R. Porto Alegre, s/n','Alterosa','Serra','ES',3,'29165973')
('MELTEX JOY COMERCIO DE CONFEC��ES LTDA',' Rod. Br 101 s/n Km 290','Tabajara','Cariacica','ES',3,'29151300')
('MILA TRANSPORTES LTDA Rod',' Br 262 - Km 09','Marcilio de Noronha','Viana','ES',3,'29135000')
('MIRAMAR PRODUTOS ALIMENT�CIOS LTDA',' Av. Fernando Ferrari, 1.700','Goiabeiras','Vit�ria','ES',3,'29075050')
('MULTILIFT LOGISTICA LTDA',' Av. Vale do Rio Doce , s/n','Porto Velho','Cariacica','ES',3,'29150970')
('NESAC TRANSPORTES LTDA ME',' Rua Angelo Zani, S/N  Sala 09 ','Mucuri',,'Cariacica','ES',3,'29148622')
('�MEGA TRANSPORTES E SERVI�OS LTDA',' Estrada de Capuaba, 1258','Ilha da Concei��o','Vila Velha','ES',3,'29115830')
('PAGANINI MATERIAL DE CONSTRU��O LTDA',' Av. Cel. Ant�nio Duarte, 155','Centro','Iconha','ES',3,'29280000')
('PATRUS TRANSPORTES URGENTES LTDA',' Rod.Br.101/262 � Km 13,5','Parque Industrial','Viana','ES',3,'29135000')
('PIANCA TRANSPORTES E TURISMO LTDA','Rua Francisco Sim�es Borges, n�109','Vila Nova','Aracruz','ES',3,'29190000')
('PEDRA BRANCA TRANSPORTES LTDA Rod','Br 101 km 210 - n�08','Pedra Branca','Ibira�u','ES',3,'29670000')
('PORTO SEGURO LOG�STICA E TRANSPORTES LTDA','Rod. Carlos Lindemberg, n 6231, Sala 106','Cobil�ndia','Vila Velha','ES',3,'29111865')
('PREMIER SERVI�OS E TRANSPORTES LTDA-ME','R. Santa Tereza, n� 189, Vila Independ�ncia','Cariacica','ES',3,'29148604')
('R�PIDO TRANSPAULO LTDA','Rua Alfredo Galeno � n� 01 � Caixa Postal: 045058','Nova Zel�ndia','Serra','ES',3,'29.175.703')
('RAPID�O COMETA TRANSPORTE E LOGISTICA SA','Av. Talma Rodrigues Ribeiro - 1.765 - Portal de Jacara�pe','Serra','ES',3,'29173-795')
('RBE TRANSPORTES E SERVI�OS LTDA','Rod. BR 101 Norte, s/n� km  210 s/n Cx Postal 25','Pedra Branca','Ibira�u','ES',3,'29670000')
('RODAGASES TRANSPORTES LTDA   ME (FRISSO TRANSPORTES LT)','End. Correspond�ncia: Rua O, s/n�','S�o Diogo I','Serra','ES',3,'29163269')
('RODOLOG TRANSPORTES MULTIMODAIS LTDA (RODOFLY)','Rua Atalydes Moreira de Souza - 964','Civit I','Serra','ES',3,'29168055')
('RODOMETAL TRANSPORTES E SERV. LTDA  (METALOSA)','Rod. do Caf� � KM 02 � C�rrego do Ouro','Colatina','ES',3,'29705200')
('RODOPLAN COM�RCIO, TRANSP. PREST. SERVI�OS LTDA','Rod Br 262, s/n�, Km 8, Vila Bethania','Viana','ES',3,'29135160')
('RODOVI�RIO L�DER LTDA','Rodovia Br 101 - Km 292','Vila Idepend�ncia','Cariacica','ES',3,'29148-640')
('ROTA BRASIL TRANSPORTES E LOGISTICA LTDA','Rod. Br 101, Km 374','Uni�o','Iconha','ES',3,'29280000')
('ROTA DO SOL TRANSPORTADORA LTDA','Rod. Br 101/262, Km 12,7','Ribeira','Viana','ES',3,'29135000')
('S RODRIGUES TRANSPORTES LTDA ME','Rod. BR 101 Norte, s/n �km 291','Nova Valverde','Cariacica','ES',3,'29151815')
('SL TRANSPORTES e LOG�STICA LTDA','Nova Quality Log�stica Rua Messias Gon�alves Correia , N� 9','N. Sr� da Penha','Vila Velha','ES',3,'29110080')
('SMG TRANSPORTES LTDA','Rua Jo�o Cipriano, 19','Maria Ortiz','Cachoeiro de Itapemirim','ES',3,'29301560')
('SL TRANSPORTES e LOG�STICA LTDA Nova Quality Log�stica','Rua Messias Gon�alves Correia N� 9','N. Sr� da Penha','Vila Velha','ES',3,'')
('SMG TRANSPORTES LTDA','Rua Jo�o Cipriano, 19','Maria Ortiz','Cachoeiro de Itapemirim','ES',3,'29301560')
('SAULO TRANSPORTES LTDA','Rua Engenheiro Jos� Him�rio, 27','Campo Grande','Cariacica','ES',3,'CEP 29146-460'
('SALEIO TRANSPORTES SANTOS TRANSPORTADORA E LOG�STICA','Rua Estrada de Catuaba ,SL05, n�21','Ata�de','Vila Velha','ES','29119060')
('SERMAVIL LOCA��O E MONTAGENS LTDA','Rua Comendador Sim�o Helon - N� 1055','Civit','Serra','ES',3,'29168090')
('SHAMAH TRANSPORTES E SERVI�O INTERMODAL LTDA-ME','Av. Vit�ria Regia, 1729, loja 02','Jardim Colorado','Vila Velha','ES','29104590')
('SILVEROL LOCA��ES LTDA - EPP','Rua Jo�o Arcari - 13 A','Timbu�','Fund�o','ES',3,'29185000')


/***
('TAF TRANSPORTES E LOG�STICA LTDA ME   (ALE LOG�STICA)','R. Leila Diniz, n 1100','Novo M�xico','Vila Velha','ES',3,'29104070'

('T.L TRANSPORTES E LOG�STICA LTDA ROD','BR 262/101 - KM12, s/n','Ribeira','Viana','ES','29135000'
('TEGMA LOG�STICA INTEGRADA S.A','Estrada do contorno - s/n - Km 281','Porto Engenho','Cariacica','ES','29158001'
('TNT MERC�RIO CARGAS E ENCOMENDAS. S.A','Rod. BR 262, km 14','Ribeira','Viana','ES','29135000'
('TODA CARGA TRANSPORTES LTDA','Rod. Br 101 - km 294  Contorno','Cariacica','ES','29146970'
('TODAVIA LOG�STICA E TRANSPORTES LTDA Rua Neves Armond � 174','Praia do Su�','Vit�ria','ES','29052280'
('TOP TRANS DISTRIBUI��O E LOG�STICA LTDA',' Rua 6 B, Lote 12, quadra 14','Civit ll','Serra','ES','29168085'
('TRANSABRIL TRANSPORTADORA ABRIL LTDA','Rua Ac�cio Godim - 426','Jardim Limoeiro','Serra','ES','29164010'
('TRANSBIAZATTI TRANSPORTES E LOG�STICA LTDA','Rod Gether Lopes de Farias n� 2600 - Terreo, KM 7','Carlos Germano Naumann','Colatina','ES','29705200'
('TRANSCACHOEIRO TRANSP. CARGAS LTDA EPP','Rua Juvenal R. Santos � 49 / 51','Agostinho Simonato','Cachoeiro Itapemirim-ES','ES','29311-741'
('TRANSCAMPO TRANSPORTADORA CAMPO LTDA','Rua dos Artistas � s/n','Oper�rio','Cariacica','ES','29146970'
('TRANSPEDROSA S.A','Rua Dom Bosco s/n','Cachoeira do Campo','Ouro Preto','MG',3,'35410000'

('TRANSCHERRER TRANSPORTADORA LTDA','Rod Jos� Sette - s/n','S�o Jo�o Batista','Cariacica','ES','29156315'

('TRANSDTA TRANSP. E ASSES. EM COM. EXT. LTDA ME','Estrada de Capuaba n� 93','Salas 101/02','Ataide','Vila Velha','ES','29119060'
('TRANSGLEIDE TRANSPORTES ( TG - TRANSPORTADORA BRASIL)','Rua Cassimiro de Abreu, 261','Planalto Carapina','Serra','ES','29162707'
('TRANSGLEIDE TRANSPORTES DE CARGAS LTDA','Rod. Br 101 Norte Km 267 - s/n','Carapina','Serra','ES','29161340'
('TRANSILVA TRANSPORTES E LOG�STICA LTDA','Rod. BR 101 Norte Contorno, S/N, km 283','Porto Engenho','Cariacica','ES','29159001'
('TRANSJ�IA TRANSPORTADORA J�IA LTDA','Rua Braulina Baptista Lopes, 265','Manoel Plaza','Serra','ES','29160765'
('TRANSLUZ TRANSPORTADORA LTDA ME','S�tima Avenida, n 115, Loja B','Cobil�ndia','Vila Velha','ES','29111220'
('TRANSMAGNO TRANSP. RODOVIARIOS LTDA',' Rod. Darly Santos, s/n','Jardim Asteca','Vila Velha','ES','29104491'
('TRANSMENDES TRANSPORTES LTDA','R. Antonio Vieira, n�17','Santo Antonio','Cachoeiro de Itapemirim','ES','29300650'
('TRANSPEDRA TRANSPORTES LTDA','Rod. Br 101 - Norte - Contorno s/n - km 291','Nova Valverde','Cariacia','ES','29151815'
('TRANSPORTADORA AMERICANA LTDA','Rod Br 262, Km 1306','Calabou�o','Viana','ES','29135000'
('TRANSPORTADORA BELMOK LTDA','Rua Idalino de Carvalho S/N','Areinha','Viana','ES','29135000'
('TRANSPORTADORA CALEZANE LTDA','Rod. Vit�ria /Jacara�pe, Km 02','Jardim Limoeiro','Serra','ES','29160-970'
('TRANSPORTADORA COLATINENSE LTDA','Rua 4, n�460','Civit II','Serra','ES','29168077'
('TRANSPORTADORA CONTINENTAL LTDA','Rod. Carlos Lindemberg, n� 1990','Cobil�ndia','Vila Velha','ES','29110001'
('TRANSPORTADORA DE S� LTDA','Rod. Br 262, Km 46 � s/n � Posto BR � Caixa Postal: 33','Centro','Marechal Floriano','ES','29255000'
('TRANSPORTADORA FIOROT LTDA','Rua  An�sio Jos� Sim�es, 30','S�o Torquato','Vila Velha','ES','29114350'
('TRANSPORTADORA INTERPORT LTDA','End. Rod. Carlos Lindenberg SL 18, N�4723 - A','Vila Velha','ES','Nossa Senhora da Penha','29110400'
('TRANSPORTADORA JOLIVAN LTDA MATRIZ','Av. Danilo M. de Castro, 816','Centro','Iconha','ES','29280000'
('TRANSPORTADORA M.M.A  LTDA','Rua 06 - D, s/n�','Civit II','Serra','ES','29168024'
('TRANSPORTADORA POUPE PESO LTDA ME','Av. Fernando Ferrari - 3627','Jabour','Vit�ria','ES','29075053'

('TRANSPORTADORA SOUZA REIS LTDA','R. Carioca, n�132, Rosario de F�tima','Serra','ES','29161195'

('TRANSPORTADORA TRAVAGLIA LTDA ME','Rua Jo�o Sasso, n�299','S�o Geraldo','Cachoeiro de Itapemirim','ES','29314650'

('TRANSPORTADORA TRANSFINAL LTDA','Rod. Br 101 � Km 296 - s/n�','Nova Valverde','Cariacica','ES','29146970'

('TRANSPORTADORA WINSTON LTDA','Rua Euclides da Cunha - 41','Para�so','Cachoeiro de Itapemirim','ES','29300130'

('TRANSPORTES ARIANE LTDA','Rod. BR 262 � Km 8,3','Guaritas','Viana','ES','29135000'

('TRANSPORTE EXCELSIOR LTDA','Av. Copacabana, s/n, Morada das Laranjeiras','Serra','ES','29166820'

('TRANSPORTES FS LTDA','Rod. ES - 010 - km 2,5','Jardim Limoeiro','Serra','ES','29164140'

('TRANSPORTES FIOROTI LTDA','Rua Severino Zanol n� 135','Planalto de Carapina','Serra','ES','29162726'

('TRANSPORTES HAVARIO LTDA ME','Rua 09 - Qda 13 - Lote 05 - N� 05','Arlindo Vilasch','Viana','ES','29135000'

('TRANSPORTES ICONHA LTDA','Av. Danilo Monteirode Castro, n� 278','Centro','Iconha','ES','29280000'


('TRANSPORTES M.A.L.U LTDA (MALU TRANSPORTES)','Av. Central, s/n, Campo Verde CEP:29135-000 - Viana/ES	Viana
('TRANSPORTES SEM LIMITE LTDA ME','Rua Am�rica - 500 - Campo Grande Cep: 29150-790 - Cariacica - ES	Cariacica
('TRANSPORTES SERVI�OS E REPRESENTA��ES TENORIO LTDA  ME','Rua Rosa Vermelha, 777 - Novo M�xico Cep: 29104 - 030 - Vila Velha ES Vila Velha


('TRANSPAPINHA TRANSP. LOG. ARMAZENAGEM LTDA R. Orlando Caliman, n� 275, Jardim Camburi  Vit�ria/ES - CEP: 29.090-220 n� Caixa postal: 19246 Endere�o para correspondencia: Av� Brasil, n� 1322 � Sala 07, Novo Horizonte - Serra  -  ES CEP: 29.163-331 - P�tio Posto Novo Horizonte (Bandeira Ipiranga)
('TRANSPOSUL TRANSPORTES LTDA Rua Maranh�o, n�10, Jardim Am�rica, CEP:29140-482 - Cariacica/ES	Cariacica
('TRANSUI�A LOCA��O E PRESTA��O DE SERVI�OS LTDA Rua Geraldo Del Puppo s/n Lotes 11 e 13 quadra VII � CIVIT II � SERRA - ES - CEP 29.168-074 ( Ao lado da empresa Perfilados Rio Doce )
('TRANSZERO TRANSPORTADORA DE VE�CULOS LTDA Av. Civit I, 497 - Bairro Civit I - Serra - ES - CEP: 29168-045"	Serra
('TRES TRANSPORTES LTDA Rod. BR 101, km265, s/n, Laranjeiras Velha Serra/ES CEP: 29162-122	Serra
('TRESELES TRANSPORTE DE CARGAS LTDA (PRETTI CARGAS) Rua 06 D � Quadra XIII D Civit II �CEP:29168-070 � Serra/ES"	SERRA
('TRD TRANSPORTE E LOG�STICA Rua Guard�nia, n�112 - Serra Dourada II - Serra - ES - Cep: 29171-239"	Serra	
('TURRA & ARTILLES LTDA R. Samuel Meira Brasil, n� 95, Gleba L Taquara II - CEP: 29.166.800 - Serra/ES
('UNIENG LOG�STICA LTDA Rua Antonio Velozo de Azevedo s/n � Jardim Limoeiro � Serra-ES � Cep: 29164-066 Serra
('USIFAST LOG�STICA INDUSTRIAL S/A Rod. BR 101 Norte - 2320 - Sala: 08 - KM 267,73 - S�o Geraldo - Serra - ES - CEP: 29.163-387 - Posto Planalto ( em frente a Hiunday )                                                                                                                                                                   Caixa Postal 040-099 - Av. Presidente Castelo branco, n�1460 � Carapina - Serra � ES - CEP 29160-970	Serra
('VANAMA TRANSPORTES LTDA Rod. Governador Jos� Henrique Sete n� 01 � Bairro: Planeta � Cariacica-ES  Cep: 29156-775	Viana
('VINHEDOS TRANSPORTES LTDA Rua Nove � Lote 07 � Quadra 13 � s/n � Loteamento Arlindo Vilaschi - Viana � ES  - CEP 29135-000 Viana
('VIRC COMERCIO E TRANSPORTES LTDA Rodovia Br 262 - Km 6,5 - Loja 09 - Pavilh�o 02 Ceasa  Cep: 29145-906 - Cariaca ES	Cariacica
('VIX LOG�STICA S/A Av. Jer�nimo Vervloet, n� 275 - Goiabeiras  Vit�ria - ES   CEP 29070-350	Vit�ria
('WALDEMIRO BERGER - TRANSPORTES BERGER Rodovia. Afonso Schwab - km 01 - Santa Maria de Jetib� � ES  CEP  29645-000 	Santa Maria de Jetib�
('WID TRANSPORTES LTDA Av. Marechal Humberto de Alencar, n 1311, Cobil�ndia - CEP: 29111-500 - Vila Velha/ES	Vila Velha
('WINSTON TRANSPORTES LTDA Rua Euclides da Cunha - 33 � Para�so - Cachoeiro de Itapemirim � ES CEP 29304-130 Cachoeiro de Itapemirim
('WORK TRANSPORTES LTDA Rua Coelho Neto, 93 - Jardim Limoeiro Cep: 26164 - 045 - Serra ES Serra
('YPIRANGA TRANSP.  PESADOS LTDA-ME Rua Estrada Cais de Capuaba, 999 - Sl 03 Ilha das Flores - Vila Velha - Cep: 29115-486 Vila Velha
	
