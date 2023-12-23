/*
 create table person
(
id integer not null,
name varchar(225) not null,
location varchar(255),
birth_date timestamp,
primary key(id)
);
*/

INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE)
VALUES (1001, 'Ranga', 'Hyderabad', NOW());

INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE)
VALUES (1002, 'John', 'Chennai', NOW());

INSERT INTO PERSON (ID, NAME, LOCATION, BIRTH_DATE)
VALUES (1003, 'Mena', 'Mumbai', NOW());