/* Filmes contendo nome do Pais e nome do Diretor */
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

/* Filmes do Genero 1 (Ação) */
SELECT 
    Filme.codigo AS codFilme,
    Filme.tituloOriginal AS titulo,
    Genero.nome AS genero,
    ListaGenero.*
FROM
    Filme, ListaGenero, Genero
WHERE
    Filme.codigo=ListaGenero.codFilme AND
    Genero.codigo=ListaGenero.codGenero AND
    ListaGenero.codGenero=1

/* Atores do Filme 3 (Pretty Woman) */
SELECT 
    Filme.codigo AS codFilme,
    Filme.tituloOriginal AS titulo,
    Ator.nome AS nomeAtor,
    Elenco.*
FROM
    Filme, Elenco, Ator
WHERE
    Filme.codigo=Elenco.codFilme AND
    Ator.codigo=Elenco.codAtor AND
    Elenco.codFilme=3

/* Atores do Filme 3 (Pretty Woman) com Pais do Ator */
SELECT 
    Filme.codigo AS codFilme,
    Filme.tituloOriginal AS titulo,
    Ator.nome AS nomeAtor,
    Elenco.*,
    Pais.nome AS nomePais
FROM
    Filme, Elenco, Ator, Pais
WHERE
    Filme.codigo=Elenco.codFilme AND
    Ator.codigo=Elenco.codAtor AND
    Ator.codPais=Pais.codigo AND
    Elenco.codFilme=3