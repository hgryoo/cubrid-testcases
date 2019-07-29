-- mandatory arguments
SELECT REGEXP_REPLACE ('TechOnTheNet is a great resource', '^(\S*)', 'CheckYourMath');

SELECT REGEXP_REPLACE ();

SELECT REGEXP_REPLACE ('abc');
SELECT REGEXP_REPLACE (name) from athlete LIMIT 5;
SELECT REGEXP_REPLACE ('abc', '#');

SELECT REGEXP_REPLACE ('aabbb', 'ab{-1,3}$', '#');
SELECT REGEXP_REPLACE ('aabbb', 'ab{3,2}$', '#');

SELECT REGEXP_REPLACE ('', 'a|e|i|o|u', '#');
SELECT REGEXP_REPLACE ('abc', '', '#');
SELECT REGEXP_REPLACE ('abc', 'a|e|i|o|u', '');
SELECT REGEXP_REPLACE ('', '', '#');
SELECT REGEXP_REPLACE ('', 'a|e|i|o|u', '');
SELECT REGEXP_REPLACE ('abc', '', '');
SELECT REGEXP_REPLACE ('', '', '');

SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', '#');
SELECT REGEXP_REPLACE ('abc', NULL, '#');
SELECT REGEXP_REPLACE ('abc', 'a|e|i|o|u', NULL);
SELECT REGEXP_REPLACE (NULL, NULL, '#');
SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', NULL);
SELECT REGEXP_REPLACE ('abc', NULL, NULL);
SELECT REGEXP_REPLACE (NULL, NULL, NULL);

-- optional arguments
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 6);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 'a');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 0);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', -5);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 9999);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', NULL);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', NULL, 2);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', NULL, 2, 'i');

SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 6);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 6, 'a');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 2, -1);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 9999);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, NULL);
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, NULL, 'i');

SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 3, 2, 'i');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 3, 2, 'c');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 0, '');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 0, 'i');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 2, 'ia');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 2, 'a');
SELECT REGEXP_REPLACE ('TechOnTheNet', 'a|e|i|o|u', '#', 1, 2, NULL);

SELECT 
REGEXP_REPLACE (name, '[a-d]', '#'), REGEXP_REPLACE (name, '[e-z]', '@') from athlete LIMIT 5;
SELECT REGEXP_REPLACE (name, '[a-d]', '#', 6, 0, 'i') from athlete LIMIT 5;
SELECT name FROM athlete 
WHERE LENGTH (REGEXP_REPLACE (name, '\s', '')) < 5;

DROP TABLE IF EXISTS new_athlete;
CREATE TABLE new_athlete ( encrypted_name VARCHAR ) AS SELECT REGEXP_REPLACE (name, '[a|e|i|o|u]', '#') AS encrypted_name from athlete LIMIT 10;
SELECT * from new_athlete;

DROP TABLE IF EXISTS new_athlete;
CREATE TABLE new_athlete (encrypted_name VARCHAR);
INSERT INTO new_athlete SELECT REGEXP_REPLACE (name, '[a|e|i|o|u]', '#') AS encrypted_name from athlete LIMIT 10;
SELECT * from new_athlete;

select 
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(c, 
     'Zh($|\s)', 'ZH\1'),
     'Be($|\s)', 'BE\1'),
     'Lu($|\s)', 'LU\1'),
     'Ur($|\s)', 'UR\1'),
     'Sz($|\s)', 'SZ\1'),
     'Ow($|\s)', 'OW\1'),
     'Nw($|\s)', 'NW\1'),
     'Gl($|\s)', 'GL\1'),
     'Zg($|\s)', 'ZG\1'),
     'Fr($|\s)', 'FR\1'),
     'So($|\s)', 'SO\1'),
     'Bs($|\s)', 'BS\1'),
     'Bl($|\s)', 'BL\1'),
     'Sh($|\s)', 'SH\1'),
     'Ar($|\s)', 'AR\1'),
     'Ai($|\s)', 'AI\1'), 
     'Sg($|\s)', 'SG\1'), 
     'Gr($|\s)', 'GR\1'), 
     'Ag($|\s)', 'AG\1'),
     'Tg($|\s)', 'TG\1'),
     'Ti($|\s)', 'TI\1'), 
     'Vd($|\s)', 'VD\1'),
     'Vs($|\s)', 'VS\1'), 
     'Ne($|\s)', 'NE\1'),
     'Ge($|\s)', 'GE\1'),
     'Ju($|\s)', 'JU\1')
    r
from (
  select 'Foo Ag'     c union all
  select 'Bar Zh Baz' c union all
  select 'Moo Ur 1'   c
);