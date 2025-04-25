# Aula 10 - 24/04

## Sintaxe SQL

### INSERT INTO
A sintaxe do comando SQL ```INSERT INTO``` é:

```sql
INSERT INTO <nome_tabela> (coluna1, coluna2, ...., colunaN)
VALUES (valor_coluna1, valor_coluna2, ..., valor_colunaN)
```

### SELECT

```sql
SELECT * FROM tabela 
--exibe toda a tabela

SELECT Coluna1, Coluna2, ..., FROM tabela 
--exibe apenas colunas selecionadas

SELECT DISTINCT Coluna1 * FROM tabela 
--exibe valores únicos de determinada coluna

SELECT TOP(N) * FROM tabela
--exibe os primeiros N registros

SELECT Coluna1 AS 'Novo Nome' FROM tabela
--renomeia as colunas consultadas
```

### Ordenação de dados (ORDER BY)

> ORDER BY é usado para ordenar os valores de uma tabela em ordem crescente ou decrescente

```sql
SELECT * FROM Store ORDER BY EmployeeCount
-- quando não especifico a sequência da ordenação, o resultado trará a ordenação ASC (ascendente)
```

```sql
/* SELECIONE AS DA TABELA DE PRODUTOS, E ORDENE DE ACORDO COM O CUSTO (decrescente) e peso (ascendente) */
SELECT
	ProductName,
	Cost,
	Weight
FROM
	Product
ORDER BY Cost DESC, Weight ASC
```

### Filtro de dados (WHERE)

> WHERE é um filtro de dados. Traz somente registros que atendam determinada condição
> 

```sql
--  Quantos produtos custam mais de U$1.000?
SELECT
	ProductName AS Produto,
	UnitPrice	AS Preço
FROM
	Product
WHERE UnitPrice >= 1000
ORDER BY UnitPrice
```

### Operadores Lógicos

```sql
SELECT * FROM DimProduct

-- produtos da Fabrikam da cor preta
SELECT * FROM DimProduct
WHERE BrandName = 'Fabrikam' AND ColorName='Black'

-- produtos da Contoso ou Fabrikam. (Em geral usa-se o OR dentro de uma mesma coluna)
SELECT * FROM DimProduct
WHERE BrandName = 'Contoso' OR BrandName='Fabrikam'

--todos os funcionários, exceto o Marketing
SELECT * FROM DimEmployee
WHERE NOT DepartmentName = 'Marketing'
```

### LIKE

> O LIKE é usado em conjunto com o WHERE para **procurar por um determinado padrão em uma coluna**.
> 

```sql
--Mostre todos os produtos MP3 player
SELECT * FROM DimProduct
WHERE ProductName LIKE '%MP3 Player%'

--Mostre todas os produtos cuja descrição COMECE com 'Type'
SELECT * FROM DimProduct
WHERE ProductDescription LIKE 'Type%'
```

O sinal de **%** representa zero, um ou múltiplos caracteres.

O **_** representa um único caractere

