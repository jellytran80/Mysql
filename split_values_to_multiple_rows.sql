#split values to multiple rows

CREATE TABLE tablename (
  id INT,
  name VARCHAR(20));

INSERT INTO tablename VALUES
(1, 'a,b,c'),
(2, 'd');

SELECT
  tablename.id,
  SUBSTRING_INDEX(SUBSTRING_INDEX(tablename.name, ',', numbers.n), ',', -1) name
FROM
  (SELECT 1 n UNION ALL SELECT 2
   UNION ALL SELECT 3 UNION ALL SELECT 4) numbers INNER JOIN tablename
  ON CHAR_LENGTH(tablename.name)
     -CHAR_LENGTH(REPLACE(tablename.name, ',', ''))>=numbers.n-1
ORDER BY
  id, n
