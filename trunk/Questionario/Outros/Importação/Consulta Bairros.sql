

DECLARE @NOMEBAIRRO VARCHAR(50)

SELECT @NOMEBAIRRO = '%Civit II%' 


SELECT * FROM Bairro
WHERE Cidade_CidadeID = 7
AND NomeBairro like @NOMEBAIRRO
