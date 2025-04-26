DROP TABLE IF EXISTS Pais
CREATE TABLE Pais (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

DROP TABLE IF EXISTS Genero
CREATE TABLE Genero (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

DROP TABLE IF EXISTS Ator
CREATE TABLE Ator (
    codigo  INTEGER PRIMARY KEY AUTOINCREMENT,
    nome    TEXT,
    idade   INTEGER,
    diretor BOOLEAN,
    codPais INTEGER REFERENCES Pais (codigo) 
);
DROP TABLE IF EXISTS Cinema
CREATE TABLE Cinema (
    codigo      INTEGER PRIMARY KEY AUTOINCREMENT,
    nome        TEXT,
    logradouro  TEXT,
    numero      TEXT,
    cep         INTEGER,
    complemento TEXT,
    cidade      TEXT,
    estado      TEXT,
    capacidade  INTEGER
);

DROP TABLE IF EXISTS Filme
CREATE TABLE Filme (
    codigo         INTEGER PRIMARY KEY AUTOINCREMENT,
    tituloOriginal TEXT,
    tituloNacional TEXT,
    duracao        TEXT,
    faixaEtaria    INTEGER,
    nacional       BOOLEAN,
    codPais                REFERENCES Pais (codigo),
    codDiretor             REFERENCES Ator (codigo) 
);
DROP TABLE IF EXISTS Elenco
CREATE TABLE Elenco (
    codigo   INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme INTEGER REFERENCES Filme (codigo),
    codAtor  INTEGER REFERENCES Ator (codigo) 
);

DROP TABLE IF EXISTS ListaGenero
CREATE TABLE ListaGenero (
    codigo    INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT,
    codFilme  INTEGER REFERENCES Filme (codigo),
    codGenero INTEGER REFERENCES Genero (codigo) 
);

DROP TABLE IF EXISTS Sessao
CREATE TABLE Sessao (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme   INTEGER REFERENCES Filme (codigo),
    codCinema  INTEGER REFERENCES Cinema (codigo),
    horaInicio TEXT,
    horaFim    TEXT,
    publico    INTEGER,
    emCartaz   BOOLEAN
);

INSERT INTO Pais (nome) VALUES ("Brasil"), ("USA"), ("França"), ("Alemanha"), ("Austrália"), ("Africa do Sul"), ("Portugal"), ("Espanha");
INSERT INTO Genero (nome) VALUES ("Ação"), ("Aventura"), ("Ramance"), ("Terror")

INSERT INTO Ator 
    (nome, idade, diretor, codPais) 
VALUES 
    ("Tom Cruise",60,false,2), 
    ("Julia Roberts",55,false,2), 
    ("Silvio Santos",80,false,1), 
    ("Silvester Stalone",60,true,2);

INSERT INTO Filme 
    (tituloOriginal, tituloNacional, duracao, faixaEtaria, nacional, codPais, codDiretor) 
VALUES 
    ("Rambo I","Rambo I",180,18,false,2,4),
    ("Pretty Woman","Uma linda mulher",160,16,false,2,4),
    ("Tropa de Elite","Tropa de Elite",140,18,true,1,4),
    ("Minha mãe é uma peça","Minha mãe é uma peça",120,12,true,1,3);

INSERT INTO Elenco 
    (codFilme,codAtor) 
VALUES 
    (1,4), (1,2), (1,3),
    (2,2), (2,1),
    (3,1), (3,4),
    (4,1), (4,3);

INSERT INTO Cinema 
    (nome,logradouro,numero,cep,complemento,cidade,estado,capacidade) 
VALUES 
    ("Cinemark Butantã","Rua dos Alfaces",234,34567890,"bloco 1","São Paulo","SP",800),
    ("Cinemark Mooca","Rua dos Cenouras",134,456567890,"bloco 5","São Paulo","SP",500);

INSERT INTO ListaGenero 
    (codFilme,codGenero,descricao) 
VALUES 
    (1,1,"De roar as unhas"),
    (1,2,"Vai te tirar o folego"),
    (2,3,"Apaixonante"),
    (2,4,"Surpreendente");

INSERT INTO Sessao 
    (codFilme,codCinema,horaInicio,horaFim,publico,emCartaz) 
VALUES 
    (1,1,"10:30","12:30",400,true),
    (1,2,"21:00","23:00",800,true),
    (2,2,"10:30","12:30",400,true),
    (3,2,"21:00","23:00",800,true);

