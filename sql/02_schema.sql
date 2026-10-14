-- 02: Relational schema and constraints
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

CREATE TABLE CAFENEA (
id_cafenea NUMBER (5) DEFAULT CAFENEA_SEQ.NEXTVAL PRIMARY KEY,
oras VARCHAR2(50) NOT NULL,
adresa VARCHAR2(200) NOT NULL,
telefon CHAR(10) NOT NULL,
CONSTRAINT telefon_unic_cafenea UNIQUE (telefon)
);

CREATE TABLE ANGAJAT (
id_angajat NUMBER(5) DEFAULT ANGAJAT_SEQ.NEXTVAL PRIMARY KEY,
nume_angajat VARCHAR2(50) NOT NULL,
prenume_angajat VARCHAR2(50) NOT NULL,
data_angajarii DATE NOT NULL,
telefon CHAR(10) NOT NULL,
salariu_ora NUMBER(6,2) NOT NULL,
id_cafenea NUMBER(5) NOT NULL, FOREIGN KEY (id_cafenea) REFERENCES CAFENEA(id_cafenea),
CONSTRAINT telefon_unic_angajat UNIQUE (telefon),
CONSTRAINT salariu_angajat CHECK(salariu_ora>0)
);

CREATE TABLE MANAGER(
id_angajat NUMBER(5) PRIMARY KEY,
data_promovarii DATE,
FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat)
);

CREATE TABLE BARISTA (
id_angajat NUMBER(5) PRIMARY KEY,
certificare_cafea VARCHAR2(20) DEFAULT 'Incepator',
FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat),
CONSTRAINT certificare CHECK (certificare_cafea IN ('Incepator', 'Intermediar', 'Profesionist'))
);

CREATE TABLE BUCATAR (
id_angajat NUMBER(5) PRIMARY KEY,
rang_bucatar VARCHAR2(10) DEFAULT 'Junior' NOT NULL,
FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat),
CONSTRAINT rang CHECK (rang_bucatar IN ('Junior', 'Senior', 'Chef'))
);

CREATE TABLE PRODUS (
id_produs NUMBER(5) DEFAULT PRODUS_SEQ.NEXTVAL PRIMARY KEY,
denumire VARCHAR2(100) NOT NULL,
pret NUMBER(8,2) NOT NULL,
marime CHAR(1) DEFAULT 'M',
CONSTRAINT marime_produs CHECK (marime IN ('S', 'M', 'L')),
CONSTRAINT pret_produs CHECK (pret>0)
);

CREATE TABLE BAUTURA (
id_produs NUMBER(5) PRIMARY KEY,
contine_cofeina VARCHAR2(2) NOT NULL,
FOREIGN KEY (id_produs) REFERENCES PRODUS(id_produs),
CONSTRAINT cofeina CHECK (contine_cofeina IN ('Da', 'Nu'))
);

CREATE TABLE BRUNCH (
id_produs NUMBER(5) PRIMARY KEY,
alergeni VARCHAR2(200),
FOREIGN KEY (id_produs) REFERENCES PRODUS(id_produs)
);

CREATE TABLE RETETA (
id_reteta NUMBER(5) DEFAULT RETETA_SEQ.NEXTVAL PRIMARY KEY,
instructiuni VARCHAR2(1000) NOT NULL,
timp_preparare NUMBER(3) NOT NULL,
id_produs NUMBER(5) NOT NULL UNIQUE,
CONSTRAINT reteta_produs FOREIGN KEY (id_produs) REFERENCES PRODUS(id_produs),
CONSTRAINT timp CHECK (timp_preparare>0)
);

CREATE TABLE INGREDIENT (
id_ingredient NUMBER(5) DEFAULT INGREDIENT_SEQ.NEXTVAL PRIMARY KEY,
nume_ingredient VARCHAR2(100) NOT NULL,
unitate_masura VARCHAR2(20) NOT NULL,
stoc NUMBER(10,2) DEFAULT 0,
CONSTRAINT stoc CHECK (stoc>=0)
);

CREATE TABLE CLIENT (
id_client NUMBER(5) DEFAULT CLIENT_SEQ.NEXTVAL PRIMARY KEY,
nume_client VARCHAR2(50) NOT NULL,
prenume_client VARCHAR2(50) NOT NULL,
email VARCHAR2(100) NOT NULL UNIQUE,
data_inregistrare DATE DEFAULT SYSDATE NOT NULL,
CONSTRAINT email_client CHECK (email LIKE '%@%.%')
);

