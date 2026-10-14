-- 04: Advanced reporting and analytic queries
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

WITH raport_cafenea AS (
--calculeaza numarul de comenzi plasate de fiecare client in fiecare cafenea
SELECT CO.id_client, C.oras || ' - ' || C.adresa AS adresa_cafenea, COUNT(*) AS nr_comenzi_cafenea
FROM COMANDA CO
JOIN ANGAJAT A ON CO.id_angajat=A.id_angajat
JOIN CAFENEA C ON A.id_cafenea=C.id_cafenea
GROUP BY CO.id_client, C.oras, C.adresa
),
raport_produs AS (
--calculeaza cantitatea totala din fiecare produs  comandat de client
SELECT CO.id_client, P.denumire, SUM(AL.cantitate) AS total_cant
FROM COMANDA CO
JOIN ALCATUIESTE AL ON CO.id_comanda=AL.id_comanda
JOIN PRODUS P ON AL.id_produs=P.id_produs
GROUP BY CO.id_client, P.denumire
),
total_client AS (
--numara in cate cafenele diferite a plasat comenzi fiecare client
SELECT CO.id_client, COUNT(DISTINCT A.id_cafenea) AS nr_cafenele_diferite
FROM COMANDA CO
JOIN ANGAJAT A ON CO.id_angajat=A.id_angajat
GROUP BY CO.id_client
)
SELECT
--am respectat cerinta e, am folosit doua functii pe siruri de caractere; UPPER si INITCAP
UPPER (CL.nume_client) || ' ' || INITCAP(CL.prenume_client) AS client_nume,
--am respectat cerinta e, am folosit foua functii pe date calendarisitice; MONTHS BETWEEN si SYSDATE
--calculeaza vechimea clientului
ROUND (MONTHS_BETWEEN (SYSDATE, CL.data_inregistrare)) AS luni_de_cand_este_client,
--subcerere sincronizara pentru a gasi adresa cafenelei cu cele mai multe comenzi pentru fiecare client
(SELECT AC1.adresa_cafenea
FROM raport_cafenea AC1
WHERE AC1.id_client=CL.id_client
AND AC1.nr_comenzi_cafenea=(SELECT MAX(AC2.nr_comenzi_cafenea)
FROM raport_cafenea AC2
WHERE AC2.id_client=CL.id_client)
AND ROWNUM=1) AS cafeneaua_preferata,
--subcerere sincronizata pentru a gasi produsul comandat in cantitatea cea mai mare
(SELECT PF1.denumire
FROM raport_produs PF1
WHERE PF1.id_client=CL.id_client
AND PF1.total_cant=(SELECT MAX(PF2.total_cant)
FROM raport_produs PF2
WHERE PF2.id_client=CL.id_client)
AND ROWNUM=1) AS produsul_preferat,
--in fucntie de numarul de cafenele vizitate primeste un status, daca a vizitat doar o cafenea primeste 'fidel'
DECODE(FI.nr_cafenele_diferite,
1, 'Client Fidel',
'Client Calator') AS insigna_fidelitate
FROM CLIENT CL, total_client FI
WHERE CL.id_client=FI.id_client
ORDER BY luni_de_cand_este_client DESC;

