--== TASK 1 ==
--Направете таблиците: people, contacts и contact_phones
-- people има id за PRIMARY KEY, first_name, last_name са низове до 256 знака, които не могат да са 
празни. 
--Добавете проверка, че дължината на first_name е поне 5 символа, а дължината на last_name е 
поне 8 символа.
--contacts съдържа email адресът на един човек.
--contact_phones съдържа всички телефонни номера на един човек и кратко описание на 
телефонния номер. Например: 08888888, личен. Добавете проверка, че описанието е не по-късо 
от 5 символа.
--=============================
CREATE TABLE people (
 id NUMBER PRIMARY KEY,
 first_name VARCHAR2(256),
 last_name VARCHAR2(256)
 
);

CREATE TABLE contacts (
 id NUMBER PRIMARY KEY,
 person_id NUMBER NOT NULL REFERENCES people(id)UNIQUE,
 email VARCHAR2(512) NOT NULL
 
);

CREATE TABLE contact_phones (
 id NUMBER PRIMARY KEY,
 contact_id NUMBER NOT NULL REFERENCES contacts(id),
 phone VARCHAR2(42) NOT NULL,
 phone_description VARCHAR2(512)
 
);