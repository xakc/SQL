-- TASK 2 
--Създайте таблица children, която има следните колони:
--birthdate
--first_name с минимална дължина 5 символа
--last_name с минимална дължина 6 символа и максимална дължина 20 символа
--Две колони parent1(задължителна колона) и parent2, които да са връзки към таблицата people.

CREATE TABLE children (
 first_name VARCHAR2(256) NOT NULL,
 last_name VARCHAR2(256) NOT NULL,
 birthdate DATE NOT NULL,
 parent1_id NUMBER NOT NULL REFERENCES people(id) ,
 parent2_id NUMBER REFERENCES people(id)
);