-- 07: Data modification examples - RUN INDIVIDUALLY; changes database state
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

-- Example from original doc paragraph 1423; inspect before running
UPDATE ANGAJAT
--modific daor pentru cei care au vechime>=1 an
SET salariu_ora=salariu_ora*(1+0.15*FLOOR(MONTHS_BETWEEN(SYSDATE, data_angajarii)/12))
WHERE FLOOR(MONTHS_BETWEEN(SYSDATE, data_angajarii)/12)>=1 AND
id_angajat IN (
SELECT id_angajat
FROM ANGAJAT A
WHERE EXISTS(
SELECT 1
FROM CAFENEA C
WHERE C.id_cafenea=A.id_cafenea));

-- Example from original doc paragraph 1446; inspect before running
UPDATE INGREDIENT I
SET stoc=stoc- (
SELECT NVL(SUM(AL.cantitate*CO.cantitate),0)
FROM CONTINE CO, ALCATUIESTE AL, COMANDA COM
WHERE CO.id_produs=AL.id_produs AND AL.id_comanda=COM.id_comanda AND CO.id_ingredient=I.id_ingredient AND EXTRACT(YEAR FROM COM.data_comanda)=2026)
WHERE id_ingredient IN (
SELECT CO2.id_ingredient
FROM CONTINE CO2, ALCATUIESTE AL2, COMANDA COM2
WHERE CO2.id_produs=AL2.id_produs AND AL2.id_comanda=COM2.id_comanda AND EXTRACT (YEAR FROM COM2.data_comanda)=2026);

-- Example from original doc paragraph 1469; inspect before running
DELETE FROM LUCREAZA
WHERE confirmare='Nu'
AND id_angajat NOT IN (
SELECT id_angajat
FROM MANAGER
);
