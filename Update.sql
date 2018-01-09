#Update one MySQL table with values from another

UPDATE tobeupdated
INNER JOIN original ON (tobeupdated.value = original.value)
SET tobeupdated.id = original.id
