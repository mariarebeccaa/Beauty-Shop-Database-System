--1 Secven?? pentru tabelul CLIENT 
CREATE SEQUENCE seq_client_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--2 Secven?? pentru tabelul CATEGORIE 
CREATE SEQUENCE seq_categorie_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--3 Secven?? pentru tabelul MARCA 
CREATE SEQUENCE seq_marca_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--4 Secven?? pentru tabelul PRODUS 
CREATE SEQUENCE seq_produs_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--5 Secven?? pentru tabelul COMANDA 
CREATE SEQUENCE seq_comanda_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--6 Secven?? pentru tabelul ABONAMENT 
CREATE SEQUENCE seq_abonament_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--7 Secven?? pentru tabelul FAVORITE 
CREATE SEQUENCE seq_favorite_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--8 Secven?? pentru tabelul RECENZIE 
CREATE SEQUENCE seq_recenzie_id 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--9 Tabela asociata CREEAZA 
CREATE SEQUENCE seq_creeaza 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

--10 Tabela asociativa ADAUGA 
CREATE SEQUENCE seq_adauga 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 

 --11 Tabela asociativa CONTINE 
CREATE SEQUENCE seq_contine 
START WITH 1 
INCREMENT BY 1 
NOCACHE 
NOCYCLE; 






-- Crearea tabelei MARCA
CREATE TABLE MARCA ( 
    ID_marca NUMBER(5) PRIMARY KEY, 
    nume_marca VARCHAR(50) NOT NULL UNIQUE, 
    sediu_marca_oras VARCHAR(50), 
    sediu_marca_tara VARCHAR(50), 
    contact_marca VARCHAR(50), 
    website_marca VARCHAR(100) 
); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'GlimmerGrove', 'New York', 'USA', 'contact@glimmergrove.com', 'https://www.glimmergrove.com'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'PureVelvet', 'Paris', 'France', 'info@purevelvet.fr', 'https://www.purevelvet.fr');  

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'Radiant Roots', 'Los Angeles', 'USA', 'hello@radiantroots.com', 'https://www.radiantroots.com'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'Essence Envy', 'London', 'UK', 'contact@essenceenvy.co.uk', 'https://www.essenceenvy.co.uk'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'Harmonia Skin', 'Tokyo', 'Japan', 'support@harmoniaskin.jp', 'https://www.harmoniaskin.jp'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'GlowAura', 'Milan', 'Italy', 'info@glowaura.it', 'https://www.glowaura.it'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'VelvetDream', 'Berlin', 'Germany', 'contact@velvetdream.de', 'https://www.velvetdream.de'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'Luminous Luxe', 'Sydney', 'Australia', 'hello@luminousluxe.com.au', 'https://www.luminousluxe.com.au'); 

INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'PureGlow', 'Toronto', 'Canada', 'contact@pureglow.ca', 'https://www.pureglow.ca'); 


INSERT INTO MARCA (ID_marca, nume_marca, sediu_marca_oras, sediu_marca_tara, contact_marca, website_marca)  
VALUES (seq_marca_id.NEXTVAL, 'Radiant Glow', 'Săo Paulo', 'Brazil', 'info@radiantglow.br', 'https://www.radiantglow.br'); 
  

COMMIT; 

--Crearea tabelului CLIENT
CREATE TABLE CLIENT (
    ID_client INT PRIMARY KEY,
    nume_client VARCHAR(50) NOT NULL,
    prenume_client VARCHAR(50) NOT NULL,
    email_client VARCHAR(50) NOT NULL UNIQUE,
    telefon_client VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Popescu', 'Ana', 'ana.popescu@gmail.com', '0721123456');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Ionescu', 'Adnan', 'adnan.ionescu@gmail.com', '0732123456');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Constantinescu', 'Mariana', 'mariana.constantinescu@gmail.com', '0743123456');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Radulescu', 'Elena', 'elena.radulescu@gmail.com', '0754123456');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Dumitru', 'Marian', 'marian.dumitru@gmail.com', '0765123456');

INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Gheorghescu', 'Andrei', 'andrei.gheorghescu@gmail.com', '0726112233');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Stanciu', 'Miruna', 'miruna.stanciu@gmail.com', '0737112233');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Florescu', 'Alexandru', 'alexandru.florescu@gmail.com', '0748112233');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Antonescu', 'Elena', 'elena.antonescu@gmail.com', '0759112233');
INSERT INTO CLIENT (ID_client, nume_client, prenume_client, email_client, telefon_client) VALUES (seq_client_id.NEXTVAL, 'Mihai', 'Cristina', 'cristina.mihai@gmail.com', '0760112233');

