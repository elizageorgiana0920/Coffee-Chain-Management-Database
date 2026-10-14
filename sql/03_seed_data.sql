-- 03: Sample data inserts (run after sequences and schema)
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Bucuresti', 'Calea Dorobanti 239', '0746290571');

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Bucuresti', 'Soseaua Nicolae Titulescu 95-103', '0748384265');

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Cluj-Napoca', 'Strada Cardinal Iuliu Hossu 7', '0264591997');

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Brasov', 'Strada Michael Weiss 10', '0748532571');

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Onesti', 'Strada Libertatii 12', '0749023333');

INSERT INTO CAFENEA (oras, adresa, telefon) VALUES
('Sibiu', 'Strada Turnului 5', '0753897219');

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Aristra', 'Carina', TO_DATE('10-09-2024', 'DD-MM-YYYY'), '0740547896', 150.00, 1);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Paduraru', 'Simona', TO_DATE('23-10-2024', 'DD-MM-YYYY'), '0789564488', 80.00, 1);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Banica', 'Valentin', TO_DATE('20-04-2025', 'DD-MM-YYYY'), '0776895476', 30.00, 1);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Siminion', 'Andrei', TO_DATE('28-05-2025', 'DD-MM-YYYY'), '0766741833', 150.00, 2);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Lanu', 'Mihai', TO_DATE('28-05-2025', 'DD-MM-YYYY'), '0785558252', 36.00, 2);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Banu', 'Manuela', TO_DATE('29-04-2026', 'DD-MM-YYYY'), '0774743655', 90.00, 2);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Amarie', 'Tudor', TO_DATE('13-04-2025', 'DD-MM-YYYY'), '0740117896', 20.00, 2);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Codreanu', 'Monica', TO_DATE('10-01-2026', 'DD-MM-YYYY'), '0721234567', 90.00, 3);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Bucur', 'Maria', TO_DATE('10-06-2025', 'DD-MM-YYYY'), '0745123456', 20.00, 3);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Crinolin', 'Smaranda', TO_DATE('15-07-2024', 'DD-MM-YYYY'), '0755667788', 35.00, 3);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Plăieșu', 'Gabriel', TO_DATE('01-12-2024', 'DD-MM-YYYY'), '0766778899', 50.00, 4);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Cruceanu', 'Andreea', TO_DATE('31-01-2025', 'DD-MM-YYYY'), '0745123987', 47.00, 4);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Dascălu', 'Stefan', TO_DATE('14-02-2025', 'DD-MM-YYYY'), '0756789123', 103.00, 4);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Runceanu', 'Miruna', TO_DATE('30-06-2025', 'DD-MM-YYYY'), '0765432109', 41.00, 5);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Ardeleanu', 'Ozana', TO_DATE('01-09-2025', 'DD-MM-YYYY'), '0771234567', 39.00, 5);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Moldoveanu', 'Malina', TO_DATE('25-12-2025', 'DD-MM-YYYY'), '0789345678', 130.00, 5);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Avram', 'Doinita', TO_DATE('17-03-2026', 'DD-MM-YYYY'), '0798456789', 43.00, 6);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Tabacaru', 'Radu', TO_DATE('08-08-2025', 'DD-MM-YYYY'), '0799778899', 100.00, 6);

INSERT INTO ANGAJAT (nume_angajat, prenume_angajat, data_angajarii, telefon, salariu_ora, id_cafenea) VALUES
('Potcoava', 'Plesu', TO_DATE('01-05-2026', 'DD-MM-YYYY'), '0785525595', 63.00, 6);

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(1, TO_DATE('10-10-2024', 'DD-MM-YYYY'));

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(4, NULL);

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(8, TO_DATE('24-02-2026', 'DD-MM-YYYY'));

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(13, TO_DATE('10-09-2025', 'DD-MM-YYYY'));

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(16, TO_DATE('14-01-2026', 'DD-MM-YYYY'));

INSERT INTO MANAGER (id_angajat, data_promovarii) VALUES
(18, TO_DATE('10-12-2025', 'DD-MM-YYYY'));

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(2, 'Profesionist');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(6, 'Intermediar');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(7, 'Incepator');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(9, 'Incepator');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(12, 'Profesionist');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(15, 'Intermediar');

INSERT INTO BARISTA (id_angajat, certificare_cafea) VALUES
(17, 'Incepator');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(3, 'Junior');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(5, 'Senior');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(10, 'Chef');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(11, 'Senior');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(14, 'Junior');

