CREATE DATABASE litoral;
USE litoral;


CREATE TABLE escuna (
	numero INT PRIMARY KEY,
    nome VARCHAR(30),
    capitao_cpf CHAR(11)
);

CREATE TABLE destino (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

CREATE TABLE passeio (
	id INT PRIMARY KEY AUTO_INCREMENT,
    data DATE,
    hora_saida TIME,
    hora_chegada TIME,
    escuna_numero INT,
    destino_id INT,
	FOREIGN KEY(escuna_numero) REFERENCES escuna(numero),
    FOREIGN KEY(destino_id) REFERENCES destino(id)
);

INSERT INTO escuna VALUES
(12345, "Black Flag","88888888899"),
(12346, "Caveira","66666666677"),
(12347, "Brazuca","44444444455"),
(12348, "Rosa Brilhante 1","12345678900"),
(12349, "Tubarão Ocean","22222222233"),
(12340, "Rosa Brilhante 2","12345678900");

INSERT INTO destino VALUES
(0, "Ilha Dourada"),
(0, "Ilha D'areia fina"),
(0, "Ilha Encantada"),
(0, "Ilha dos Ventos"),
(0, "Ilhinha"),
(0, "Ilha Torta"),
(0, "Ilha dos Sonhos"),
(0, "Ilha do Sono");

INSERT INTO passeio VALUES
(0,20180102,080000,140000,12345,1),
(0,20180102,070000,170000,12346,8),
(0,20180102,080000,140000,12340,3),
(0,20180103,060000,120000,12347,2),
(0,20180103,070000,130000,12348,4),
(0,20180103,080000,140000,12349,6),
(0,20180103,090000,150000,12345,5),
(0,20180104,070000,160000,12347,1),
(0,20180104,070000,170000,12345,3),
(0,20180104,090000,130000,12349,7),
(0,20180105,100000,180000,12340,8),
(0,20180105,090000,130000,12347,7);


SELECT * FROM escuna;
SELECT * FROM destino;
SELECT * FROM passeio;

SELECT 
	escuna.nome AS "Escuna", 
    destino.nome AS "Ilha", 
    hora_saida AS "Saida", 
    hora_chegada AS "Chegada", 
    Data
FROM passeio INNER JOIN escuna, destino
WHERE passeio.escuna_Numero = escuna.numero AND 
		passeio.destino_ID = destino.id
	ORDER by passeio.data;
    
CREATE VIEW v_consulta AS
SELECT 
	escuna.nome AS "Escuna", 
    destino.nome AS "Ilha", 
    hora_saida AS "Saida", 
    hora_chegada AS "Chegada", 
    Data
FROM passeio INNER JOIN escuna, destino
WHERE passeio.escuna_Numero = escuna.numero AND 
		passeio.destino_ID = destino.id
	ORDER by passeio.data;
    
    SHOW TABLES;
    
    SELECT * FROM v_consulta;
    
    DROP VIEW v_consulta;



