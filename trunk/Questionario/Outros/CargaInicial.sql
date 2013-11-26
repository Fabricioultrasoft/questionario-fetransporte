
select * from estados
select * from cidades
select * from bairro
select * From Sindicatos
select * From Empresas 
/*
Delete from estados
Delete from cidades
Delete from bairro
Delete From Sindicatos
Delete From Empresas 

DBCC CHECKIDENT('estados', RESEED, 1)
DBCC CHECKIDENT('cidades', RESEED, 0)
DBCC CHECKIDENT('bairro', RESEED, 0)
DBCC CHECKIDENT('Sindicatos', RESEED, 0)
DBCC CHECKIDENT('Empresas', RESEED, 0)
*/
Begin tran 
--ESTADOS
	Insert Into Estados 
	(UF, NomeEstado)
	Values
	('ES',	'ESPÍRITO SANTO')
Commit	

Begin Tran
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('LINHARES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VITÓRIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COLATINA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CARIACICA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA VELHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GUARAPARI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SERRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('DOMINGOS MARTINS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PÊSSEGO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ARACRUZ', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARECHAL FLORIANO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('AFONSO CLÁUDIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONCEIÇÃO DO CASTELO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITARANA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VIANA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAPEMIRIM', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BLUMENAU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VIRGINIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MONTANHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA TEREZA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ÁGUA DOCE DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PANCAS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('FUNDÃO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO GABRIEL DA PALHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ANCHIETA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VENDA NOVA DO IMIGRANTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONCEIÇÃO DA BARRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('TEIXEIRA DE FREITAS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ICONHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VARGEM ALTA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CASTELO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('UBU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('NOVA VENÉCIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO MATEUS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BELO HORIZONTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA DO CONDE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BAIXO GUANDU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BARRA DE SÃO FRANCISCO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAQUARI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COBILÂNDIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IBIRAÇU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('JOÃO NEIVA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PIÚMA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA LEOPOLDINA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MUNIZ FREIRE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IUNA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MIMOSO DO SUL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GUAÇUI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IBATIBA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARILÂNDIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAGUAÇU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONQUISTA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALEGRE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALFREDO CHAVES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BOM JESUS DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BAUNILHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BOA ESPERANÇA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('RIO NOVO DO SUL', 	 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO DOMINGOS DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA TERESA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('JERÔNIMO MONTEIRO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MANGUINHOS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO MIGUEL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO JOSÉ DOS CALÇADOS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PEDRO CANÁRIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARATAÍZES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PINHEIROS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SÃO ROQUE DO CANAÃ', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ECOPORANGA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA MARIA DE JETIBÁ', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MANTENÓPOLIS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MIMOSO DO SUL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('APIACÁ', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PARAJU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CACHOEIRO DE ITAPEMIRIM', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('LARANJA DA TERRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA VALÉRIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('RIO BANANAL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALTO RIO NOVO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GOVERNADOR LINDENBERG', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MUCURUCI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PARIS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('DIVINO SÃO LOURENÇO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COQUEIRAL DE ARACRUZ', 	1	)
Commit	

Begin Tran 
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTÔNIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DOS AIRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ADALBERTO SIMÃO NADER' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRO VERMELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO GONÇALO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO BELO I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANDRÉ CARLONI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DOS REIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AVISO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DOURADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO BELO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRAL DE CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ROMÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO MARINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHAS VERDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO MARINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA INÊS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA PALESTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BICANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BEBEDOURO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA VITALI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RUBIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRESIDENTE MÉDICI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO SILVANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BUBÚ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO C' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA AZUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DE FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ORIENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PRAIA DA CONCHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FIORAVANTE MARINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RETIRO DO CONGO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO DE SANTANA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO NOVO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBI DE BAIXO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESPLANADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DE SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM AMÉRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NEVES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'UNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO DE CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOÃO GOULART' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARIACICA SEDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARGARIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AGRÍCOLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO BRASIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOSÉ RODRIGUES MACIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DO PERPÉTUO SOCORRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TERRA VERMELHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITANHANGÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TRÊS BARRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONSOLAÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTRELA DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DE ALÁH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBIAPABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OPERÁRIOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ASTECA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REPÚBLICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPINHO DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE CONTINENTAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAGRADA FAMÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POR DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO FRADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ESPERANÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LACÊ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MORADA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NAZARÉTH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BONFIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE ENCANTADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OLÍVIO ZANOTELLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LUIZ IGLÉSIAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA SORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA NÍOBE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DEL PORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOSÉ MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FRADINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHÁCARA KAJÓ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO FRANCISCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTAL DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRIMEIRO DE MAIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUPARANÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COCAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA DAS GRAÇAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA CANAÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DA ESPERANÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPINA GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VASCO DA GAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABARAÍ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MARACANÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ULYSSES GUIMARÃES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PEROCÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TUCÚM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANGUE SECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHÁCARA PARREIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVINO ESPÍRITO SANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUCURÍ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GRAÚNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO B' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO VELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA ÁSIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA OCEANIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITARARÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAQUARÍ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTÔNIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM COLORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO RESIDENCIAL DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTÔNIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PIRANEMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'EURICO SALLES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANOEL PLAZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM LAGUNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABOUR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO DE CARIACICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POR DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO GERALDO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANDORINHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMURUGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOCKEY DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACARAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BENTO FERREIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARGOLAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MORADA DE CAMPO GRANDE II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO GABRIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABURU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA DE COLARES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HONORIO FRAGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO DIOGO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZARÉTH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DAS FLORES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALPARAÍSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MERLO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IMOBILIÁRIA CAPIXABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TAQUARAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO JUCU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MOACIR BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA AMÉRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOL NASCENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DO TUBARÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA AMÉLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TUBARÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTÔNIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE ITAPOÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA FÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MÔNICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARIBIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS VELHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZEIRO DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANTÔNIO FERREIRA BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VERA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLAR DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOSÉ DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE JACARAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO DOMINGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA AMÉRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPINHO DA SERRA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORTE SÃO JOÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM TROPICAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO MÉXICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA VALVERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TABUAZEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVINÓPOLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA CAPIXABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MARILÂNDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRISTÓVÃO COLOMBO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARCELONA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORMATE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BRISAMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ESPERANÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO MORENO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA ÁFRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGOA DO MEIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBILÂNDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA PRUDÊNCIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'KUBITSCHEK' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IPIRANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CORDOVIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTANA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA CASCATA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATAÍDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL COQUEIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RETIRO SAUDOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ZELÂNDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PATRÍCIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HÉLIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÓLON BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALVORADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONQUISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COROADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'UNIVERSITÁRIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS  II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOÃO BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DAS CAIEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO EMPRESARIAL REGIÃO METROPOLITANA GRANDE VITÓRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SEGURANÇA DO LAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHÁCARA LITORÂNEA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOM BOSCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARAÇÁS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MÔNICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL CAMPINA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA BÁRBARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DA AREIA PRETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEIÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MESTRE ÁLVARO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CRISTÓVÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO MORRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESISTÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUANABARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INHANGUETÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAGRADO CORAÇÃO DE JESUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITABEPUSSU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA BRASÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RAUL GIUBERTTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DA JUSSARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIVIERA DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTEMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA DOURADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA MÔNICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUCUTUQUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AEROPORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHÁCARA MARINGÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SHELL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOUTOR PEDRO FEU ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ROSA DA PENHA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE SANTA FÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA GARRIDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE RESIDENCIAL LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO GERALDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TERESINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BOTÂNICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA LENIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IPESSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CEASA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAÇAROCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARAÇÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PRIMAVERA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDRÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DE FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BANDEIRANTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO QUADRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLUMBIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA COSTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DO VALE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FLEXAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO GERALDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO MARCOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBI DE CIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÍTIO BATALHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE RESIDENCIAL DE TUBARÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO BENEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO ENGENHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLAR DE VÊNUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DO SUÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LINHARES V' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ADÉLIA GIUBERTTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHICÓPOLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OPERÁRIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO PORTO CANOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DOS BENTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO PRÍNCIPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARTINELLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SETIBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PADRE GABRIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SALAMINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PIEDADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO ATALAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CATARINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA BELA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DE MONTE BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONDUSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO FONTE GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TABAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE NACIONAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA INDEPENDÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTELÂNDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO CAVALIERI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO NOVO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUÍZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATALAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUADALAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CONRADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO MARCOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLATINA VELHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ROSA DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL TIRADENTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AYRTON SENNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GRANDE VITÓRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANTÔNIO HONÓRIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO BRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO ALTO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA PALESTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OLARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO CANOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM SÃO PAULO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ELDORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TAQUARAS I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO BENEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VINTE E TRÊS DE MAIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS RECIFES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AMARELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ISMENIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DARLY SANTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE GRAMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPENDÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRAMARES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEIÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO EXPEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARUÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM SANTA ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITANGUÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE GRAMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUADALUPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA SEDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALPARAÍSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MEAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PAUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CONRADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REDENÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGOA FUNDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM LIMOEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO SUÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FLOR DO CAMPO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ROSA DA PENHA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AREINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA RITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITACIBÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEIÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO DOS PÁSSAROS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDRÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA AURORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LIMÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO TORQUATO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALECRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZAMENTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOSÉ DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARATOÍRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALAGOANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDUSTRIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PROLAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LÚCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA EUROPA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARGARIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DA CONCEIÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA REAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTRELINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CANTO FELIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GAROTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUQUIÇABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DA LAGOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABURUNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PLANALTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PEDRO MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACUNEM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA PRAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GLÓRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ISABEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO LOURENÇO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARLOS GERMANO NAUMANN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FLÓRIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIAMANTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPOÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANGELO FRECHIANE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SALAMIN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PÊSSEGO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ITAPOÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIRGINÓPOLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARIACICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AREINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ZELINDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONSOLAÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ÁGUA DOCE DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARILÂNDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SITIO CORREA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARACÊ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM RESPLENDOR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TEERÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CURITBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEIÇÃO DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'TEIXEIRA DE FREITAS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZ DO CAMPO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS PADRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GLÓRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TOCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA INTERLAGOS I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'APICUM DO POÇO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUADALAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS ANDORINHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DAS PALMAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIO CIPRESTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARATI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'UBU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CRISTOVÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE WASHINGTON' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DA GRAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXADA GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DO CONDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA DO CONDE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOM JOÃO BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTHIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLON BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA ITANHANGÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARREIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARCÍLIO DE NORONHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO SA SEREIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS CASTANHEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAPUCAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITARARÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BETÂNIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIRICU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO DA SEREIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA DE FORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIVIT I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA COMPRIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CRISTÓVÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO BOI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONSTANTINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBIRAÇU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELANDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO ITAPEBUSSU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MÔNICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIVIT II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA DE DENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOÃO DE VIÇOSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOMBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHÁCARA DO CRICARÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA PELADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECÍLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUAÇUI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBATIBA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO AGOSTINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEIÇÃO DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DO RIACHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARILÂNDIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUAÇUI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM SÃO JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONCEIÇÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PANCAS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARINGÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALEGRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MUNIZ FREIRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PALMITAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JOÃO NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA IZABEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE ALVERNE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PINDOBAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEIÇÃO DO CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUCÚ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDUSTRIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS III' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO CRISTOVÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SITIO VALE DA TRANQUILIDADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ATLÂNTICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE SÃO FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE REIS MAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TREM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RONCADOR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARUÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE ITAÚNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEIÇÃO DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA MAR AZUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IRMÃOS FERNANDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE SÃO FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLATINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARAREMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALEGRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HÉLIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATAÍDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARACATIBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IRIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BETÂNIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RESIDENCIAL SAMARCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUCURATÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO DOMINGOS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARACRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO CLOTARIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JOÃO NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA LANDINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE SÃO FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CORREGO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARGARETH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA COSTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JERÔNIMO MONTEIRO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO SAUÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO ATAPOÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MANGUINHOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORTE DE SÃO JOÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DR. ARTHUR GERHARDT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM AMÉRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INHANGUETÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MOACIR BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ACAIACA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PIÚMA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO JOSÉ DOS CALÇADOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AGRIMENSOR ADOLPHO DE OLIVEIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTÂNCIA MONAZÍTICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JEQUITIBÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PIÚMA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PEDRO CANÁRIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DO ECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO FRANCISCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILMERITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATAÍZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IDEAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO SEBASTIÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ECOPORANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA VENÉCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BEIRA RIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO ROQUINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO ROQUE DO CANAÃ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DAS LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATLÃNTICA VILLE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAPUBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACARAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE FATIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HELIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA FÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POTIGUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDREZINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO MIGUEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZARETH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BANDEIRAS PAMPULHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMPESTRE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MIMOSO DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BANDEIRANTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOÃO DUARTE MANSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'QUEIMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTABELLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OURO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ÁGUA FUNDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVINO ESPÍRITO SANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ECOPORANGA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA MARIA DE JETIBÁ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALEGRE DE RIO PRETO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALDEIA GILBERTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ZONA RURAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ERECINA PAGIOLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOÍDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECILIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PINHEIROS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DE ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATAÍZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUAÇUI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MONTANHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BURITIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITARANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PEDRO CANÁRIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DE JACARAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTONIO DO CANAÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PROVIDENCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPOCÚ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTONIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO NOVO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUCU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'APIACÁ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PINHEIROS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE POMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARAJU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COHAB' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DISTRITO DE ACIOLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JOÃO NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOÃO XXIII' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PAULO DO ARACE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO DIGO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO DIOGO I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO RIACHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'EXPEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUANDÚ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'QUINCAS MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUAÇUI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA PRAIA III' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COSTA E SILVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GILBERTO MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIBEIRO FUNDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTELITA COELHO MARINS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTÔNIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARNALDO BASTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LARANJA DA TERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO FRANCISCO DE ASSIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AQUIDABAN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OURIMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PICADÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO ROQUE DO CANAÃ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO SEBASTIÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO ROQUE DO CANAÃ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIBEIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA BALEIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAXIXE QUENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL DO BOSQUE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE ALTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IMIGRANTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE JACARAÍPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILANTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VITÓRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXO GUANDU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ASCENSÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RUBIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PALMEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CÓRREGO DO OURORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DE MANGARAI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAROL DE SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBITIQUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMBÚ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MONTANHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOSÉ DAS TORRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MONTANHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IGUAPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOQUEI DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ARACRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA BRASILIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERNAMBI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA ESPERANÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO PONTAL DO IPIRANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO SEBASTIÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO BANANAL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOAPABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DAS VIRTUDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALTO RIO NOVO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DO SUÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO TIAGO DE TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FERROVIÁRIOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CACHOEIRA ALTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CACU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BRASIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUIZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPENDÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO JOÃO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXO BANANAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITARANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA DOURADA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABOUR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ADÉLIA GILBERT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POLIVALENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM JANDIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ICONHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOM JESUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS NAMORADOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SISQUINI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPENDÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BOM JESUS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IUNA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FERREIRA VALLE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IUNA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OSÉAS NETTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ELDORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUAÇUI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GOVERNADOR LINDENBERG'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIMIEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELHANOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BENJAMIN CARLOS DOS SANTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VALÉRIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO MATEUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAIMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CALUGY' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CALOGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SUMARÉ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXA ITÁLIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ZONA RURAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO PONGAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAIPAVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REIS MAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DE CARLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FEU ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE SERRA PELADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CLÁUDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BNH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAMBE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE SÃO FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO DIOGO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DISTRITO DO ALTO DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUNDÃO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE CASTELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARAÍSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CÓRREGO DA ALEGRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARILÂNDIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ICONHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BURARAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALVORADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANÍCIE DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AEROPORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SUÁ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGO DOS CISNE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CÓRREGO DO ALCINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO DOMINGOS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPUÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUANDU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO MUTUM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARBADOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JOÃO NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDINS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DA JUSTIÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARADA CRISTAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JERÔNIMO MONTEIRO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARTHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATAÍZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIMINAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO DO NORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA RITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COURO DOS MONOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO NOVO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTORNO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÍTIO SANTA ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUAÇU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARRAIAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATAÍZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARAGUAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO COQUE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPUÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LIMOEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTANHA RESIDENCIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNEÁRIO AREIA BRANCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL NOBRE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'WALDIR FURTADO DE AMORI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO SEBASTIÃO DO NORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MONTANHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARCILIO DIAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEIÇÃO DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ECOPORANGA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DAS PALMEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BASILEIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZARE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FILOMENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VENÉCIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTEROSAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO BARREIROS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO CARDEAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIMIEIRO CALOGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA PIRAEN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPENDÊNCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACIGUA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIRI SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA DE CIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JOÃO NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SÃO PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA PENHA-CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VITÓRIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUSTIÇA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATAPOÃ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MANGUINHOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ESPERANÇA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DO ROSÁRIO DE FÁTIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PATRIMÔNIO DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DIVINO SÃO LOURENÇO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA VALVERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARUABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE CRISTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHOCOBRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO JUCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO JUCU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTONIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA ISABEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACARATIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ICONHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COQUEIRAL DE ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DOS PINHEIROS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SEGATTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAUAÇU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORNO VELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SÃO MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DOS CASTELHANOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Commit



Select * From Sindicatos


Begin tran
	Insert Into Federacao ( Descricaofederacao ) Values ( 'FETRANSPORTES' )
Commit


Begin tran
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'GVBUS', 1 )
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'SETPES', 1 )
	Insert Into Sindicatos ( NomeSindicato, Federacao_federacaoid ) Values ( 'TRANSCARES', 1 )
Commit

/**************************************************************************************************
***************************************************************************************************
***************************************************************************************************/

Begin tran 
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONSÓRCIO CENTRO SUL' , 'Empresa líder: Viação Praia Sol', '', '', 'Vila Velha', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONSÓRCIO CIDADANIA', 'Empresa líder: Serramar', '', '', 'Serra', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONSÓRCIO SERRA','Empresa líder: Unimar', '', '','Serra', 'ES', 1, '' )
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SANTA PAULA','', 'Rua 1 D, nº 178 A Lote III', 'Civit II','Serra','ES',1, '29168064')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GRANVITUR FRETAMENTO E TURISMO LTDA','','Rod. Serafim Derenze, 2715','Grande Vitória','Vitória','ES', 1, '29031319')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('METROPOLITANA TRANSPORTES E SERVIÇOS LTDA','','Rua Galdino Ferraz,10','Vila Independência', 'Cariacica','ES',1,'29148610')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('NOVA TRANSPORTE LTDA','','Rua Padre Leandro Del Ommo, S/nº', 'São Francisco', 'Cariacica','ES',1,'29145405')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('SANTA ZITA TRANSPORTES COLETIVOS LTDA','','Av.Hozack Ferreira Brante, s/n', 'Marcílio de Noronha','Viana','ES',1,'29135000')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('SERRAMAR TRANSPORTE COLETIVO LTDA','','Terceira Avenida, 355','Jardim Limoeiro','Serra','ES',1,'29163666')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO NETUNO LTDA','','Rod. José Sette, Km 7,5','Vila Tabajara','Cariacica','ES',1,'29154580')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO PRAIA SOL LTDA','','Rua Humberto Lorenzutti, s/n','N. Sra. Da Penha', 'Vila Velha','ES',1,'29110180')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SATÉLITE LTDA','','Rod. José Sette, Km 7,5','Vila Tabajara','Cariacica','ES',1,'29154580')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SERRANA LTDA','','Rua 1 D nº 178 A Lote III','Civit II','Serra','ES',1,'29168064')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VEREDA TRANSPORTE COLETIVO LTDA','','Rua Linhares, s/nº', 'Nossa Senhora da Penha','Vila Velha','ES',1,'29127206')
Insert Into Empresas ( NomeEmpresa, Observacao,  Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('Unimar Transportes Ltda','', 'Rua Cel. Manoel Nunes, 475', 'Laranjeiras','Serra','ES',1,'29162155')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ALVORADA SUL AMERICA DE TURISMO - ASAT','Rua Francisco Vieira Passos, 441 A','Muquiçaba','Guarapari','ES',2,'29200000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ARARA AZUL TURISMO LTDA','Av. Lourival Nunes, 700','Jardim Limoeiro','Serra','ES',2,'29164050')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CORDIAL TRASNPORTE E TURISMO LTDA','Rua Francisco Vieira Passos, 441 A','Guaxindiba','Aracruz','ES',2,'29190000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('COSTA SUL TRASNPORTE E TURISMO LTDA','Rod. Frederico Augusto Coser, 200', 'Aeroporto', 'Cachoeiro de Itapemirim', 'ES',2,'29314400')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO ARACRUZ LTDA','Rod. Aracruz Barra do Riacho km 1,5', 'Moroba', 'Aracruz', 'ES', 2, '29190000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('LUZA TRANSPORTES E TURISMO LTDA - ME','Rua Cel Darcy Pacheco de Queiroz, 141','Sotema', 'Cariacica','ES',2,'29152140')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('MARLIM AZUL TURISMO LTDA EPP','Br 101- Km 262, s/n','Laranjeiras Velha','Serra','ES',2,'29165681')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('MINASTUR - TRANSPORTES TURISMO LTDA','Rua Fazenda do Ouro, cax postal 21','Centro','Manhumirim','MG',2,'36970000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('REIS TRANSPORTES LTDA','Av. Jones Santos Neves, 62','Maria Ortiz','Cachoeirio de Itapemirim','ES',2,'29300500')	
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('TRANSITUR TRANSPORTE COLETIVO LTDA ME','Rod Br 101 Norte, km 265 - sala 106','Carapina','Serra','ES',2,'29160470')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('TRANSPORTES COLETIVOS SÃO CIPRIANO LTDA','Av. Nove de Agosto, 2289','Centro','Jaguaré','ES',2,'29950000')	
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('UNIMAR TRANSPORTES LTDA','Rua Cel Manoel Nunes, 475','Laranjeiras Velha','Serra','ES',2,'29162155')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO ÁGUIA BRANCA S/A','Rodovia BR 262, km 05','Campo Grande','Cariacica','ES', 2, '29140905')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO ALVORADA LTDA','Rua Ernesto Canal, 200','Alvorada','Vila Velha','ES',2,'29154000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO FLECHA BRANCA LTDA','Av. Nossa Senhora da Consolação, 64','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO GRANDE VITÓRIA LTDA','Rod. Serafim Derenzi, 2415','Inhangueta','Vitória','ES',2,'29031600')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO ITAPEMIRIM S/A','Rod. Br 262 - Km 03','Campo Grande','Cariacica','ES',2,'29140501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO JOANA DARC S/A','Av. Silvio Avidos, 1680','São Silvano','Colatina','ES',2,'29706010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO JOANA DARC S/A - FILIAL','Av. Prefeito Samuel Batista Cruz, s/nº','Três Barras','Linhares','ES',2,'29907380')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO MARILANDIA LTDA','Rua Uceucino Malta Bauer, 425','Lace','Colatina','ES',2,'29703020')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO MUTUM PRETO LTDA','Rua José Martins da Silva, 310','Bairro Boa Fé','Afonso Claudio','ES',2,'29600000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO PRETTI LTDA','Rua João Pretti, 95','São Silvano','Colatina','ES',2,'29706060')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO REAL ITA LTDA','Av. Jones Santos Neves, 146','Maria Ortiz','Cachoeiro de Itapemirim','ES',2,'29300500')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SANREMO LTDA','Av. Ernesto Canal, 200','Alvorada','Vila Velha','ES',2,'29117120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SANTA LUZIA LTDA','Av. Nossa Senhora da Consolação, 64','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SÃO GABRIEL LTDA','Rua Pernambuco,653','Posto Esso','São Mateus','ES',2,'29931560')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SÃO ROQUE LTDA','Rua Fioravanti Rossi, 670','São Bras','Colatina','ES',2,'29703810')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO SUDESTE LTDA','Av. Nossa Senhora da Consolação, 70','Vila Rica','Cachoeiro de Itapemirim','ES',2,'29301080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO TABUAZEIRO LTDA','Rod. Br 101 Norte, km 8,5','Jardim Tropical','Serra','ES',2,'29075050')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIAÇÃO VERDES VALES LTDA','Rua José  Martins Silva, 310','Boa Fé','Afonso Claudio','ES',2,'29600000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('VIX  LOGÍSTICA S/A','Av. Jerônimo Vervloet, 275','Goiabeiras','Vitória','ES',2,'29070350')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('A. J. VIEIRA TRANSPORTE E COMERCIO LTDA','Localidade de Crubixa','Zona Rural','Iconha','ES',3,'29280000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('A. L. MONTEIRO TRANSPORTES EPP','R. Pedro Zangranzi, 360','Esc. Virtual 02','Jardim Limoeiro','ES', 3,'29164020')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('AGUIA ASSISTENCIA AUTOMOTIVA 24 H LTDA','Rua Independência nº 169','Rosario de Fátima','Serra','ES',3,'29161101')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ÁGUIA BRANCA LOGÍSTICA LTDA','Rod. br 262, km 5','Campo Grande','Cariacica','ES',3,'29140905')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ALESAT COMBUSTÍVEIS S/A','Av. dante Michelini, nº 5500','Jardim Camburi','Vitória','ES',3,'29090070')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('AQCES LOGÍSTICA NACIONAL LTDA','Rod. Norte Sul, nº308','Rosario Fatima','Serra','ES',3,'29161172')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ATENDER RIO TRANSPORTES LTDA (TRANSMARONI)','Rua Buenos Aires, 104 LJ 03','Araças','Vila Velha','ES',3,'29103010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BASE TRANSPORTES E LOGÍSTICA LTDA','Av. Acesso Rodoviário, s/n','Tim/QD 09/mod02/03','Serra','ES',3,'29161376')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BATISTA COMERCIAL LOGÍSTICA REPRES. LTDA','Av. Darly Santos, nº4680','Araçás','Vila Velha','ES',3,'29103091')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BAYER TRANSPORTES LTDA EPP','R. São Paulo, nº10, Qd 11','Marcilio de Noronha','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASIL CARGO TRANSPORTES LTDA ME','Rua Santa Clara - s/nº, lotes 07 a 16 -  Quadra 02','Loteamento Simer','Vila Bethania','ES',3,'')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASIL REAL LOGÍSTICA E TRANSPORTES LTDA','Rod Br 101 norte, KM291, s/n','Contorno','Nova Valverde','ES',3,'29151814')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRASPRESS TRANSPORTES URGENTES LTDA','Rua Atalydes Moreira de Souza, 1656','CIVIT I','Serra','ES',3,'29168055')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('BRENDA TRANSPORTES LTDA','Av. Gov. Valadares, nº3, Quadra 65','Marcílio de Noronha','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CACHOEIRO TRANSPORTES LTDA EPP','Rod. Engenheiro Fabiano Vivacqua, nº2115','Safra','Cachoeiro de Itapemirim','ES',3,'29315025')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CAITE TRANSPORTES LTDA','Av. Prefeito Samuel Batista Cruz, n 1923,','Centro','Linhares','ES',3,'29900515')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CAPIXABALOG TRANSPORTES E LOGÍST. LTDA ME','Estrada Marcílio de Noronha, s/nº','Guaritas','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGA PESADA ENGª E TRANSP. LTDA','RODOVIA BR 262 - KM 10 - S/Nº','BAIRRO AREINHA','VIANA','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGOLUX TRANSPORTES LTDA ME','Rod. BR 262 km 5,5, s/n','São Francisco','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CARGOLUX LOGÍSTICA LTDA','Rod. BR 262 km 5,5, s/n','São Francisco','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CENTRONORTE ARMAZENS GERAIS LTDA Matriz','R. Vale do Rio Doce, nº60','Porto de Santana','Cariacica','ES',3,'29153078')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CEREAIS DO NICO LTDA (TRANSPORTES DO NICO)','R. Ipê, nº15','Movelar','Linhares','ES',3,'29906120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CHEIM TRANSPORTES S.A.','Rod. Br 101 Norte - Km 12','Carapina','Serra','ES',3,'29160042')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CICLO TRANSPORTES LTDA','Rua E - s/n','Campo Verde','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CLAC IMPORTAÇÃO E EXPORTAÇÃO LTDA','Rod. BR 101 Norte- KM 265 - s/n','Laranjeiras Velha','Serra','ES',3,'29162122')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('COL CENTROESTE LOGÍSTICA LTDA','Rua mestre Gomes - n° 613','Glória','Vila Velha','ES',3,'29100320')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CONFIANÇA MUDANÇAS E TRANSPORTES','LTDA Av. Luiz Silva, 37-A','Cobilandia','Vila Velha','ES',3,'29111175')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('CORPUS SANEAMENTO E OBRAS LTDA','Rua São Sebastião nº. 70','Resistência','Vitória','ES',3,'29030738')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DARCY TRAVAGLIA  ME','Rua João Sasso, s/n','São Geraldo','Cachoeiro de Itapemirim','ES',3,'29314650')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DICASTELLI TRANSPORTES LTDA - EPP','R. Ecologista Chico Mendes, nº482','Santa Barbara','Castelo','ES',3,'29360000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DIRECIONAL TRANSP. E LOGÍSTICA LTDA','Rod BR262 km4,5','Vila Capixaba','Cariacica','ES',3,'29148022')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('DUCLORO IND COM TRANSP. REP. LTDA','Rua dos Coelhos – s/n','Jardim Limeiro','Serra','ES',3,'29163105')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('E S TRANSPORTES LTDA -ME','Rua Galdino Ferraz nº 90 Trevo do Contorno de Vitória','Vila Independência – Próximo a Vitória Diesel','Cariacica','ES',3,'29148610') 
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ECOS TRANSPORTES E SERVIÇOS  LTDA','Av. Brigadeiro Eduardo Gomes, 501 sala02','Jardim Limoeiro','Serra','ES',3,'29164072')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ELO TRANSPORTES LTDA','Rod. Br 101 Norte Km 254','Posto Esso','Serra','ES',3,'29176015')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EMPRESAS DE TRANSPORTES ATLAS LTDA','Rod. Br 101 Norte Km 263 s/nº','Laranjeiras','Serra','ES',3,'29162010')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EMPRESAS DE TRANSPORTES PAJUÇARA','Rod Br 262 - Km 06  - s/n','São Franciso','Cariacica','ES',3,'29241409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EWALD COMÉRCIO E TRANSPORTES LTDA','Rua Um – Quadra A – Lotes 16/19','Flamengo','Viana','ES',3,'29135000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO JUNDIAÍ  SÃO PAULO LTDA','Rua São Jorge, nº 05','Campo Grande','Cariacica','ES',3,'29140501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO LIMEIRA DE VIAÇÃO','Rod. BR 101-Norte, nº 2930 – Km 291','Contorno Nova Valverde','Cariacica','ES',3,'29151815')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SERRANO LTDA','Rod. Br 262  Km 5,5','Campo Grande','Cariacica','ES',3,'29145409')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO SANTANA LTDA','Rua Estrada de Capuaba,nº483','Ilha das Flores','Vila Velha','ES',3,'29115486')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('EXPRESSO VILA VELHA LOGÍSTICA LTDA ME','End.: Av. Muqui , Nº1021','Praia de Itaparica','Vila velha','ES',3,'29102190')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('FADEL TRANSPORTES E LOGÍSTICA LTDA','Br 101 Km 290 s/n','Tabajara - Contorno','Cariacica','ES',3,'29154501')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('FT TRANSPORTES LTDA','Rua Bela Vista, nº96','Industrial','Vila Velha','ES',3,'29118710')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('G D TRANSPORTES E REPRESENTAÇÃO','LTDA Rua João Calmon, 992','Centro','Linhares','ES',3,'29900120')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GIORI TRANSPORTES LTDA','Rod. Br 101 - Km 291- n° 90','Nova valverde','Cariacica','ES',3,'29151815')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GOLD COMÉRCIO E TRANSPORTES LTDA','Rod Br 262 – Km 09','Primavera','Viana','ES',3,'29350000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GPS CORRETORA e ADM de SEGS LTDA','Av. Nossa Sra dos Navegantes, 675 - 4º andar  Ed Palacio do Café','Enseada do Suá','Vitória','ES',3,'29050912')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('GSV TRANSPORTE E COM. DE GASES LTDA','Rodovia do Contorno – Km 9,5','Bairro Morro Grande','Cach. Itapemirim','ES',3,'29300970')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HIPER EXPORT TERMINAIS RETROPORTUÁRIOS S.A','Estrada  do Cais de Capuaba, 1500','lha das Flores','Vila Velha','ES',3,'29119000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HORTIGIL HORTIFRUTI S/A','R. Edson Bonadiman,nº 45','São Francisco','Cariacica','ES',3,'29145450')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('HUMAR TRANSPORTES LTDA','Rua 4 - Esquina c/ a rua 4-a s/n','Civit II','Serra','ES',3,'29160970')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('ILHA AZUL PARTICIPAÇÕES ADM. CONSULT. CORRET. DE SEGUROS LTDA','AV.Nossa Senhora da Penha,n°1506, Loja 01 Ed. Praia Flat','Santa Lúcia','Vitória','ES',3,'29045400')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('INTERLOG TRANSPORTES E LOG. LTDA','Rua Costa Rica n° 43 - Sala 101','Jardim América','Cariacica','ES',3,'29140280')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('INTERPORT LOGÍSTICA LTDA','Rodovia Darly Santos, 4723','Nossa Sra da Penha','Vila Velha','ES',3,'29110340')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J.  ALVES LOGÍSTICA  LTDA  EPP','Rua Piracicaba nº 219','Jardim Marilandia','Vila Velha','ES',3,'29112170')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J.CALLENZANE & CIA LTDA','Rua Vicente Burian - 207','Camará','Serra','ES',3,'29173080')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('J C LIMA E CIA LTDA','Rua Ronilson Queiroz Júnior, s/nº','Portal de Anchieta','Anchieta','ES',3,'29330000')
Insert Into Empresas ( NomeEmpresa, Endereco, Bairro, Cidade, Estado,  Sindicato_SindicatoID, cep ) Values ('JM COMÉRCIO DE HORTIFRUTI LTDA- ME(COMERCIAL BARBA)','Rodovia BR262, s/n','Vila Capixaba','Cariacica','ES',3,'29145906')
Commit