COMMIT;



-- Tabela CATEGORIE
CREATE TABLE CATEGORIE ( 
    ID_categorie NUMBER(5) PRIMARY KEY, 
    nume_categorie VARCHAR2(25) NOT NULL,
    descriere_categorie VARCHAR2(100)
); 

INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Ingrijirea pielii', 'Produse pentru îngrijirea pielii');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Ingrijirea parului', 'Produse pentru îngrijirea p?rului');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Machiaj', 'Produse pentru machiaj');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Parfumuri', 'Parfumuri pentru diverse ocazii');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Accesorii machiaj', 'Accesorii pentru aplicarea machiajului');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Tratamente cosmetice', 'Tratemente pentru diferite probleme ale pielii');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Accesorii parului', 'Accesorii pentru îngrijirea ?i stilizarea p?rului');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Machiaj profesional', 'Produse de machiaj de calitate profesional?');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Parfumuri de lux', 'Parfumuri de lux pentru ocazii speciale');
INSERT INTO CATEGORIE (ID_categorie, nume_categorie, descriere_categorie) VALUES (seq_categorie_id.NEXTVAL, 'Accesorii machiaj art.', 'Accesorii de machiaj de art? ?i specializate');

COMMIT;



-- Tabela PRODUS
CREATE TABLE PRODUS (
    ID_produs NUMBER(5) PRIMARY KEY,
    nume_produs VARCHAR2(50) NOT NULL,
    descriere_produs VARCHAR2(100),
    pret_produs NUMBER(10, 2) NOT NULL,
    cantitate_disponibila NUMBER(10) NOT NULL,
    ID_categorie NUMBER(5) NOT NULL,
    CONSTRAINT fk_categorie_produs FOREIGN KEY (ID_categorie) REFERENCES CATEGORIE (ID_categorie)
);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Crema hidratanta', 'Ofera hidratare intensa pentru pielea uscata.', 25.99, 50, 1);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Sampon revitalizant', 'Curata delicat parul si ii reda stralucirea naturala.', 15.50, 250, 2);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Ruj mat', 'Culori intense si rezistente pentru buze senzuale.', 12.75, 5, 3);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Ser anti-imbatranire', 'Reduce semnele de imbatranire si previne aparitia ridurilor.', 50.00, 30, 1);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Parfum floral', 'Arome proaspete de flori pentru o zi plina de energie.', 80.00, 100, 4);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Crema de maini', 'Hidrateaza intens si protejeaza pielea uscata a mainilor.', 18.99, 75, 1);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Balsam de par', 'Ingrijeste si hraneste in profunzime parul deteriorat.', 12.25, 200, 2);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Fond de ten', 'Asigura o acoperire perfecta si un aspect natural al tenului.', 39.99, 30, 3);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Serum hidratant', 'Ofera hidratare si luminozitate tenului intr-un timp scurt.', 29.50, 50, 1);

INSERT INTO PRODUS (ID_produs, nume_produs, descriere_produs, pret_produs, cantitate_disponibila, ID_categorie) 
VALUES (seq_produs_id.NEXTVAL, 'Pudra compacta', 'Matifiaza tenul si ofera un aspect natural si catifelat.', 21.00, 10, 3);

COMMIT;


-- Crearea tabelei ABONAMENT
CREATE TABLE ABONAMENT (
    ID_abonament NUMBER(5) PRIMARY KEY,
    tip_abonament VARCHAR2(50) NOT NULL,
    pret_abonament NUMBER(10, 2) NOT NULL,
    beneficii_abonament VARCHAR2(200),
    ID_client NUMBER(5) NOT NULL,
    CONSTRAINT fk_client_abonament FOREIGN KEY (ID_client) REFERENCES CLIENT (ID_client)
);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Basic', 19.99, 'Acces la reduceri exclusive, 2 livrari gratuite pe lun?', 1);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Premium', 49.99, 'Acces nelimitat la toate ofertele, livrari nelimitate gratuite', 2);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament VIP', 99.99, 'Beneficii exclusive, 24/7 asisten?? personalizat?, acces prioritar la noi produse', 3);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Basic', 19.99, 'Acces la reduceri exclusive, 2 livrari gratuite pe lun?', 4);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Premium', 49.99, 'Acces nelimitat la toate ofertele, livrari nelimitate gratuite', 5);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Premium', 49.99, 'Acces nelimitat la toate ofertele, livrari nelimitate gratuite', 6);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament VIP', 99.99, 'Beneficii exclusive, 24/7 asisten?? personalizat?, acces prioritar la noi produse', 7);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Basic', 19.99, 'Acces la reduceri exclusive, 2 livrari gratuite pe lun?', 8);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament Standard', 29.99, 'Acces la oferte exclusive ?i livrare gratuit? de 4 ori pe lun?', 9);

