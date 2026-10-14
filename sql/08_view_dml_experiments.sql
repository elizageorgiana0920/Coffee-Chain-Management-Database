-- 08: View DML experiments. The INSERT is intentionally unsupported; expect Oracle error.
-- Extracted from the original university project documentation.
-- Oracle SQL dialect. Statements are preserved as written, except formatting.

-- Original source paragraph 1512
UPDATE VIEW_COMANDA
SET total = 50
WHERE id_comanda = 1;

-- Original source paragraph 1516
SELECT id_comanda, total FROM VIEW_COMANDA WHERE id_comanda = 1;

-- Original source paragraph 1518
ROLLBACK;

-- Original source paragraph 1521
INSERT INTO VIEW_COMANDA (id_comanda, total, data_comanda, nume_complet_client, nume_complet_angajat)
VALUES (999, 100, SYSDATE, 'Popescu Ion', 'Popescu Ionela');
