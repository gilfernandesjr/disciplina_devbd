USE guiatur;

/* determinados países terem mais de
um idioma, embora um seja determinado como o idioma oficial.
Nessa relação, temos a cardinalidade de 1 para N */

CREATE TABLE IF NOT EXISTS linguagemPais (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	codigoPais INT(11),
	linguagem VARCHAR(30) NOT NULL DEFAULT '',
	oficial ENUM('Sim', 'Não') NOT NULL DEFAULT'Não'
);
DESCRIBE pais;

/*Criar integridade referencial antre as tebelas linguagemPais e país*/
ALTER TABLE linguagempais ADD CONSTRAINT FK_linguagempais
FOREIGN KEY (codigoPais) REFERENCES pais(id);
DESCRIBE linguagempais;

/*Modificar o código do país para ser obrigatória a inclusão*/
ALTER TABLE linguagempais MODIFY codigoPais INT(11) NOT NULL;

SHOW TABLES FROM guiatur;
DESCRIBE pais;
SELECT * FROM pais;

/*Teste de exclusão - inserindo dados na tabela com chave estrangeira*/
INSERT INTO linguagempais VALUES (0,4,'japones','sim');
SELECT * FROM linguagempais;
DROP TABLE pais;

/*Excluir a restrição de chave estrangeira e tabela*/
ALTER TABLE linguagemPais DROP FOREIGN KEY FK_linguagemPais;
/*agora a tabela país pode ser excluída*/
DROP TABLE pais; 


/*listar todas as constraints do banco*/
SELECT *
FROM information_schema.key_column_usage
WHERE constraint_schema='guiatur';


