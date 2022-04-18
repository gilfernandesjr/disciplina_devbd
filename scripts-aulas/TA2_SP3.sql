SHOW TABLES;

-- Alterar tabela de Elementos Turísticos, adicionando campos latitude e longitude. 
DESCRIBE ponto_tur;
ALTER TABLE ponto_tur ADD coordenada POINT;
DROP TABLE coordenada;


-- Alterar a tabela “Países”, adicionando uma nota de 0 a 10 com o nível de interesse para o turista ('0','1','2','3','4','5','6','7','8','9','10')
ALTER TABLE pais ADD interesse ENUM('0','1','2','3','4','5','6','7','8','9','10');

-- Alterar tabela “Cidades”, incluindo uma lista com os três melhores restaurantes. 
ALTER TABLE cidade ADD melhoresRest VARCHAR(300) DEFAULT '';




INSERT INTO ponto_tur (nome, coordenada) 
VALUES ('Ponte da Amizade',POINT(1.123456,3.434343)); 

SELECT * FROM ponto_tur;
SELECT *, AsText(coordenada) FROM ponto_tur;






















