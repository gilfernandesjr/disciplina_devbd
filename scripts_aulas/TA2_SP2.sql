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

/*Criar integridade referencial antre as tebelas linguagemPais e país*/
ALTER TABLE linguagemPais ADD CONSTRAINT FK_linguagemPais
FOREIGN KEY (codigoPais) REFERENCES pais(id);

DESCRIBE linguagemPais;
DESCRIBE pais;


/*Modificar o código do país para ser obrigatória a inclusão*/
ALTER TABLE linguagemPais
MODIFY codigoPais INT(11) NOT NULL;

USE guiatur;
SHOW TABLES FROM guiatur;
DESCRIBE pais;
SELECT * FROM pais;


/*Excluir a restrição de chave estrangeira e tabela*/
ALTER TABLE linguagemPais DROP FOREIGN KEY FK_linguagemPais;
DROP TABLE linguagemPais;




