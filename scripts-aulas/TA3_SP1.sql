create database SuperGames;
use SuperGames;
drop DATABASE supergames;

CREATE TABLE localizacao (
    Id INT(3) PRIMARY KEY AUTO_INCREMENT,
    Secao VARCHAR(50) NOT NULL,
    Prateleira INT(3) ZEROFILL NOT NULL
);

CREATE TABLE jogo (
    Cod INT(3) PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Valor DECIMAL(6 , 2 ) NOT NULL,
    Localizacao_Id INT(3) NOT NULL,
    FOREIGN KEY (Localizacao_Id)
        REFERENCES Localizacao (Id)
);

INSERT localizacao VALUES 
(0, "Guerra", "001"),
(0, "Guerra", "002"),
(0, "Aventura", "100"),
(0, "Aventura", "101"),
(0, "RPG", "150"),
(0, "RPG", "151"),
(0, "Plataforma 2D", "200"),
(0, "Plataforma 2D", "201");


INSERT jogo VALUES 
(0, "COD 3", 125.00, 1),
(0, "BF 1", 150.00, 2),
(0, "Zelda BotW", 200.00, 3),
(0, "Zelda OoT", 99.00, 4),
(0, "Chrono T", 205.00, 5);


SELECT * FROM localizacao;
SELECT * FROM jogo;



-- Identificar o nome do jogo e a prateleira
SELECT jogo.nome, localizacao.prateleira
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_id;

-- Identificar o nome dos jogos da seção de jogos de Aventura.
SELECT jogo.nome, localizacao.prateleira
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_id
WHERE secao = 'Aventura';


-- Identificar TODAS as seções e os respectivos nomes dos
-- jogos, ordenando as seleções em ordem crescente pelo nome dos jogos.



























-- Identificar o nome do jogo e a prateleira
SELECT jogo.nome, localizacao.prateleira
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id;

-- Identificar o nome dos jogos da seção de jogos de Aventura.

SELECT jogo.nome
FROM jogo INNER JOIN localizacao
ON localizacao.id = jogo.localizacao_Id
WHERE secao = 'Aventura';

-- Identificar TODAS as seções e os respectivos nomes dos
-- jogos, ordenando as seleções em ordem crescente pelo nome dos jogos.

SELECT  localizacao.secao, localizacao.prateleira, jogo.nome
FROM localizacao LEFT JOIN jogo
ON localizacao.Id = jogo.localizacao_Id
ORDER BY jogo.nome ASC;




















