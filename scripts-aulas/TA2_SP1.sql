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

describe estado;
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
UPDATE ponto_tur SET tipo = 'Atrativo'
WHERE id = 1;

-- alterar o segundo país (Índia) para ter o cód. 'IND'
SELECT * FROM pais;
UPDATE pais SET codigo = 'IND'
WHERE id = 2;

-- deletar a primeira cidade
SELECT * FROM cidade;
DELETE FROM cidade WHERE id = 1;