CREATE TABLE COMANDA (
id_comanda NUMBER(5) DEFAULT COMANDA_SEQ.NEXTVAL PRIMARY KEY,
numar_comanda VARCHAR2(20) NOT NULL UNIQUE,
data_comanda DATE DEFAULT SYSDATE NOT NULL,
total NUMBER(10,2) DEFAULT 0,
id_angajat NUMBER(5) NOT NULL,
id_client NUMBER(5),
FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat),
FOREIGN KEY (id_client) REFERENCES CLIENT(id_client),
CONSTRAINT total_comanda CHECK (total >= 0)
);

CREATE TABLE TURA (
id_tura NUMBER(5) DEFAULT TURA_SEQ.NEXTVAL PRIMARY KEY,
data_tura DATE NOT NULL,
ora_inceput NUMBER(2) NOT NULL,
ora_final NUMBER(2) NOT NULL,
CONSTRAINT durata CHECK ((ora_final - ora_inceput) BETWEEN 4 AND 8),
CONSTRAINT ore_final_intreg CHECK (MOD(ora_final, 1) = 0),
CONSTRAINT ore_inceput_intreg CHECK (MOD(ora_inceput, 1) = 0)
);

CREATE TABLE FURNIZOR (
id_furnizor NUMBER(5) DEFAULT FURNIZOR_SEQ.NEXTVAL PRIMARY KEY,
nume_furnizor VARCHAR2(100) NOT NULL,
oras VARCHAR2(50) NOT NULL,
telefon CHAR(10) NOT NULL,
email VARCHAR2(100),
id_ingredient NUMBER(5) NOT NULL,
FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id_ingredient),
CONSTRAINT email_furnizor CHECK (email LIKE '%@%.%')
);

CREATE TABLE ALCATUIESTE (
id_comanda NUMBER(5),
id_produs NUMBER(5),
cantitate NUMBER(3) DEFAULT 1 NOT NULL,
PRIMARY KEY (id_comanda, id_produs),
FOREIGN KEY (id_comanda) REFERENCES COMANDA(id_comanda),
FOREIGN KEY (id_produs) REFERENCES PRODUS(id_produs),
CONSTRAINT cantitate_alcatuieste CHECK (cantitate>0)
);

CREATE TABLE LUCREAZA (
id_angajat NUMBER(5),
id_tura NUMBER(5),
confirmare VARCHAR2(2) DEFAULT 'Nu' NOT NULL,
PRIMARY KEY (id_angajat, id_tura),
FOREIGN KEY (id_angajat) REFERENCES ANGAJAT(id_angajat),
FOREIGN KEY (id_tura) REFERENCES TURA(id_tura),
CONSTRAINT confirmare_tura CHECK (confirmare IN ('Da', 'Nu'))
);

CREATE TABLE CONTINE (
id_produs NUMBER(5),
id_ingredient NUMBER(5),
cantitate NUMBER(8,2) NOT NULL,
PRIMARY KEY (id_produs, id_ingredient),
FOREIGN KEY (id_produs) REFERENCES PRODUS(id_produs),
FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id_ingredient),
CONSTRAINT cantitate_contine CHECK (cantitate>0)
);

CREATE TABLE LIVRARE (
id_furnizor NUMBER(5),
id_ingredient NUMBER(5),
id_cafenea NUMBER(5),
data_livrare DATE DEFAULT SYSDATE NOT NULL,
cantitate_livrata NUMBER(10,2) NOT NULL,
PRIMARY KEY (id_furnizor, id_ingredient, id_cafenea, data_livrare),
FOREIGN KEY (id_furnizor) REFERENCES FURNIZOR(id_furnizor),
FOREIGN KEY (id_ingredient) REFERENCES INGREDIENT(id_ingredient),
FOREIGN KEY (id_cafenea) REFERENCES CAFENEA(id_cafenea),
CONSTRAINT cantitate_livrata CHECK (cantitate_livrata>0)
);

CREATE TABLE COMANDA_LA (
id_angajat NUMBER(5),
id_furnizor NUMBER(5),
data_comanda DATE DEFAULT SYSDATE NOT NULL,
cantitate_comandata NUMBER(10,2) NOT NULL,
PRIMARY KEY (id_angajat, id_furnizor, data_comanda),
FOREIGN KEY (id_angajat) REFERENCES MANAGER(id_angajat),
FOREIGN KEY (id_furnizor) REFERENCES FURNIZOR(id_furnizor),
CONSTRAINT cantitate_comanda CHECK (cantitate_comandata>0)
);
