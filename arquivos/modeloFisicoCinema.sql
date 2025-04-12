CREATE TABLE Pais (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

CREATE TABLE Genero (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

CREATE TABLE Ator (
    codigo  INTEGER PRIMARY KEY AUTOINCREMENT,
    nome    TEXT,
    idade   INTEGER,
    diretor BOOLEAN,
    codPais INTEGER REFERENCES Pais (codigo) 
);

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

CREATE TABLE Elenco (
    codigo   INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme INTEGER REFERENCES Filme (codigo),
    codAtor  INTEGER REFERENCES Ator (codigo) 
);

CREATE TABLE ListaGenero (
    codigo    INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT,
    codFilme  INTEGER REFERENCES Filme (codigo),
    codGenero INTEGER REFERENCES Genero (codigo) 
);

CREATE TABLE Sessao (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme   INTEGER REFERENCES Filme (codigo),
    codCinema  INTEGER REFERENCES Cinema (codigo),
    horaInicio TEXT,
    horaFim    TEXT,
    publico    INTEGER,
    emCartaz   BOOLEAN
);