INSERT INTO BUCATAR (id_angajat, rang_bucatar) VALUES
(19, 'Chef');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Espresso', 5.00, 'S');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Espresso dublu', 10.00, 'M');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Americano', 9.00, 'S');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Cappuccino', 14.00, 'M');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Flat White', 16.00, 'M');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Matcha Latte', 25.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Caffe Latte', 15.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Ceai Alb', 15.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Ciocolata Calda', 16.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Ciocolata Alba Calda', 16.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Avocado Toast', 48.00, 'M');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Pancakes cu caramel', 32.00, 'M');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Shakshuka', 58.00, 'L');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Chia Bowl', 48.00, 'S');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Oua umplute', 18.00, 'S');

INSERT INTO PRODUS (denumire, pret, marime) VALUES ('Terci de ovaz cu fructe de padure', 27.00, 'M');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (1, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (2, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (3, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (4, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (5, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (6, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (7, 'Da');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (8, 'Nu');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (9, 'Nu');

INSERT INTO BAUTURA (id_produs, contine_cofeina) VALUES (10, 'Nu');

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (11, 'gluten, peste, oua, lactate');

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (12, 'gluten, oua, lactate');

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (13, 'gluten, oua, lactate');

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (14, NULL);

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (15, 'mustar, oua, lactate');

INSERT INTO BRUNCH (id_produs, alergeni) VALUES (16, 'gluten, nuci, lactate');

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Rasneste cafeaua fin. Tamponeaza in portafiltru. Lasa cafeaua sa curga.', 2, 1);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Rasneste cafeaua fin. Tamponeaza in portafiltru. Lasa cafeaua sa curga.', 4, 2);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Rasneste cafeaua fin. Tamponeaza in portafiltru. Lasa cafeaua sa curga. Toarna apa fierbinte peste.', 3, 3);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Se face un espresso. Abureste laptele pana devine spuma densa. Toarna laptele peste espresso.', 3, 4);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Se face un espresso dublu. Abureste laptele pana devine o spuma fina. Toarna laptele peste espresso.', 3, 5);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Cerne matcha in cana. Adauga apa calda si amesteca bine. Toarna laptele aburit peste.', 4, 6);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Face un espresso. Abureste mult lapte cu putina spuma. Toarna peste espresso.', 4, 7);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Incalzeste apa (fara sa fiarba). Toarna peste frunzele de ceai. Lasa la infuzat. Strecoara.', 6, 8);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Incalzeste laptele. Topeste ciocolata neagra in lapte amestecand.', 4, 9);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Incalzeste laptele. Topeste ciocolata alba in lapte amestecand.', 4, 10);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Prajeste painea. Paseaza avocado cu lamaie, sare si piper. Intinde pe paine. Adauga somon deasupra.', 9, 11);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Amesteca ingredientele pentru aluat. Prajeste in tigaie pe ambele parti. Topeste zaharul, adauga smantana si sare pentru caramel. Toarna deasupra.', 15, 12);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Caleste ceapa si ardeiul. Adauga rosiile si condimentele. Sparge ouale peste. Acopera si lasa pana se gatesc.', 25, 13);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Amesteca semintele chia cu lapte si indulcitor. Lasa la frigider 2 ore sau peste noapte. Adauga nuci la servire.', 5, 14);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Fierbe ouale tari. Taie-le pe jumatate. Scoate galbenusurile. Paseaza-le cu maioneza, sare si piper. Umple albusurile.', 18, 15);

INSERT INTO RETETA (instructiuni, timp_preparare, id_produs) VALUES ('Fierbe ovazul in lapte sau apa cu sare pana se ingroasa. Toarna in bol. Adauga fructele si toppingurile deasupra.', 10, 16);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Cafea boabe', 'g', 5000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ceai alb', 'g', 500.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Pudra matcha', 'g', 500.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Lapte vaca', 'mL', 20000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Apa', 'mL', 50000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Oua', 'buc', 60.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Lamaie', 'buc', 10.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ovaz', 'g', 2000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Faina', 'g', 3000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Avocado', 'buc', 10.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Fructe de padure', 'g', 2000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Zahar', 'g', 3000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Paine toast', 'buc', 50.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Rosii', 'g', 3000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Sare', 'g', 1000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ceapa', 'buc', 5.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Seminte chia', 'g', 500.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ulei masline', 'mL', 2000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ciocolata neagra', 'g', 1000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Ciocolata alba', 'g', 1000.00);

