USE guiatur;

CREATE TABLE IF NOT EXISTS pais (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	continente ENUM('Ásia', 'Europa', 'América', 'África',
	'Oceania', 'Antártida') NOT NULL DEFAULT 'América',
	codigo CHAR(3) NOT NULL DEFAULT ''
);

CREATE TABLE IF NOT EXISTS estado (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	sigla CHAR(2) NOT NULL DEFAULT ''
);
CREATE TABLE IF NOT EXISTS cidade (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	populacao INT(11) NOT NULL DEFAULT '0'
);
CREATE TABLE IF NOT EXISTS ponto_tur (
	id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL DEFAULT '',
	populacao INT(11) NOT NULL DEFAULT '0',
	tipo ENUM('Atrativo', 'Serviço', 'Equipamento',
	'Infraestrutura', 'Instituição', 'Organização'),
	publicado ENUM('Não', 'Sim') NOT NULL DEFAULT 'Não'
);

CREATE TABLE coordenada (
	latitude FLOAT(10,6),
    longitude FLOAT(10,6)
);