SELECT C.oras, C.adresa,
--cerinta c, am folosit functii de grup: COUNT și SUM
COUNT(CO.id_comanda) AS numar_comenzi,
SUM(CO.total) AS total_vanzari,
--adun totalul doar daca anul se potriveste
SUM(DECODE(TO_CHAR(CO.data_comanda, 'YYYY'), '2024', CO.total, 0)) AS vanzari_2024,
SUM(DECODE(TO_CHAR(CO.data_comanda, 'YYYY'), '2025', CO.total, 0)) AS vanzari_2025,
SUM(DECODE(TO_CHAR(CO.data_comanda, 'YYYY'), '2026', CO.total, 0)) AS vanzari_2026
FROM CAFENEA C, ANGAJAT A, COMANDA CO
WHERE C.id_cafenea=A.id_cafenea AND A.id_angajat=CO.id_angajat
--cerinta c, am folosit grupari de date
GROUP BY C.id_cafenea, C.oras, C.adresa
--cerinta c, am folosit filtrarea la nivel de grupuri cu subcerere nesicronizata in care intervin cel putin 3 tabele
--pastrez doar cafenelele a caror suma totala e mai mare decat media
HAVING SUM(CO.total)>(
SELECT AVG(total_cafenea)
FROM (
SELECT SUM(CO2.total) AS total_cafenea
FROM CAFENEA C2, ANGAJAT A2, COMANDA CO2
WHERE C2.id_cafenea=A2.id_cafenea AND A2.id_angajat=CO2.id_angajat
GROUP BY c2.id_cafenea
)
)
ORDER BY total_vanzari DESC;

SELECT
--am bifat de la cerinta e ultilizarea de functii de carcatere  UPPER si INITCAP
UPPER (A.nume_angajat) || ' ' || INITCAP(A.prenume_angajat) AS angajat_nume,
--din d am folosit functia DECODE pentru a identifica rolul angajatului
DECODE ( 1,
(SELECT 1
FROM MANAGER M
WHERE M.id_angajat=A.id_angajat), 'Manager',
(SELECT 1
FROM BARISTA B
WHERE B.id_angajat=A.id_angajat), 'Barista',
'Bucatar'
)AS rol_angajat,
--din cerinta c am functie de grup pentru a numara cate ture a lucrat fiecare angajat, doar pe cele confirmate cu da
COUNT (CASE
WHEN L.confirmare='Da' THEN
L.id_tura
END) AS numar_ture_lucrate,
--din cerinta d am lucrat cu NVL pentru a pune 0 atunci cand un angajat nu a lucrat deloc, iar daca a lucrat se afiseaza salariul
NVL(
--functie de grup SUM pentru a face suma orelor multiplicate cu orele pe o tura
SUM(CASE
WHEN L.confirmare='Da' THEN (T.ora_final-T.ora_inceput)*A.salariu_ora
END),
0
) AS salariu_primit
FROM ANGAJAT A
--folosesc LEFT JOIN pentru a nu pierde angajatii care nu au nicio tura lucrata
LEFT JOIN LUCREAZA L ON A.id_angajat=L.id_angajat
LEFT JOIN TURA T ON L.id_tura=T.id_tura
--din cerinta c, grupari de date
GROUP BY A.id_angajat, A.nume_angajat, A.prenume_angajat, A.salariu_ora
--din cerinta d, orodonare dupa salariul total
ORDER BY salariu_primit DESC;

WITH produse_info AS (
--aflu numarul de ingrediente din fiecare reteta
SELECT P.id_produs, P.denumire, P.pret, P.marime, R.timp_preparare, COUNT(CO.id_ingredient) AS nr_ingrediente
FROM PRODUS P, RETETA R, CONTINE CO
WHERE P.id_produs=R.id_produs
AND R.id_produs=CO.id_produs
GROUP BY P.id_produs, P.denumire, P.pret, P.marime, R.timp_preparare
),
categorie_produs AS (
--folosesc union pentru a unifica si clasifica produsele in functie de subentitatea de care apartin
SELECT P.id_produs, 'Bautura' AS categorie
FROM PRODUS p, BAUTURA B
WHERE P.id_produs = B.id_produs
UNION
SELECT P.id_produs, 'Brunch' AS categorie
FROM PRODUS p, BRUNCH BR
WHERE P.id_produs = BR.id_produs
)
SELECT
UPPER(PI.denumire) AS denumire_produs,
SUBSTR(CP.categorie, 1, 7) AS categorie,
PI.pret,
PI.marime,
--am concatenat pentru a adauga minute
PI.timp_preparare || ' minute' AS timp_prep,
PI.nr_ingrediente,
--criteriul de decidere a complexitatii
CASE
WHEN PI.timp_preparare <= 5 THEN 'Preparare rapida'
WHEN PI.timp_preparare <= 10 THEN 'Preparare medie'
ELSE 'Preparare lunga'
END AS complexitate
FROM produse_info PI, categorie_produs CP
--realizez legatura dintre cele doua tabele
WHERE PI.id_produs=CP.id_produs
--ordonez descrescator timpului necesar prepararii
ORDER BY PI.timp_preparare;