INSERT INTO INGREDIENT (nume_ingredient, unitate_masura, stoc) VALUES ('Somon', 'g', 2000.00);

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Boros', 'Teodora', 'teodora.boros@gmail.com', TO_DATE('31-05-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Nunu', 'Maria', 'maria.nunu@yahoo.com', TO_DATE('05-06-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Catana', 'Bogdan', 'bogdan.catana@gmail.com', TO_DATE('13-05-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Toader', 'Iulia', 'elena.constantin@outlook.com', TO_DATE('28-11-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Belceanu', 'Maria', 'maria.belceanu@gmail.com', TO_DATE('28-11-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Gherasim', 'Ion', 'ion.gherasim@yahoo.com', TO_DATE('16-12-2025', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email, data_inregistrare) VALUES ('Andreiu', 'Floarea', 'floarea.andreiu@gmail.com', TO_DATE('08-03-2026', 'DD-MM-YYYY'));

INSERT INTO CLIENT (nume_client, prenume_client, email) VALUES ('Vrinceanu', 'Maria', 'maria.vrinceanu@outlook.com');

INSERT INTO CLIENT (nume_client, prenume_client, email) VALUES ('Stan', 'Rares', 'rares.stan@gmail.com');

INSERT INTO CLIENT (nume_client, prenume_client, email) VALUES ('Popa', 'Ana', 'ana.popa@yahoo.com');

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0001', TO_DATE('31-05-2025', 'DD-MM-YYYY'), 62.00, 2, 1);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0002', TO_DATE('05-06-2025', 'DD-MM-YYYY'), 42.00, 2, 2);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0003', TO_DATE('13-05-2025', 'DD-MM-YYYY'), 74.00, 5, 3);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0004', TO_DATE('21-09-2025', 'DD-MM-YYYY'), 10.00, 5, NULL);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0005', TO_DATE('28-11-2025', 'DD-MM-YYYY'), 73.00, 9, 4);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0006', TO_DATE('28-11-2025', 'DD-MM-YYYY'), 33.00, 9, 5);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0007', TO_DATE('16-12-2025', 'DD-MM-YYYY'), 48.00, 12, 6);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0008', TO_DATE('25-01-2026', 'DD-MM-YYYY'), 9.00, 12, NULL);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0009', TO_DATE('08-03-2026', 'DD-MM-YYYY'), 76.00, 14, 7);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0010', TO_DATE('23-05-2026', 'DD-MM-YYYY'), 42.00, 14, 8);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0011', TO_DATE('23-05-2026', 'DD-MM-YYYY'), 32.00, 15, 9);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0012', TO_DATE('23-05-2026', 'DD-MM-YYYY'), 56.00, 15, 10);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0013', TO_DATE('01-05-2026', 'DD-MM-YYYY'), 28.00, 17, 1);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0014', TO_DATE('20-05-2026', 'DD-MM-YYYY'), 73.00, 17, 2);

INSERT INTO COMANDA (numar_comanda, data_comanda, total, id_angajat, id_client) VALUES ('0015', TO_DATE('18-05-2026', 'DD-MM-YYYY'), 41.00, 19, 3);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('31-05-2025', 'DD-MM-YYYY'), 8, 16);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('05-06-2025', 'DD-MM-YYYY'), 12, 20);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('13-05-2025', 'DD-MM-YYYY'), 8, 14);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('28-11-2025', 'DD-MM-YYYY'), 14, 22);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('16-12-2025', 'DD-MM-YYYY'), 8, 16);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('25-01-2026', 'DD-MM-YYYY'), 10, 18);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('08-03-2026', 'DD-MM-YYYY'), 8, 12);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('23-05-2026', 'DD-MM-YYYY'), 14, 20);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('01-05-2026', 'DD-MM-YYYY'), 9, 17);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('20-05-2026', 'DD-MM-YYYY'), 12, 18);

