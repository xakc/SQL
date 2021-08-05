INSERT INTO CONTACTS (id, person_id, email)
VALUES (10, 1, 'vankata@example.com' );
NSERT INTO CONTACTS (id, person_id, email)
VALUES (10, 1, 'vankata@example.com' );

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

--==CHILDREN==
--============
INSERT INTO CHILDREN (first_name, last_name, birthdate, parent1_id)
VALUES ('Goshko', 'Peruhov', '01-MAR-16', 1);
INSERT INTO CHILDREN (first_name,last_name, birthdate, parent1_id)
VALUES ('Lili', 'Ivanova', '01-JAN-17', 3)