SELECT
A.nume_angajat||' '||A.prenume_angajat AS manager,
F.nume_furnizor,
I.nume_ingredient,
CL.cantitate_comandata||' '||I.unitate_masura AS cantitate_livrata,
TO_CHAR(CL.data_comanda, 'DD/MM/YYYY') AS data_comanda,
TOTAL.cantitate_totala_achizitionata
FROM ANGAJAT A, MANAGER M, COMANDA_LA CL, FURNIZOR F, INGREDIENT I,
--cerinta b, subcerere nesincronizata in clauza FROM
--insumeaza cantitatea  totala comandata de angajat
(SELECT id_angajat, SUM(cantitate_comandata) AS cantitate_totala_achizitionata
FROM COMANDA_LA
GROUP BY id_angajat) TOTAL
WHERE A.id_angajat=M.id_angajat AND M.id_angajat=CL.id_angajat AND CL.id_furnizor=F.id_furnizor AND F.id_ingredient=I.id_ingredient AND A.id_angajat=TOTAL.id_angajat
--cerinta a, subcerere sincronizata cu 3 tabele CONTINE, RETETA, PRODUS
AND 1<=(
SELECT COUNT(CO.id_produs)
FROM CONTINE CO, RETETA R, PRODUS P
WHERE CO.id_produs=P.id_produs
AND P.id_produs=R.id_produs
AND CO.id_ingredient=I.id_ingredient
)
ORDER BY TOTAL.cantitate_totala_achizitionata DESC, A.nume_angajat;

SELECT
I.nume_ingredient,
I.stoc || ' ' || I.unitate_masura AS stoc_curent,
P.denumire AS nume_produs,
COM.id_comanda,
TO_CHAR(COM.data_comanda, 'DD-MM-YYYY') AS data_vanzare
FROM INGREDIENT I
LEFT OUTER JOIN CONTINE CO ON I.id_ingredient=CO.id_ingredient
LEFT OUTER JOIN PRODUS P ON CO.id_produs=P.id_produs
LEFT OUTER JOIN ALCATUIESTE AL ON P.id_produs=AL.id_produs
LEFT OUTER JOIN COMANDA COM ON AL.id_comanda=COM.id_comanda
ORDER BY I.nume_ingredient;

SELECT P.id_produs, P.denumire, P.pret
FROM PRODUS P
WHERE NOT EXISTS (
--selectez toate comenzile din anul curent
SELECT COM.id_comanda
FROM COMANDA COM
WHERE EXTRACT(YEAR FROM COM.data_comanda)=2026
AND NOT EXISTS( --verific daca produsul curent lipseste din comanda curenta
SELECT 1
FROM ALCATUIESTE AL
WHERE AL.id_produs=P.id_produs AND AL.id_comanda=COM.id_comanda ) );

SELECT *
FROM (
SELECT A.nume_angajat || ' ' || A.prenume_angajat AS nume_angajat, COUNT(L.id_tura) AS total_ture_confirmate
FROM ANGAJAT A
JOIN LUCREAZA L ON A.id_angajat=L.id_angajat
WHERE L.confirmare='Da'
GROUP BY A.id_angajat, A.nume_angajat, A.prenume_angajat
ORDER BY total_ture_confirmate DESC
)
WHERE ROWNUM<=4;