INSERT INTO ABONAMENT (ID_abonament, tip_abonament, pret_abonament, beneficii_abonament, ID_client)
VALUES (seq_abonament_id.NEXTVAL, 'Abonament VIP', 99.99, 'Beneficii exclusive, 24/7 asisten?? personalizat?, acces prioritar la noi produse', 10);

COMMIT;





-- Tabela COMANDA
CREATE TABLE COMANDA (
    ID_comanda NUMBER(5) PRIMARY KEY,
    data_comanda DATE NOT NULL,
    adresa_livrare VARCHAR2(100),
    status_comanda VARCHAR2(25) NOT NULL,
    ID_client NUMBER(5) NOT NULL,
    CONSTRAINT fk_client FOREIGN KEY (ID_client) REFERENCES CLIENT (ID_client)
);

INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'Str. Floriilor nr. 7, Bucuresti', 'In curs de livrare', 1);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-02', 'YYYY-MM-DD'), 'Str. Unirii nr. 10, Bucuresti', 'In pregatire', 2);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-03', 'YYYY-MM-DD'), 'Str. Rezervelor, Bucuresti', 'Finalizata', 3);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-04', 'YYYY-MM-DD'), 'Str. Libertatii nr. 25, Timisoara', 'In curs de livrare', 4);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-05', 'YYYY-MM-DD'), 'Str. Tineretului nr. 17, Constanta', 'Finalizata', 5);

INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-06', 'YYYY-MM-DD'), 'Str. Aviatorilor nr. 14, Cluj-Napoca', 'In pregatire', 1);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-07', 'YYYY-MM-DD'), 'Str. Iancu de Hunedoara nr. 30, Timisoara', 'In pregatire', 2);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-08', 'YYYY-MM-DD'), 'Str. Garii nr. 5, Brasov', 'Finalizata', 3);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-09', 'YYYY-MM-DD'), 'Str. Republicii nr. 12, Sibiu', 'In curs de livrare', 4);
INSERT INTO COMANDA (ID_comanda, data_comanda, adresa_livrare, status_comanda, ID_client) VALUES 
    (seq_comanda_id.NEXTVAL, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'Str. Independentei nr. 8, Constanta', 'Finalizata', 5);

COMMIT;



-- Crearea tabelei FAVORITE
CREATE TABLE FAVORITE (
    ID_favorite NUMBER(5) PRIMARY KEY,
    ID_client NUMBER(5) NOT NULL,
    CONSTRAINT fk_client_favorite FOREIGN KEY (ID_client) REFERENCES CLIENT (ID_client)
);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 1);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 3);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 2);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 5);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 4);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 7);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 8);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 10);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 6);

INSERT INTO FAVORITE (ID_favorite, ID_client) 
VALUES (seq_favorite_id.NEXTVAL, 5);

COMMIT;


-- Crearea tabelei RECENZIE
CREATE TABLE RECENZIE (
    ID_recenzie NUMBER(5) PRIMARY KEY,
    rating_recenzie NUMBER(2) CHECK (rating_recenzie BETWEEN 1 AND 5),
    comentariu_recenzie VARCHAR2(255),
    data_recenzie DATE NOT NULL,
    ID_client NUMBER(5) NOT NULL,
    ID_produs NUMBER(5) NOT NULL,
    CONSTRAINT fk_client_recenzie FOREIGN KEY (ID_client) REFERENCES CLIENT (ID_client),
    CONSTRAINT fk_produs_recenzie FOREIGN KEY (ID_produs) REFERENCES PRODUS (ID_produs)
);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 4, 'Produsul a fost bun, sunt multumit.', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 1, 5);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 5, 'Foarte incantat de produs!', TO_DATE('2023-08-01', 'YYYY-MM-DD'), 2, 2);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 3, 'Este in regula, dar ma asteptam la mai mult.', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 3, 4);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 5, 'Produs excelent, il recomand!', TO_DATE('2023-09-10', 'YYYY-MM-DD'), 4, 3);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 4, 'Bun, dar poate fi imbunatatit.', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 5, 1);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 5, 'Un produs minunat!', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 1, 3);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 3, 'Satisfacator, dar am intampinat cateva probleme.', TO_DATE('2023-09-15', 'YYYY-MM-DD'), 4, 2);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 4, 'Multumit de achizitie.', TO_DATE('2023-10-03', 'YYYY-MM-DD'), 3, 5);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 5, 'Recomand cu incredere!', TO_DATE('2023-08-10', 'YYYY-MM-DD'), 2, 1);

