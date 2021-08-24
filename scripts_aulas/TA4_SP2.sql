USE litoral;
SELECT * FROM destino;

/* Para fazer a alteração do COMMIT para que as alterações
não sejam gravadas automaticamente */
SET AUTOCOMMIT = 0;

/* Para criar um ponto de restauração no banco*/
SAVEPOINT ponto1;


/* Para fins de teste, a sintaxe a seguir visará gerar o mesmo
erro cometido pelo colaborador:*/
UPDATE destino SET Nome = "Pequena Ilha do Mar";
SELECT * FROM destino;


/* Utilizar o ponto de restauração criado e testá-lo */
ROLLBACK TO SAVEPOINT ponto1;
SELECT * FROM destino;




/* Gravar as alterações feitas, deve ser utilizado o comando:*/
UPDATE destino SET Nome = "Pequena Ilha do Mar"
WHERE id = 5;
SELECT * FROM destino;

COMMIT;


/* Crie um novo ponto de restauração, pois os mesmos serão
apagados pela gravação das alterações:*/

SAVEPOINT ponto2;


























USE litoral;
SELECT * FROM destino;

/* Para fazer a alteração do COMMIT para que as alterações
não sejam gravadas automaticamente */

SET AUTOCOMMIT=0;

/* Para criar um ponto de restauração no banco*/

SAVEPOINT point1;

/* Para fins de teste, a sintaxe a seguir visará gerar o mesmo
erro cometido pelo colaborador:*/

UPDATE destino
SET Nome = "Pequena ilha";

SELECT * FROM destino;

/* Utilizar o ponto de restauração criado e testá-lo */

ROLLBACK TO SAVEPOINT point1;

SELECT * FROM destino;

/* Gravar as alterações feitas, deve ser utilizado o comando:*/

COMMIT;

/* Crie um novo ponto de restauração, pois os mesmos serão
apagados pela gravação das alterações:*/

SAVEPOINT point2;