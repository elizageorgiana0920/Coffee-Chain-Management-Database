-- 05: Reporting view definition
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

CREATE OR REPLACE VIEW VIEW_COMANDA AS
SELECT
COM.id_comanda, COM.total, COM.data_comanda,
CL.nume_client || ' ' || CL.prenume_client AS nume_complet_client,
A.nume_angajat || ' ' || A.prenume_angajat AS nume_complet_angajat
FROM COMANDA COM
LEFT JOIN CLIENT CL ON COM.id_client=CL.id_client
JOIN ANGAJAT A ON COM.id_angajat=A.id_angajat;