INSERT INTO TURA (data_tura, ora_inceput, ora_final) VALUES (TO_DATE('18-05-2026', 'DD-MM-YYYY'), 14, 18);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Peet`s Coffee SRL', 'Bucuresti', '0213456789', 'orders@peets.ro', 1);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Kolukkumalai Tea Export SRL', 'Bucuresti', '0268123456', 'orders@kolukkumalai.ro', 2);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Matcha Factory SRL', 'Bucuresti', '0235687454', 'orders@matcha.ro', 3);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Napolact SA', 'Cluj-Napoca', '0269772345', 'orders@napolact.ro', 4);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('ROMAQUA GROUP SA', 'Harghita', '0345200800', 'comenzi@borsec.ro', 5);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Toneli SA', 'Dambovita', '0259149159', 'contact@toneli.ro', 6);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 7);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Pirifan SA', 'Tunari', '0751430403', 'office@pirifan.ro', 8);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Pirifan SA', 'Tunari', '0751430403', 'office@pirifan.ro', 9);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 10);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 11);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 12);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Panimon SA', 'Onesti', '0725608057', 'office@panimon.ro', 13);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 14);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Pirifan SA', 'Tunari', '0751430403', 'office@pirifan.ro', 15);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Fresh-Fruits Logistics SRL', 'Ilfov', '0767917258', 'office@fresh-fruits.ro', 16);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Pirifan SA', 'Tunari', '0751430403', 'office@pirifan.ro', 17);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('Toneli SA', 'Dambovita', '0259149159', 'contact@toneli.ro', 18);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('SC Sweet SRL', 'Bihor', '0757152585', 'contact@depozituldeciocolata.ro', 19);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('SC Sweet SRL', 'Bihor', '0757152585', 'contact@depozituldeciocolata.ro', 20);

INSERT INTO FURNIZOR (nume_furnizor, oras, telefon, email, id_ingredient) VALUES ('OceanFish SA', 'Bucuresti', '0759557755', 'office@oceanfish.ro', 21);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (1, 4, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (1, 11, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (2, 2, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (2, 12, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (3, 5, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (3, 13, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (4, 1, 2);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (5, 6, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (5, 14, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (6, 7, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (6, 15, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (7, 10, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (7, 12, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (8, 3, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (9, 4, 2);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (9, 11, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (10, 8, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (10, 16, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (11, 12, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (12, 2, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (12, 4, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (12, 12, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (13, 4, 2);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (14, 6, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (14, 14, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (15, 9, 1);

INSERT INTO ALCATUIESTE (id_comanda, id_produs, cantitate) VALUES (15, 6, 1);

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (2, 1, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (1, 1, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (2, 2, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (4, 2, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (5, 3, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (7, 3, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (8, 4, 'Nu');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (9, 4, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (12, 5, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (10, 5, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (13, 5, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (11, 6, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (12, 6, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (14, 7, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (16, 7, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (14, 8, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (15, 8, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (17, 9, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (18, 9, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (17, 10, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (3, 10, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (8, 10, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (19, 11, 'Da');

INSERT INTO LUCREAZA (id_angajat, id_tura, confirmare) VALUES (6, 11, 'Da');

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (1, 1, 8.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (2, 1, 16.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (3, 1, 8.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (4, 1, 8.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (4, 4, 150.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (5, 1, 16.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (5, 4, 120.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (6, 3, 2.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (6, 4, 200.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (7, 1, 8.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (7, 4, 220.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (8, 2, 2.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (8, 5, 250.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (9, 4, 200.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (9, 19, 40.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (10, 4, 200.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (10, 20, 45.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (11, 13, 1.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (11, 10, 0.50);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (12, 9, 60.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (12, 6, 1.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (12, 4, 80.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (13, 6, 3.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (13, 14, 200.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (14, 17, 25.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (14, 4, 150.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (15, 6, 6.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (16, 8, 50.00);

INSERT INTO CONTINE (id_produs, id_ingredient, cantitate) VALUES (16, 11, 40.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (1, 1, 1, TO_DATE('15-02-2025', 'DD-MM-YYYY'), 2000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (1, 1, 2, TO_DATE('03-09-2025', 'DD-MM-YYYY'), 1500.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (11, 11, 1, TO_DATE('22-01-2026', 'DD-MM-YYYY'), 3000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (2, 2, 1, TO_DATE('10-12-2024', 'DD-MM-YYYY'), 5000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (2, 2, 2, TO_DATE('17-07-2025', 'DD-MM-YYYY'), 4000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (2, 2, 3, TO_DATE('05-11-2025', 'DD-MM-YYYY'), 3000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (14, 14, 1, TO_DATE('28-02-2026', 'DD-MM-YYYY'), 1000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (3, 3, 3, TO_DATE('12-12-2024', 'DD-MM-YYYY'), 2000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (9, 9, 4, TO_DATE('09-04-2025', 'DD-MM-YYYY'), 2500.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (4, 4, 1, TO_DATE('30-08-2025', 'DD-MM-YYYY'), 100.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (4, 4, 2, TO_DATE('14-03-2026', 'DD-MM-YYYY'), 80.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (13, 13, 1, TO_DATE('25-01-2025', 'DD-MM-YYYY'), 2000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (7, 7, 3, TO_DATE('19-10-2025', 'DD-MM-YYYY'), 30.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (5, 5, 2, TO_DATE('05-06-2025', 'DD-MM-YYYY'), 5000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (8, 8, 4, TO_DATE('18-05-2026', 'DD-MM-YYYY'), 2000.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (10, 10, 5, TO_DATE('07-02-2026', 'DD-MM-YYYY'), 1500.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (6, 6, 1, TO_DATE('23-09-2025', 'DD-MM-YYYY'), 500.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (6, 6, 2, TO_DATE('01-12-2024', 'DD-MM-YYYY'), 300.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (3, 3, 3, TO_DATE('11-11-2025', 'DD-MM-YYYY'), 200.00);

INSERT INTO LIVRARE (id_furnizor, id_ingredient, id_cafenea, data_livrare, cantitate_livrata) VALUES (1, 1, 3, TO_DATE('20-04-2026', 'DD-MM-YYYY'), 1000.00);

INSERT INTO COMANDA_LA VALUES (1, 1, TO_DATE('15-02-2025', 'DD-MM-YYYY'), 2000.00);

INSERT INTO COMANDA_LA VALUES (1, 11, TO_DATE('22-01-2026', 'DD-MM-YYYY'), 3000.00);

INSERT INTO COMANDA_LA VALUES (1, 2, TO_DATE('10-12-2024', 'DD-MM-YYYY'), 5000.00);

INSERT INTO COMANDA_LA VALUES (1, 14, TO_DATE('28-02-2026', 'DD-MM-YYYY'), 1000.00);

INSERT INTO COMANDA_LA VALUES (1, 4, TO_DATE('30-08-2025', 'DD-MM-YYYY'), 100.00);

INSERT INTO COMANDA_LA VALUES (1, 13, TO_DATE('25-01-2025', 'DD-MM-YYYY'), 2000.00);

INSERT INTO COMANDA_LA VALUES (1, 6, TO_DATE('23-09-2025', 'DD-MM-YYYY'), 500.00);

INSERT INTO COMANDA_LA VALUES (4, 1, TO_DATE('03-09-2025', 'DD-MM-YYYY'), 1500.00);

INSERT INTO COMANDA_LA VALUES (4, 2, TO_DATE('17-07-2025', 'DD-MM-YYYY'), 4000.00);

INSERT INTO COMANDA_LA VALUES (4, 4, TO_DATE('14-03-2026', 'DD-MM-YYYY'), 80.00);

INSERT INTO COMANDA_LA VALUES (4, 5, TO_DATE('05-06-2025', 'DD-MM-YYYY'), 5000.00);

INSERT INTO COMANDA_LA VALUES (4, 6, TO_DATE('01-12-2024', 'DD-MM-YYYY'), 300.00);

INSERT INTO COMANDA_LA VALUES (8, 2, TO_DATE('05-11-2025', 'DD-MM-YYYY'), 3000.00);

INSERT INTO COMANDA_LA VALUES (8, 3, TO_DATE('12-12-2024', 'DD-MM-YYYY'), 2000.00);

INSERT INTO COMANDA_LA VALUES (8, 7, TO_DATE('19-10-2025', 'DD-MM-YYYY'), 30.00);

INSERT INTO COMANDA_LA VALUES (8, 1, TO_DATE('20-04-2026', 'DD-MM-YYYY'), 1000.00);

INSERT INTO COMANDA_LA VALUES (13, 8, TO_DATE('18-05-2026', 'DD-MM-YYYY'), 2000.00);

INSERT INTO COMANDA_LA VALUES (13, 9, TO_DATE('09-04-2025', 'DD-MM-YYYY'), 2500.00);

INSERT INTO COMANDA_LA VALUES (16, 10, TO_DATE('07-02-2026', 'DD-MM-YYYY'), 1500.00);

COMMIT;
