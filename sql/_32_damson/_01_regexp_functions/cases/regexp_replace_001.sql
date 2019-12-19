-- test for regexp_replace with mandatory arguments

--TEST: normal test
SELECT REGEXP_REPLACE ('Database that helps you turn your next big idea into reality', '^(\S*)', 'Cubrid');

--TEST: pass no arguments
SELECT REGEXP_REPLACE ();

--TEST: pass wrong number of arguments
SELECT REGEXP_REPLACE ('abc');
SELECT REGEXP_REPLACE ('abc', '#');

--TEST: wrong regular expression pattern error
SELECT REGEXP_REPLACE ('aabbb', 'ab{-1,3}$', '#');
SELECT REGEXP_REPLACE ('aabbb', 'ab{3,2}$', '#');

--TEST: pass an empty string into arguments
SELECT REGEXP_REPLACE ('', 'a|e|i|o|u', '#');
SELECT REGEXP_REPLACE ('abc', '', '#');
SELECT REGEXP_REPLACE ('abc', 'a|e|i|o|u', '');
SELECT REGEXP_REPLACE ('', '', '#');
SELECT REGEXP_REPLACE ('', 'a|e|i|o|u', '');
SELECT REGEXP_REPLACE ('abc', '', '');
SELECT REGEXP_REPLACE ('', '', '');

--TEST: pass NULL into arguments
SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', '#'); -- src
SELECT REGEXP_REPLACE ('abc', NULL, '#'); -- pattern
SELECT REGEXP_REPLACE ('abc', 'a|e|i|o|u', NULL); -- replace
SELECT REGEXP_REPLACE (NULL, NULL, '#'); -- src, pattern
SELECT REGEXP_REPLACE (NULL, 'a|e|i|o|u', NULL); -- src, replace
SELECT REGEXP_REPLACE ('abc', NULL, NULL); -- pattern, replace
SELECT REGEXP_REPLACE (NULL, NULL, NULL); -- src, pattern, replace