INSERT INTO RECENZIE (ID_recenzie, rating_recenzie, comentariu_recenzie, data_recenzie, ID_client, ID_produs) 
VALUES (seq_recenzie_id.NEXTVAL, 3, 'Produs mediu, nu exceleaza.', TO_DATE('2023-09-01', 'YYYY-MM-DD'), 5, 4);

COMMIT;


-- Tabela asoc. CONTINE
CREATE TABLE CONTINE (
    ID_produs NUMBER(5),
    ID_comanda NUMBER(5),
    cantitate_comandata NUMBER(10) NOT NULL,
    PRIMARY KEY (ID_produs, ID_comanda),
    CONSTRAINT fk_produs_contine FOREIGN KEY (ID_produs) REFERENCES PRODUS (ID_produs),
    CONSTRAINT fk_comanda_contine FOREIGN KEY (ID_comanda) REFERENCES COMANDA (ID_comanda)
);

INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (1, 1, 29);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (3, 2, 101);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (5, 3, 46);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (2, 4, 32);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (4, 5, 21);

INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (1, 6, 50);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (3, 7, 10);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (2, 8, 3);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (5, 9, 24);
INSERT INTO CONTINE (ID_produs, ID_comanda, cantitate_comandata) VALUES (4, 10, 63);

COMMIT;


-- Tabela asoc. ADAUGA
CREATE TABLE ADAUGA (
    ID_produs NUMBER(5),
    ID_favorite NUMBER(5),
    data_adaugare DATE NOT NULL,
    PRIMARY KEY (ID_produs, ID_favorite),
    CONSTRAINT fk_produs_adauga FOREIGN KEY (ID_produs) REFERENCES PRODUS (ID_produs),
    CONSTRAINT fk_favorite_adauga FOREIGN KEY (ID_favorite) REFERENCES FAVORITE (ID_favorite)
);

INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (1, 1, TO_DATE('2023-08-01', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (3, 2, TO_DATE('2023-08-02', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (5, 3, TO_DATE('2023-08-03', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (2, 4, TO_DATE('2023-08-04', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (4, 5, TO_DATE('2023-08-05', 'YYYY-MM-DD'));

INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (1, 6, TO_DATE('2023-08-06', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (3, 7, TO_DATE('2023-08-07', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (2, 8, TO_DATE('2023-08-08', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (5, 9, TO_DATE('2023-08-09', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (4, 10, TO_DATE('2023-08-10', 'YYYY-MM-DD'));

INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (7, 10, TO_DATE('2023-09-09', 'YYYY-MM-DD'));
INSERT INTO ADAUGA (ID_produs, ID_favorite, data_adaugare) VALUES (9, 9, TO_DATE('2023-09-10', 'YYYY-MM-DD'));

COMMIT;



-- Tabela asoc. CREEAZA
CREATE TABLE CREEAZA (
    ID_marca NUMBER(5),
    ID_produs NUMBER(5),
    data_creare DATE NOT NULL,
    PRIMARY KEY (ID_marca, ID_produs),
    CONSTRAINT fk_marca_creeaza FOREIGN KEY (ID_marca) REFERENCES MARCA (ID_marca),
    CONSTRAINT fk_produs_creeaza FOREIGN KEY (ID_produs) REFERENCES PRODUS (ID_produs)
);

INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (1, 1, TO_DATE('2023-06-01', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (2, 3, TO_DATE('2023-06-02', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (3, 5, TO_DATE('2023-06-03', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (4, 2, TO_DATE('2023-06-04', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (5, 4, TO_DATE('2023-06-05', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (1, 6, TO_DATE('2023-06-06', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (2, 7, TO_DATE('2023-06-07', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (3, 8, TO_DATE('2023-06-08', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (4, 9, TO_DATE('2023-06-09', 'YYYY-MM-DD'));
INSERT INTO CREEAZA (ID_marca, ID_produs, data_creare) VALUES (5, 10, TO_DATE('2023-06-10', 'YYYY-MM-DD'));

COMMIT;

