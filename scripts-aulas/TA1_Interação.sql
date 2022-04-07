CREATE DATABASE IF NOT EXISTS dt;

USE dt;

CREATE TABLE datahora (
    a date,
    b datetime,
    c1 time(5),
    c2 time,
    d YEAR
);

INSERT INTO datahora 
VALUES 
('2021-09-10',
'2021-09-10 23:45:10',
'10:20:45',
'10:20:45',
'2021');

select * from datahora;
INSERT INTO datahora 
VALUES 
(2021021,
20210219222012,
102045,
102045,
2021);

select * from datahora;