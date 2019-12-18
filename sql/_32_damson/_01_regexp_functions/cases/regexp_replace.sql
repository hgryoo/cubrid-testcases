
-- test for regexp_replace with mandatory arguments
SELECT REGEXP_REPLACE ('Database that helps you turn your next big idea into reality', '^(\S*)', 'Cubrid');

SELECT REGEXP_REPLACE ();
SELECT REGEXP_REPLACE ('abc');
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

SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', '#'); -- src
SELECT REGEXP_REPLACE ('abc', NULL, '#'); -- pattern
SELECT REGEXP_REPLACE ('abc', 'a|e|i|o|u', NULL); -- replace
SELECT REGEXP_REPLACE (NULL, NULL, '#'); -- src, pattern
SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', NULL); -- src, replace
SELECT REGEXP_REPLACE ('abc', NULL, NULL); -- pattern, replace
SELECT REGEXP_REPLACE (NULL, NULL, NULL); -- src, pattern, replace


-- test for wrong regular expression pattern
SELECT REGEXP_REPLACE ('aabbb', 'ab{-1,3}$', '#');
SELECT REGEXP_REPLACE ('aabbb', 'ab{3,2}$', '#');


-- test for regexp_replace with optional arguments

-- position
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 6);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 0);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', -1);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 999);

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2, 'i');

-- occurrence
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 3);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, -1);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 999);

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL);
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL, 'i');

-- match_type
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'i');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'c');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, '');

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'a');
SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'ia');

SELECT REGEXP_REPLACE ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, NULL);