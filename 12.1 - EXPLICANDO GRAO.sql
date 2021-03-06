--ABERTO POR ITEM
SELECT 
	CLIENTE.NOME + ' ' + CLIENTE.SOBRENOME  AS CLIENTE,
	CLIENTE.SEXO 						    AS SEXO_CLIENTE, 
	PRODUTO.PRODUTO    						AS PRODUTO,
	CATEGORIA.NOME     						AS CATEGORIA,
	NOTA_FISCAL.IDNOTA 						AS NOTA_FISCAL,  
	NOTA_FISCAL.DATA   						AS DATA_NOTA,  
	QUANTIDADE 								AS QUANTIDADE, 
	ITEM_NOTA.TOTAL       					AS TOTAL_ITEM, 
	NOTA_FISCAL.TOTAL     					AS TOTAL_NOTA, 
	FORMA_PAGAMENTO.FORMA 					AS FORMA_PAGAMENTO
FROM CLIENTE 				AS CLIENTE
INNER JOIN NOTA_FISCAL 		AS NOTA_FISCAL
ON CLIENTE.IDCLIENTE = NOTA_FISCAL.ID_CLIENTE
INNER JOIN FORMA_PAGAMENTO  AS FORMA_PAGAMENTO
ON IDFORMA = ID_FORMA
INNER JOIN ITEM_NOTA 		AS ITEM_NOTA
ON NOTA_FISCAL.IDNOTA = ITEM_NOTA.ID_NOTA_FISCAL
INNER JOIN PRODUTO 			AS PRODUTO
ON PRODUTO.IDPRODUTO = ITEM_NOTA.ID_PRODUTO
INNER JOIN CATEGORIA 		AS CATEGORIA
ON IDCATEGORIA = ID_CATEGORIA
ORDER BY 5
GO

--ABERTO POR NOTA

SELECT 
	DISTINCT 
	CLIENTE.NOME, 
	CLIENTE.SOBRENOME,  
	CLIENTE.SEXO, 
	NOTA_FISCAL.DATA, 
	NOTA_FISCAL.IDNOTA, 
	NOTA_FISCAL.TOTAL, 
	FORMA_PAGAMENTO.FORMA
FROM CLIENTE 				AS CLIENTE
INNER JOIN NOTA_FISCAL 		AS NOTA_FISCAL
ON CLIENTE.IDCLIENTE = NOTA_FISCAL.ID_CLIENTE
INNER JOIN FORMA_PAGAMENTO  AS FORMA_PAGAMENTO
ON IDFORMA = ID_FORMA
INNER JOIN ITEM_NOTA 		AS ITEM_NOTA
ON NOTA_FISCAL.IDNOTA = ITEM_NOTA.ID_NOTA_FISCAL
INNER JOIN PRODUTO 			AS PRODUTO
ON PRODUTO.IDPRODUTO = ITEM_NOTA.ID_PRODUTO
ORDER BY 5
GO