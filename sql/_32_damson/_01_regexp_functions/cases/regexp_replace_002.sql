-- test for regexp_replace with optional arguments

--TEST: position argument
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 6);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 0);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', -1);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 999);

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2, 'i');

--TEST: occurrence argument
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 3);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, -1);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 999);

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL, 'i');

--TEST: match_type argument
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'i');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'c');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, '');

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'ia');

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, NULL);