('JAMEF TRANSPORTES LTDA','Margens da BR 262, s/nº, KM 9','Primavera','Viana','ES',3,'29135000') 
('KR TRANSPORTES e LOGÍSTICA LTDA','Rodovia ES 010, nº 4.255 -A','Jardim Limoeiro','Serra','ES'3,'29164043')
('L B T TRANSPORTES LTDA','Rod do Café 0 Km 01 - 590','Carlos G. Nauman','Colatina','ES',3,'29705200')
('LIDER LOGÍSTICA DE TRANSPORTES LTDA','Av. Dos Camaras, n945','Santo Antonio','Cariacica','ES',3,'29156837')
('LOGÍSTICA E TRANSPORTE FIOROT LTDA','Av. Graça Aranha – nº 45','São Torquato','Vila Velha','ES',3,'29114330')
('LOGÍSTICA VERA CRUZ LTDA- ME','Rua Vicente Santório Fantine - 64','Vera Cruz','Cariacica','ES',3,'29146786')
('MA TRANSPORTES LTDA  ME','Av. Francisco Mardegam, nº 123','Aeroporto','Cachoeiro de Itapemirim','ES',3,'29314100')
('MSC MEDITERRANEAN LOGISTICA LTDA (MEDLOG)',' Av. Carlos Lindemberg, s/n','Nossa Senhora da Penha','Vila Velha','ES',3,'29110902')
('M G TRANSPORTES E LOGÍSTICA LTDA (Expresso União)',' Av.Ana Merotto Stefanon, nº 30','Cobilândia','Vila Velha','ES',3,'29111630')
('MRJS LOGÍSTICA E TRANSPORTES LTDA (SS LOGÍSTICA)',' R. Athalides Moreira de Souza, n°140, lt 2, Qd 3','Civit I','Serra','ES',3,'29168055')
('MAROVIC TRANSPORTES LTDA',' Rod. BR 101, km 267, s/n','Jardim Limoeiro','Serra','ES',3,'29164038')
('MEGA TRANSPORTES E SERVIÇOS LTDA ME',' Rua Trindade, 100','Nova Bethania','Viana','ES',3,'29135000')
('MEGALOG LOGÍSTICA E TRANSPORTES LTDA',' R. Porto Alegre, s/n','Alterosa','Serra','ES',3,'29165973')
('MELTEX JOY COMERCIO DE CONFECÇÕES LTDA',' Rod. Br 101 s/n Km 290','Tabajara','Cariacica','ES',3,'29151300')
('MILA TRANSPORTES LTDA Rod',' Br 262 - Km 09','Marcilio de Noronha','Viana','ES',3,'29135000')
('MIRAMAR PRODUTOS ALIMENTÍCIOS LTDA',' Av. Fernando Ferrari, 1.700','Goiabeiras','Vitória','ES',3,'29075050')
('MULTILIFT LOGISTICA LTDA',' Av. Vale do Rio Doce , s/n','Porto Velho','Cariacica','ES',3,'29150970')
('NESAC TRANSPORTES LTDA ME',' Rua Angelo Zani, S/N  Sala 09 ','Mucuri',,'Cariacica','ES',3,'29148622')
('ÔMEGA TRANSPORTES E SERVIÇOS LTDA',' Estrada de Capuaba, 1258','Ilha da Conceição','Vila Velha','ES',3,'29115830')
('PAGANINI MATERIAL DE CONSTRUÇÃO LTDA',' Av. Cel. Antônio Duarte, 155','Centro','Iconha','ES',3,'29280000')
('PATRUS TRANSPORTES URGENTES LTDA',' Rod.Br.101/262 – Km 13,5','Parque Industrial','Viana','ES',3,'29135000')
('PIANCA TRANSPORTES E TURISMO LTDA','Rua Francisco Simões Borges, nº109','Vila Nova','Aracruz','ES',3,'29190000')
('PEDRA BRANCA TRANSPORTES LTDA Rod','Br 101 km 210 - n°08','Pedra Branca','Ibiraçu','ES',3,'29670000')
('PORTO SEGURO LOGÍSTICA E TRANSPORTES LTDA','Rod. Carlos Lindemberg, n 6231, Sala 106','Cobilândia','Vila Velha','ES',3,'29111865')
('PREMIER SERVIÇOS E TRANSPORTES LTDA-ME','R. Santa Tereza, nº 189, Vila Independência','Cariacica','ES',3,'29148604')
('RÁPIDO TRANSPAULO LTDA','Rua Alfredo Galeno – nº 01 – Caixa Postal: 045058','Nova Zelândia','Serra','ES',3,'29.175.703')
('RAPIDÃO COMETA TRANSPORTE E LOGISTICA SA','Av. Talma Rodrigues Ribeiro - 1.765 - Portal de Jacaraípe','Serra','ES',3,'29173-795')
('RBE TRANSPORTES E SERVIÇOS LTDA','Rod. BR 101 Norte, s/nº km  210 s/n Cx Postal 25','Pedra Branca','Ibiraçu','ES',3,'29670000')
('RODAGASES TRANSPORTES LTDA   ME (FRISSO TRANSPORTES LT)','End. Correspondência: Rua O, s/nº','São Diogo I','Serra','ES',3,'29163269')
('RODOLOG TRANSPORTES MULTIMODAIS LTDA (RODOFLY)','Rua Atalydes Moreira de Souza - 964','Civit I','Serra','ES',3,'29168055')
('RODOMETAL TRANSPORTES E SERV. LTDA  (METALOSA)','Rod. do Café – KM 02 – Córrego do Ouro','Colatina','ES',3,'29705200')
('RODOPLAN COMÉRCIO, TRANSP. PREST. SERVIÇOS LTDA','Rod Br 262, s/nº, Km 8, Vila Bethania','Viana','ES',3,'29135160')
('RODOVIÁRIO LÍDER LTDA','Rodovia Br 101 - Km 292','Vila Idependência','Cariacica','ES',3,'29148-640')
('ROTA BRASIL TRANSPORTES E LOGISTICA LTDA','Rod. Br 101, Km 374','União','Iconha','ES',3,'29280000')
('ROTA DO SOL TRANSPORTADORA LTDA','Rod. Br 101/262, Km 12,7','Ribeira','Viana','ES',3,'29135000')
('S RODRIGUES TRANSPORTES LTDA ME','Rod. BR 101 Norte, s/n –km 291','Nova Valverde','Cariacica','ES',3,'29151815')
('SL TRANSPORTES e LOGÍSTICA LTDA','Nova Quality Logística Rua Messias Gonçalves Correia , Nº 9','N. Srª da Penha','Vila Velha','ES',3,'29110080')
('SMG TRANSPORTES LTDA','Rua João Cipriano, 19','Maria Ortiz','Cachoeiro de Itapemirim','ES',3,'29301560')
('SL TRANSPORTES e LOGÍSTICA LTDA Nova Quality Logística','Rua Messias Gonçalves Correia Nº 9','N. Srª da Penha','Vila Velha','ES',3,'')
('SMG TRANSPORTES LTDA','Rua João Cipriano, 19','Maria Ortiz','Cachoeiro de Itapemirim','ES',3,'29301560')
('SAULO TRANSPORTES LTDA','Rua Engenheiro José Himério, 27','Campo Grande','Cariacica','ES',3,'CEP 29146-460'
('SALEIO TRANSPORTES SANTOS TRANSPORTADORA E LOGÍSTICA','Rua Estrada de Catuaba ,SL05, nº21','Ataíde','Vila Velha','ES','29119060')
('SERMAVIL LOCAÇÃO E MONTAGENS LTDA','Rua Comendador Simão Helon - N° 1055','Civit','Serra','ES',3,'29168090')
('SHAMAH TRANSPORTES E SERVIÇO INTERMODAL LTDA-ME','Av. Vitória Regia, 1729, loja 02','Jardim Colorado','Vila Velha','ES','29104590')
('SILVEROL LOCAÇÕES LTDA - EPP','Rua João Arcari - 13 A','Timbuí','Fundão','ES',3,'29185000')


/***
('TAF TRANSPORTES E LOGÍSTICA LTDA ME   (ALE LOGÍSTICA)','R. Leila Diniz, n 1100','Novo México','Vila Velha','ES',3,'29104070'

('T.L TRANSPORTES E LOGÍSTICA LTDA ROD','BR 262/101 - KM12, s/n','Ribeira','Viana','ES','29135000'
('TEGMA LOGÍSTICA INTEGRADA S.A','Estrada do contorno - s/n - Km 281','Porto Engenho','Cariacica','ES','29158001'
('TNT MERCÚRIO CARGAS E ENCOMENDAS. S.A','Rod. BR 262, km 14','Ribeira','Viana','ES','29135000'
('TODA CARGA TRANSPORTES LTDA','Rod. Br 101 - km 294  Contorno','Cariacica','ES','29146970'
('TODAVIA LOGÍSTICA E TRANSPORTES LTDA Rua Neves Armond – 174','Praia do Suá','Vitória','ES','29052280'
('TOP TRANS DISTRIBUIÇÃO E LOGÍSTICA LTDA',' Rua 6 B, Lote 12, quadra 14','Civit ll','Serra','ES','29168085'
('TRANSABRIL TRANSPORTADORA ABRIL LTDA','Rua Acácio Godim - 426','Jardim Limoeiro','Serra','ES','29164010'
('TRANSBIAZATTI TRANSPORTES E LOGÍSTICA LTDA','Rod Gether Lopes de Farias n° 2600 - Terreo, KM 7','Carlos Germano Naumann','Colatina','ES','29705200'
('TRANSCACHOEIRO TRANSP. CARGAS LTDA EPP','Rua Juvenal R. Santos – 49 / 51','Agostinho Simonato','Cachoeiro Itapemirim-ES','ES','29311-741'
('TRANSCAMPO TRANSPORTADORA CAMPO LTDA','Rua dos Artistas – s/n','Operário','Cariacica','ES','29146970'
('TRANSPEDROSA S.A','Rua Dom Bosco s/n','Cachoeira do Campo','Ouro Preto','MG',3,'35410000'

('TRANSCHERRER TRANSPORTADORA LTDA','Rod José Sette - s/n','São João Batista','Cariacica','ES','29156315'

('TRANSDTA TRANSP. E ASSES. EM COM. EXT. LTDA ME','Estrada de Capuaba n° 93','Salas 101/02','Ataide','Vila Velha','ES','29119060'
('TRANSGLEIDE TRANSPORTES ( TG - TRANSPORTADORA BRASIL)','Rua Cassimiro de Abreu, 261','Planalto Carapina','Serra','ES','29162707'
('TRANSGLEIDE TRANSPORTES DE CARGAS LTDA','Rod. Br 101 Norte Km 267 - s/n','Carapina','Serra','ES','29161340'
('TRANSILVA TRANSPORTES E LOGÍSTICA LTDA','Rod. BR 101 Norte Contorno, S/N, km 283','Porto Engenho','Cariacica','ES','29159001'
('TRANSJÓIA TRANSPORTADORA JÓIA LTDA','Rua Braulina Baptista Lopes, 265','Manoel Plaza','Serra','ES','29160765'
('TRANSLUZ TRANSPORTADORA LTDA ME','Sétima Avenida, n 115, Loja B','Cobilândia','Vila Velha','ES','29111220'
('TRANSMAGNO TRANSP. RODOVIARIOS LTDA',' Rod. Darly Santos, s/n','Jardim Asteca','Vila Velha','ES','29104491'
('TRANSMENDES TRANSPORTES LTDA','R. Antonio Vieira, nº17','Santo Antonio','Cachoeiro de Itapemirim','ES','29300650'
('TRANSPEDRA TRANSPORTES LTDA','Rod. Br 101 - Norte - Contorno s/n - km 291','Nova Valverde','Cariacia','ES','29151815'
('TRANSPORTADORA AMERICANA LTDA','Rod Br 262, Km 1306','Calabouço','Viana','ES','29135000'
('TRANSPORTADORA BELMOK LTDA','Rua Idalino de Carvalho S/N','Areinha','Viana','ES','29135000'
('TRANSPORTADORA CALEZANE LTDA','Rod. Vitória /Jacaraípe, Km 02','Jardim Limoeiro','Serra','ES','29160-970'
('TRANSPORTADORA COLATINENSE LTDA','Rua 4, nº460','Civit II','Serra','ES','29168077'
('TRANSPORTADORA CONTINENTAL LTDA','Rod. Carlos Lindemberg, nº 1990','Cobilândia','Vila Velha','ES','29110001'
('TRANSPORTADORA DE SÁ LTDA','Rod. Br 262, Km 46 – s/n – Posto BR – Caixa Postal: 33','Centro','Marechal Floriano','ES','29255000'
('TRANSPORTADORA FIOROT LTDA','Rua  Anésio José Simões, 30','São Torquato','Vila Velha','ES','29114350'
('TRANSPORTADORA INTERPORT LTDA','End. Rod. Carlos Lindenberg SL 18, N°4723 - A','Vila Velha','ES','Nossa Senhora da Penha','29110400'
('TRANSPORTADORA JOLIVAN LTDA MATRIZ','Av. Danilo M. de Castro, 816','Centro','Iconha','ES','29280000'
('TRANSPORTADORA M.M.A  LTDA','Rua 06 - D, s/nº','Civit II','Serra','ES','29168024'
('TRANSPORTADORA POUPE PESO LTDA ME','Av. Fernando Ferrari - 3627','Jabour','Vitória','ES','29075053'

('TRANSPORTADORA SOUZA REIS LTDA','R. Carioca, nº132, Rosario de Fátima','Serra','ES','29161195'

('TRANSPORTADORA TRAVAGLIA LTDA ME','Rua João Sasso, nº299','São Geraldo','Cachoeiro de Itapemirim','ES','29314650'

('TRANSPORTADORA TRANSFINAL LTDA','Rod. Br 101 – Km 296 - s/nº','Nova Valverde','Cariacica','ES','29146970'

('TRANSPORTADORA WINSTON LTDA','Rua Euclides da Cunha - 41','Paraíso','Cachoeiro de Itapemirim','ES','29300130'

('TRANSPORTES ARIANE LTDA','Rod. BR 262 – Km 8,3','Guaritas','Viana','ES','29135000'

('TRANSPORTE EXCELSIOR LTDA','Av. Copacabana, s/n, Morada das Laranjeiras','Serra','ES','29166820'

('TRANSPORTES FS LTDA','Rod. ES - 010 - km 2,5','Jardim Limoeiro','Serra','ES','29164140'

('TRANSPORTES FIOROTI LTDA','Rua Severino Zanol nº 135','Planalto de Carapina','Serra','ES','29162726'

('TRANSPORTES HAVARIO LTDA ME','Rua 09 - Qda 13 - Lote 05 - Nº 05','Arlindo Vilasch','Viana','ES','29135000'

('TRANSPORTES ICONHA LTDA','Av. Danilo Monteirode Castro, n° 278','Centro','Iconha','ES','29280000'


('TRANSPORTES M.A.L.U LTDA (MALU TRANSPORTES)','Av. Central, s/n, Campo Verde CEP:29135-000 - Viana/ES	Viana
('TRANSPORTES SEM LIMITE LTDA ME','Rua América - 500 - Campo Grande Cep: 29150-790 - Cariacica - ES	Cariacica
('TRANSPORTES SERVIÇOS E REPRESENTAÇÕES TENORIO LTDA  ME','Rua Rosa Vermelha, 777 - Novo México Cep: 29104 - 030 - Vila Velha ES Vila Velha


('TRANSPAPINHA TRANSP. LOG. ARMAZENAGEM LTDA R. Orlando Caliman, nº 275, Jardim Camburi  Vitória/ES - CEP: 29.090-220 nº Caixa postal: 19246 Endereço para correspondencia: Avª Brasil, nº 1322 – Sala 07, Novo Horizonte - Serra  -  ES CEP: 29.163-331 - Pátio Posto Novo Horizonte (Bandeira Ipiranga)
('TRANSPOSUL TRANSPORTES LTDA Rua Maranhão, nº10, Jardim América, CEP:29140-482 - Cariacica/ES	Cariacica
('TRANSUIÇA LOCAÇÃO E PRESTAÇÃO DE SERVIÇOS LTDA Rua Geraldo Del Puppo s/n Lotes 11 e 13 quadra VII – CIVIT II – SERRA - ES - CEP 29.168-074 ( Ao lado da empresa Perfilados Rio Doce )
('TRANSZERO TRANSPORTADORA DE VEÍCULOS LTDA Av. Civit I, 497 - Bairro Civit I - Serra - ES - CEP: 29168-045"	Serra
('TRES TRANSPORTES LTDA Rod. BR 101, km265, s/n, Laranjeiras Velha Serra/ES CEP: 29162-122	Serra
('TRESELES TRANSPORTE DE CARGAS LTDA (PRETTI CARGAS) Rua 06 D – Quadra XIII D Civit II –CEP:29168-070 – Serra/ES"	SERRA
('TRD TRANSPORTE E LOGÍSTICA Rua Guardênia, n°112 - Serra Dourada II - Serra - ES - Cep: 29171-239"	Serra	
('TURRA & ARTILLES LTDA R. Samuel Meira Brasil, nº 95, Gleba L Taquara II - CEP: 29.166.800 - Serra/ES
('UNIENG LOGÍSTICA LTDA Rua Antonio Velozo de Azevedo s/n – Jardim Limoeiro – Serra-ES – Cep: 29164-066 Serra
('USIFAST LOGÍSTICA INDUSTRIAL S/A Rod. BR 101 Norte - 2320 - Sala: 08 - KM 267,73 - São Geraldo - Serra - ES - CEP: 29.163-387 - Posto Planalto ( em frente a Hiunday )                                                                                                                                                                   Caixa Postal 040-099 - Av. Presidente Castelo branco, nº1460 – Carapina - Serra – ES - CEP 29160-970	Serra
('VANAMA TRANSPORTES LTDA Rod. Governador José Henrique Sete nº 01 – Bairro: Planeta – Cariacica-ES  Cep: 29156-775	Viana
('VINHEDOS TRANSPORTES LTDA Rua Nove – Lote 07 – Quadra 13 – s/n – Loteamento Arlindo Vilaschi - Viana – ES  - CEP 29135-000 Viana
('VIRC COMERCIO E TRANSPORTES LTDA Rodovia Br 262 - Km 6,5 - Loja 09 - Pavilhão 02 Ceasa  Cep: 29145-906 - Cariaca ES	Cariacica
('VIX LOGÍSTICA S/A Av. Jerônimo Vervloet, nº 275 - Goiabeiras  Vitória - ES   CEP 29070-350	Vitória
('WALDEMIRO BERGER - TRANSPORTES BERGER Rodovia. Afonso Schwab - km 01 - Santa Maria de Jetibá – ES  CEP  29645-000 	Santa Maria de Jetibá
('WID TRANSPORTES LTDA Av. Marechal Humberto de Alencar, n 1311, Cobilândia - CEP: 29111-500 - Vila Velha/ES	Vila Velha
('WINSTON TRANSPORTES LTDA Rua Euclides da Cunha - 33 – Paraíso - Cachoeiro de Itapemirim – ES CEP 29304-130 Cachoeiro de Itapemirim
('WORK TRANSPORTES LTDA Rua Coelho Neto, 93 - Jardim Limoeiro Cep: 26164 - 045 - Serra ES Serra
('YPIRANGA TRANSP.  PESADOS LTDA-ME Rua Estrada Cais de Capuaba, 999 - Sl 03 Ilha das Flores - Vila Velha - Cep: 29115-486 Vila Velha
	
