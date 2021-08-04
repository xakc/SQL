--TASK 3 
--За всяко дете изкарайте всички телефонни номера
--(ако има такива) на първия му родител. 
--Подредете резултата първо по имената на детето, 
--след това по телефонния номер на родителя му.
-- INSERTING RECORDS
INSERT INTO people (id, first_name, last_name)
VALUES( 1, 'Ivan', 'Svetkavov');
INSERT INTO people (id, first_name, last_name)
VALUES( 2, 'Dragan', 'Vertohov');
INSERT INTO people (id, first_name, last_name)
VALUES( 3, 'Dimitrina', 'Denova');

INSERT INTO people (id, first_name, last_name)
VALUES( 4, 'Zaharina', 'Pamukova');
INSERT INTO people (id, first_name, last_name)
VALUES( 5, 'Iliyan', 'Zhichkov');
INSERT INTO people (id, first_name, last_name)
VALUES( 6, 'Gergana', 'Trendafilova');
-- ===CONTACTS ===
--================
INSERT INTO CONTACTS (id, person_id, email)
VALUES (10, 1, 'vankata@example.com' );

INSERT INTO CONTACTS (id, person_id, email)
VALUES (20, 3, 'Denova@example.com' );
INSERT INTO CONTACTS (id, person_id, email)
VALUES (30, 5, 'Zhichkov@example.com' );
INSERT INTO CONTACTS (id, person_id, email)
VALUES (40, 6, 'Trendafilova@example.com' ); 
--=== CONTACT PHONE===
--====================
INSERT INTO contact_phones (id, contact_id, phone, phone_description)
VALUES (1, 10, '+359 885 888 888', 'personal and work phone number' ); 
INSERT INTO contact_phones (id, contact_id, phone, phone_description)
VALUES (2, 30, '+359 885 2341 123 ', 'mobile' );
INSERT INTO contact_phones (id, contact_id, phone, phone_description)
VALUES (3, 40, '+359 885 235 886328', 'fax number' ); 
--==CHILDREN==
--============
INSERT INTO CHILDREN (first_name, last_name, birthdate, parent1_id)
VALUES ('Goshko', 'Peruhov', '01-MAR-16', 1);
INSERT INTO CHILDREN (first_name,last_name, birthdate, parent1_id)
VALUES ('Lili', 'Ivanova', '01-JAN-17', 3);

INSERT INTO CHILDREN (first_name,last_name, birthdate, parent1_id)
VALUES ('Vesko', 'Marinov', '01-APR-15', 5);
SELECT c.first_name, c.last_name , pp.phone
FROM children c
JOIN people p ON c.parent1_id = p.id
JOIN contacts pc ON pc .person_id = p.id
JOIN contact_phones pp ON pp.contact_id = pc.id;