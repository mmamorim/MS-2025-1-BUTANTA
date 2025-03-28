
# Exercício SUPER CINEMA

Forneça um DER - Diagrama Entidade Relacionamento completo que modele a base de dados necessária para um sistema que gerencia uma Empresa de Administração de Cinemas. 

* A empresa possue vários cinemas, em diversas localidades;
* Cada cinema possue uma identificação única, um nome fantasia, um endereço completo, incluindo rua, avenida, bairro, município, estado e sua capacidade de lotação;
* Os filmes podem ser dos mais variados tipos e gêneros;
* Cada filme é registrado com um título original, e se for filme estrangeiro, possuirá também o título em Português, o gênero, sua duração, sua impropriedade e seu país de origem, informações sobre os atores que compõem seu elenco, e seu diretor. Existirá um único diretor para cada filme;
* Cada filme em cartaz possuí sessões de apresentação com seus horários. As sessões se repetem com os mesmos horários a cada dia da semana (os horários não variam).
* Alguns cinemas apresentam mais de um filme em cartaz.
* Os atores de um filme podem, obviamente, atuar em diversos filmes, assim como o diretor de um filme pode também ser ator neste filme ou ainda mais, ser ator em outro filme. Um ator possue as seguintes características: um número de identificação, um nome, uma nacionalidade e uma idade;
* As sessões de cinema devem ter seu público registrado diariamente, para que se permita a totalização do público quando o filme sair de cartaz, ou a qualquer instante;
  
### Necessidades de informação:

* Apuração do público dos filmes por cinema.
* Permitir uma forma de consulta que, dado um determinado ator, sejam localizados os cinemas onde estão em cartaz os filmes em que este ator atua;
    * Ex: “Quais os cinemas (nomes) passam filmes em que atue a atriz Julia Roberts? Deseja-se obter somente os nomes dos cinemas, independentemente dos filmes.”
* Em quais cinemas está sendo exibido um determinado gênero de filme;
* Em quais cinemas estão sendo exibidos filmes nacionais. 