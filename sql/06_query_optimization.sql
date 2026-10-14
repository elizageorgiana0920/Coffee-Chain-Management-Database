-- 06: Relational algebra query rewrite examples
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

-- Example 1: Original query
SELECT P.denumire, P.pret, C.numar_comanda, A.nume_angajat
FROM PRODUS P, ALCATUIESTE AL, COMANDA C, ANGAJAT A
WHERE P.id_produs=AL.id_produs AND AL.id_comanda=C.id_comanda AND C.id_angajat=A.id_angajat
AND P.pret>20
AND A.salariu_ora>40;

-- Example 2: Rewritten query
SELECT P.denumire, P.pret, C.numar_comanda, A.nume_angajat
FROM PRODUS P
JOIN ALCATUIESTE AL ON P.id_produs=AL.id_produs AND P.pret>20
JOIN COMANDA C ON AL.id_comanda=C.id_comanda
JOIN ANGAJAT A ON C.id_angajat=A.id_angajat AND A.salariu_ora>40;
