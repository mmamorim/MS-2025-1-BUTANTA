SELECT 
    Filme.codigo AS codFilme,
    Filme.tituloOriginal AS titulo,
    Pais.codigo AS codPais,
    Pais.nome AS nomePais,
    Filme.codDiretor,
    Ator.nome AS nomeDiretor
FROM 
    Filme, Pais, Ator
WHERE
    Filme.codPais=Pais.codigo AND
    Filme.codDiretor=Ator.codigo

