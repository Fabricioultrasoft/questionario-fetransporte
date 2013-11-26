
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
	('ES',	'ESP�RITO SANTO')
Commit	

Begin Tran
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('LINHARES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VIT�RIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COLATINA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CARIACICA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA VELHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GUARAPARI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SERRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('DOMINGOS MARTINS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('P�SSEGO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ARACRUZ', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARECHAL FLORIANO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('AFONSO CL�UDIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONCEI��O DO CASTELO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITARANA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VIANA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAPEMIRIM', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BLUMENAU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VIRGINIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MONTANHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA TEREZA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('�GUA DOCE DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PANCAS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('FUND�O', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O GABRIEL DA PALHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ANCHIETA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VENDA NOVA DO IMIGRANTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONCEI��O DA BARRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('TEIXEIRA DE FREITAS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ICONHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VARGEM ALTA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CASTELO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('UBU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('NOVA VEN�CIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O MATEUS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BELO HORIZONTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA DO CONDE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BAIXO GUANDU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BARRA DE S�O FRANCISCO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAQUARI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COBIL�NDIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IBIRA�U', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('JO�O NEIVA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PI�MA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA LEOPOLDINA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MUNIZ FREIRE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IUNA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MIMOSO DO SUL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GUA�UI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('IBATIBA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARIL�NDIA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ITAGUA�U', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CONQUISTA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALEGRE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALFREDO CHAVES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BOM JESUS DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BAUNILHA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('BOA ESPERAN�A', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('RIO NOVO DO SUL', 	 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O DOMINGOS DO NORTE', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA TERESA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('JER�NIMO MONTEIRO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MANGUINHOS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O MIGUEL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O JOS� DOS CAL�ADOS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PEDRO CAN�RIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MARATA�ZES', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PINHEIROS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('S�O ROQUE DO CANA�', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ECOPORANGA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('SANTA MARIA DE JETIB�', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MANTEN�POLIS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MIMOSO DO SUL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('APIAC�', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PARAJU', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('CACHOEIRO DE ITAPEMIRIM', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('LARANJA DA TERRA', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('VILA VAL�RIO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('RIO BANANAL', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('ALTO RIO NOVO', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('GOVERNADOR LINDENBERG', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('MUCURUCI', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('PARIS', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('DIVINO S�O LOUREN�O', 	1	)
	Insert into Cidades ( Descricao, Estado_EstadoID ) Values ('COQUEIRAL DE ARACRUZ', 	1	)
Commit	

Begin Tran 
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANT�NIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DOS AIRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ADALBERTO SIM�O NADER' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRO VERMELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O GON�ALO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO BELO I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANDR� CARLONI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DOS REIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AVISO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DOURADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO BELO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRAL DE CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ROM�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO MARINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHAS VERDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO MARINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA IN�S' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA PALESTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BICANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BEBEDOURO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA VITALI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RUBIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRESIDENTE M�DICI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O SILVANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BUB�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO C' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA AZUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DE F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ORIENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PRAIA DA CONCHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FIORAVANTE MARINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RETIRO DO CONGO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO DE SANTANA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO NOVO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBI DE BAIXO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESPLANADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DE SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM AM�RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NEVES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'UNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO DE CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JO�O GOULART' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARIACICA SEDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARGARIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AGR�COLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO BRASIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOS� RODRIGUES MACIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DO PERP�TUO SOCORRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TERRA VERMELHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITANHANG�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TR�S BARRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONSOLA��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTRELA DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DE AL�H' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBIAPABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OPER�RIOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ASTECA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REP�BLICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPINHO DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE CONTINENTAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAGRADA FAM�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POR DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO FRADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ESPERAN�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAC�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MORADA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NAZAR�TH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BONFIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE ENCANTADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OL�VIO ZANOTELLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LUIZ IGL�SIAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA SORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA N�OBE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DEL PORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOS� MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FRADINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CH�CARA KAJ�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O FRANCISCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTAL DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRIMEIRO DE MAIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUPARAN�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COCAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA DAS GRA�AS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA CANA�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DA ESPERAN�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPINA GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VASCO DA GAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABARA�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MARACAN�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ULYSSES GUIMAR�ES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PEROC�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TUC�M' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANGUE SECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CH�CARA PARREIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVINO ESP�RITO SANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUCUR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GRA�NA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO B' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO VELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA �SIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CEC�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA OCEANIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITARAR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAQUAR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANT�NIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM COLORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO RESIDENCIAL DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANT�NIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PIRANEMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'EURICO SALLES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANOEL PLAZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM LAGUNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JO�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABOUR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO DE CARIACICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POR DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O GERALDO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANDORINHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMURUGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOCKEY DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACARA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BENTO FERREIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARGOLAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MORADA DE CAMPO GRANDE II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O GABRIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABURU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA DE COLARES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HONORIO FRAGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O DIOGO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZAR�TH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE GUARAPARI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DAS FLORES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALPARA�SO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MERLO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IMOBILI�RIA CAPIXABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TAQUARAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO JUCU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MOACIR BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA AM�RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOL NASCENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DO TUBAR�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA AM�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TUBAR�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANT�NIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE ITAPO�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA F�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA M�NICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARIBIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS VELHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZEIRO DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANT�NIO FERREIRA BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VERA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLAR DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOS� DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE JACARA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O DOMINGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA AM�RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DO SOL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPINHO DA SERRA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORTE S�O JO�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM TROPICAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO M�XICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA VALVERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TABUAZEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVIN�POLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA CAPIXABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MARIL�NDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRIST�V�O COLOMBO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARCELONA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORMATE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BRISAMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CEC�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ESPERAN�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO MORENO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA �FRICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGOA DO MEIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBIL�NDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA PRUD�NCIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'KUBITSCHEK' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IPIRANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CORDOVIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTANA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA CASCATA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATA�DE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL COQUEIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RETIRO SAUDOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ZEL�NDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PATR�CIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'H�LIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�LON BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALVORADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONQUISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COROADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'UNIVERSIT�RIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS  II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JO�O BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DAS CAIEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO EMPRESARIAL REGI�O METROPOLITANA GRANDE VIT�RIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SEGURAN�A DO LAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CH�CARA LITOR�NEA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOM BOSCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARA��S' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA M�NICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL CAMPINA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA B�RBARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTOS DUMONT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DA AREIA PRETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEI��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL MESTRE �LVARO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CRIST�V�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO MORRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIST�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUANABARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INHANGUET�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAGRADO CORA��O DE JESUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITABEPUSSU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA BRAS�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RAUL GIUBERTTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DA JUSSARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIVIERA DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTEMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA DOURADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA M�NICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUCUTUQUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AEROPORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CH�CARA MARING�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SHELL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOUTOR PEDRO FEU ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ROSA DA PENHA I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE SANTA F�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA GARRIDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE RESIDENCIAL LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O GERALDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TERESINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM BOT�NICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA LENIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IPESSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CEASA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CA�AROCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARA��' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PRIMAVERA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DE F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BANDEIRANTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO QUADRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLUMBIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA COSTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DO VALE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FLEXAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O GERALDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O MARCOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COBI DE CIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�TIO BATALHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE RESIDENCIAL DE TUBAR�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O BENEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO ENGENHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLAR DE V�NUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DO SU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LINHARES V' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AD�LIA GIUBERTTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CHIC�POLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OPER�RIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO PORTO CANOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DOS BENTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO PR�NCIPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARTINELLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SETIBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PADRE GABRIEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CEC�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SALAMINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PIEDADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO ATALAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CATARINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA BELA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DE MONTE BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONDUSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO FONTE GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TABAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE NACIONAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA INDEPEND�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTEL�NDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO CAVALIERI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO NOVO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LU�ZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATALAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUADALAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CONRADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O MARCOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLATINA VELHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ROSA DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL TIRADENTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AYRTON SENNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GRANDE VIT�RIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANT�NIO HON�RIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOTECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O BRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO ALTO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA PALESTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OLARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTO CANOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM S�O PAULO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ELDORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TAQUARAS I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O BENEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VINTE E TR�S DE MAIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS RECIFES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AMARELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ISMENIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DARLY SANTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE GRAMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPEND�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRAMARES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEI��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO EXPEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARU�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM SANTA ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITANGU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE GRAMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUADALUPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA SEDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA CARAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALPARA�SO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MEA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PAUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CONRADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REDEN��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGOA FUNDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM LIMOEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO SU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FLOR DO CAMPO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA ROSA DA PENHA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AREINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA RITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITACIB�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DA CONCEI��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO DOS P�SSAROS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO SERRANO BLOCO A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O VICENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA AURORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LIM�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O TORQUATO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALECRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZAMENTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOS� DE ANCHIETA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARATO�RA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALAGOANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDUSTRIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PROLAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA L�CIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTINENTE DA EUROPA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARGARIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DA CONCEI��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA REAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTRELINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CANTO FELIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GAROTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUQUI�ABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DA LAGOA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABURUNA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM PLANALTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PEDRO MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACUNEM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA PRAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GL�RIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ISABEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O LOUREN�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARLOS GERMANO NAUMANN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FL�RIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIAMANTINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPO�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ANGELO FRECHIANE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SALAMIN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PONTA DA FRUTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'P�SSEGO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ITAPO�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIRGIN�POLIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARIACICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AREINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ZELINDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONSOLA��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = '�GUA DOCE DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIL�NDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SITIO CORREA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO MOSCOSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARAC�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM RESPLENDOR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA PAULA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TEER�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CURITBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMPO GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVO HORIZONTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEI��O DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'TEIXEIRA DE FREITAS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CRUZ DO CAMPO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS PADRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GL�RIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TOCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA INTERLAGOS I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'APICUM DO PO�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUADALAJARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS ANDORINHAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VALE DAS PALMAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DA BARRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIO CIPRESTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARATI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'UBU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CRISTOV�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE WASHINGTON' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DA GRAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXADA GUARANHUNS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INTERLAGOS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DO CONDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA DO CONDE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DOM JO�O BATISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTHIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SOLON BORGES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA ITANHANG�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARREIRAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARC�LIO DE NORONHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO SA SEREIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE DAS CASTANHEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAPUCAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITARAR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BET�NIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIRICU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO DA SEREIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA DE FORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIVIT I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA COMPRIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CRIST�V�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILHA DO BOI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONSTANTINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBIRA�U' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLANALTO DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELANDIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO ITAPEBUSSU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA M�NICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIVIT II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIGICA DE DENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JO�O DE VI�OSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOMBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CH�CARA DO CRICAR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA PELADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CEC�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUA�UI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBATIBA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO AGOSTINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEI��O DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DO RIACHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARIL�NDIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUA�UI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM S�O JUDAS TADEU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONCEI��O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PANCAS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARING�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALEGRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MUNIZ FREIRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PALMITAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JO�O NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA IZABEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE ALVERNE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PINDOBAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEI��O DO CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUC�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDUSTRIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GOIABEIRAS III' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O CRISTOV�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SITIO VALE DA TRANQUILIDADE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO RIO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM ATL�NTICO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE S�O FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE REIS MAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TREM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RONCADOR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARU�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE ITA�NA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEI��O DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA MAR AZUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IRM�OS FERNANDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE S�O FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLATINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARAREMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALEGRE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'H�LIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATA�DE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARACATIBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IRIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA BET�NIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RESIDENCIAL SAMARCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MUCURAT�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O DOMINGOS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE BELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARACRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO CLOTARIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JO�O NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA LANDINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE S�O FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CORREGO LAGE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARGARETH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA COSTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JER�NIMO MONTEIRO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO SAU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO ATAPO�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MANGUINHOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORTE DE S�O JO�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DR. ARTHUR GERHARDT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM AM�RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INHANGUET�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MOACIR BROTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ACAIACA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PI�MA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O JOS� DOS CAL�ADOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AGRIMENSOR ADOLPHO DE OLIVEIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'EST�NCIA MONAZ�TICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JEQUITIB�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PI�MA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PEDRO CAN�RIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DO ECO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O FRANCISCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO CANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ILMERITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATA�ZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IDEAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O SEBASTI�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ECOPORANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA VEN�CIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BEIRA RIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O ROQUINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O ROQUE DO CANA�'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DAS LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATL�NTICA VILLE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAPUBA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACARA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE FATIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'HELIO FERRAZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA F�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POTIGUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANDREZINHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O MIGUEL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZARETH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BANDEIRAS PAMPULHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMPESTRE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MIMOSO DO SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BANDEIRANTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JO�O DUARTE MANSO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'QUEIMADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTABELLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OURO BRANCO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'�GUA FUNDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORADA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DIVINO ESP�RITO SANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ECOPORANGA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA MARIA DE JETIB�'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALEGRE DE RIO PRETO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALDEIA GILBERTI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ZONA RURAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ERECINA PAGIOLA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SO�DO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CECILIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PINHEIROS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DE ITAPEMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATA�ZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIRI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUA�UI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MONTANHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BURITIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BELO HORIZONTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITARANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA GRANDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PEDRO CAN�RIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DE JACARA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTONIO DO CANA�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PROVIDENCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPOC�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANTONIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO NOVO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUCU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'APIAC�'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'PINHEIROS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE POMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARAJU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COHAB' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IBIRA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DISTRITO DE ACIOLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JO�O NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JO�O XXIII' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PAULO DO ARACE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DOMINGOS MARTINS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O DIGO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O DIOGO I' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DO RIACHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'EXPEDITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUAND�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'QUINCAS MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUA�UI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MATA DA PRAIA III' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COSTA E SILVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GILBERTO MACHADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIBEIRO FUNDO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ESTELITA COELHO MARINS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTO ANT�NIO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARNALDO BASTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LARANJA DA TERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O FRANCISCO DE ASSIS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AQUIDABAN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OURIMAR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PICAD�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O ROQUE DO CANA�'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O SEBASTI�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O ROQUE DO CANA�'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIBEIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DA BALEIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAXIXE QUENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL DO BOSQUE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CIDADE ALTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA CLARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IMIGRANTES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARIA ORTIZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE JACARA�PE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILANTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VISTA DA SERRA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIT�RIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXO GUANDU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ASCENS�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARQUE NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RUBIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COLINA DE LARANJEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PALMEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'C�RREGO DO OURORA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARRA DE MANGARAI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAROL DE SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO BOA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBITIQUARA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMB�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MONTANHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TEREZA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JOS� DAS TORRES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM MONTANHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA TERESA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IGUAPE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JOQUEI DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ARACRUZ' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOVA BRASILIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERNAMBI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA ESPERAN�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA APARECIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO PONTAL DO IPIRANGA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O SEBASTI�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO BANANAL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOAPABA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DAS VIRTUDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALTO RIO NOVO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DE SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA DO SU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA HELENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O TIAGO DE TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FERROVI�RIOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CACHOEIRA ALTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CACU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BRASIL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUIZA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPEND�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ALFREDO CHAVES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O JO�O' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXO BANANAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITARANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RECANTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRA DOURADA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JABOUR' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PORTAL DE MANGUINHOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AD�LIA GILBERT' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'POLIVALENTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM JANDIRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ICONHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOM JESUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DOS NAMORADOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SISQUINI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPEND�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SERRANO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BOM JESUS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PITO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IUNA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FERREIRA VALLE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'IUNA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'OS�AS NETTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMBUI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ELDORADO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUA�UI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'IBC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GOVERNADOR LINDENBERG'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIMIEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CASTELHANOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BENJAMIN CARLOS DOS SANTOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VAL�RIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O MATEUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUARITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIANA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CAIMIRIM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CALUGY' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CALOGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SUMAR�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIXA IT�LIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COQUEIRAL DE ITAPARICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ZONA RURAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SANTA LEOPOLDINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO PONGAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAIPAVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'REIS MAGOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DE CARLI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FEU ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE SERRA PELADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'AFONSO CL�UDIO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BNH' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'LINHARES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ENSEADA VERDE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'GUARAPARI'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAMBE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BARRA DE S�O FRANCISCO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VENDA NOVA DO IMIGRANTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA JOANA DARC' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O DIOGO II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DISTRITO DO ALTO DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'FUND�O'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTE CASTELO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARA�SO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'C�RREGO DA ALEGRIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARIL�NDIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ICONHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BURARAMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALVORADA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PLAN�CIE DA SERRA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'AEROPORTO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LAGO DOS CISNE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'C�RREGO DO ALCINO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O DOMINGOS DO NORTE'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'TIMS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VILA VELHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GUANDU' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTO MUTUM' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'DAS GAIVOTAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BARBADOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA LUZIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JO�O NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDINS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DA JUSTI�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PARADA CRISTAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JER�NIMO MONTEIRO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA MARTHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA RICA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATA�ZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIMINAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RIO DO NORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA RITA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'COURO DOS MONOS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'RIO NOVO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CONTORNO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CARIACICA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�TIO SANTA ROSA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ITAGUA�U'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARRAIAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARATA�ZES'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ARAGUAIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MARECHAL FLORIANO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PRAIA DO COQUE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BAIRRO DE LOURDES' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPU�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SANTA TEREZINHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MIMOSO DO SUL'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LIMOEIRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MONTANHA RESIDENCIAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BALNE�RIO AREIA BRANCA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'RESIDENCIAL NOBRE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'WALDIR FURTADO DE AMORI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O SEBASTI�O DO NORTE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MONTANHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BELA VISTA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MARCILIO DIAS II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CONCEI��O DA BARRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ECOPORANGA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DAS PALMEIRAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CARAPEBUS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BASILEIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CACHOEIRO DE ITAPEMIRIM'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JESUS DE NAZARE' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FILOMENA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'NOVA VEN�CIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ALTEROSAS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'LOTEAMENTO BARREIROS' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'MORRO DO CARDEAL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VIMIEIRO CALOGI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FAZENDA PIRAEN' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'INDEPEND�NCIA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'CASTELO'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JACIGUA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'GURIRI SUL' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ITAPINA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'COLATINA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA DE NOVA ALMEIDA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'CENTRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O GABRIEL DA PALHA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA NOVA DE CIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'JO�O NEIVA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'S�O PEDRO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'BAIXO GUANDU'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JARDIM DA PENHA-CAMBURI' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VIT�RIA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'JUSTI�A II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ANCHIETA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'ATAPO�' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'MANGUINHOS'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'VILA ESPERAN�A' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'VARGEM ALTA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'BOA VISTA II' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'NOSSA SENHORA DO ROS�RIO DE F�TIMA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'SERRA'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'PATRIM�NIO DA PENHA' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'DIVINO S�O LOUREN�O'
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
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'SAUA�U' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'ARACRUZ'
Insert Into Bairro ( Cidade_CidadeID, NomeBairro )  Select CidadeID,'FORNO VELHO' From Fetransportes_questionario.Dbo.Cidades Where Descricao = 'S�O MATEUS'
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
	
