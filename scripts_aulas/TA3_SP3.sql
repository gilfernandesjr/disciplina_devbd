USE supergames;
SELECT * FROM localizacao;
INSERT jogo VALUES
(0, "Super Metroid", 205.00, 7),
(0, "DKC 2", 100.00, 8),
(0, "FF XV", 120.00, 5),
(0, "Xenoblade 2", 199.00, 6);

SELECT * FROM jogo;

UPDATE jogo SET valor = valor * 0.5
WHERE nome = 'BF 1';

UPDATE jogo SET valor = valor * 0.5
WHERE nome = 'COD 3';

SELECT * FROM jogo;

CREATE TABLE promocao (
    Promo INT(3) PRIMARY KEY AUTO_INCREMENT,
    Cod_Jogo INT(3) NOT NULL,
    FOREIGN KEY (Cod_Jogo)
        REFERENCES Jogo (Cod)
);

INSERT promocao VALUES 
(0, 1),
(0, 2);

SELECT * FROM promocao;

SELECT 
    jogo.nome AS 'Título',
    jogo.valor AS 'Preço'
FROM
    jogo
WHERE
    jogo.COD IN (SELECT Cod_Jogo FROM promocao);


SELECT 
    jogo.nome AS 'Título', jogo.valor AS 'Preço'
FROM
    jogo
WHERE
    jogo.COD NOT IN (SELECT 
            Cod_Jogo
        FROM
            promocao);
            