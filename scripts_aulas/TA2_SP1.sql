USE guiatur;
SHOW TABLES FROM guiatur;
DESCRIBE pais;

INSERT INTO pais (nome, continente, codigo)
VALUES
('Brasil', 'América', 'BRA'),
('Índia', 'Ásia', 'IDN'),
('China', 'Ásia', 'CHI'),
('Japão', 'Ásia', 'JPN');

SELECT * FROM pais;

INSERT INTO estado (nome, sigla)
VALUES('Maranhão', 'MA'),
('São Paulo', 'SP'),
('Santa Catarina', 'SC'),
('Rio de Janeiro', 'RJ');

SELECT * FROM estado;

INSERT INTO cidade (nome, populacao)
values('Sorocaba', 700000),
('Déli', 26000000),
('Xangai', 22000000),
('Tóquio', 38000000);

SELECT * FROM cidade;

INSERT INTO ponto_tur (nome, tipo)
VALUES('Quinzinho de Barros', 'Instituição'),
('Parque Estadual do Jalapão', 'Atrativo'),
('Torre Eiffel', 'Atrativo'),
('Fogo de Chão', 'Serviço');
Describe ponto_tur;
SELECT * FROM ponto_tur;


-- alterar para atrativo o primeiro ponto turístico
UPDATE ponto_tur SET tipo = 'Atrativo' WHERE id=1 ;
SELECT * FROM ponto_tur;

-- alterar o segundo país (Índia) para ter o cód. 'IND'
UPDATE pais SET codigo = 'IND' WHERE id = 2;
SELECT * FROM pais;

-- deletar a primeira cidade
DELETE FROM cidade WHERE id=1;
SELECT * FROM cidade;



ALTER TABLE pessoas ADD (nome CHAR(20) NOT NULL);
ALTER TABLE pessoas DROP COLUMN nome; 



