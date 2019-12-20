-- test for regexp_replace with mandatory arguments

--TEST: normal test
SELECT regexp_replace ('Database that helps you turn your next big idea into reality', '^(\S*)', 'Cubrid');

--TEST: pass no arguments
SELECT regexp_replace ();

--TEST: pass wrong number of arguments
SELECT regexp_replace ('abc');
SELECT regexp_replace ('abc', '#');

--TEST: wrong regular expression pattern error
SELECT regexp_replace ('aabbb', 'ab{-1,3}$', '#');
SELECT regexp_replace ('aabbb', 'ab{3,2}$', '#');

--TEST: pass an empty string into arguments
SELECT regexp_replace ('', 'a|e|i|o|u', '#');
SELECT regexp_replace ('abc', '', '#');
SELECT regexp_replace ('abc', 'a|e|i|o|u', '');
SELECT regexp_replace ('', '', '#');
SELECT regexp_replace ('', 'a|e|i|o|u', '');
SELECT regexp_replace ('abc', '', '');
SELECT regexp_replace ('', '', '');

--TEST: pass NULL into arguments
SELECT regexp_replace (NULL, 'a|e|i|o|u', '#'); -- src
SELECT regexp_replace ('abc', NULL, '#'); -- pattern
SELECT regexp_replace ('abc', 'a|e|i|o|u', NULL); -- replace
SELECT regexp_replace (NULL, NULL, '#'); -- src, pattern
SELECT regexp_replace (NULL, 'a|e|i|o|u', NULL); -- src, replace
SELECT regexp_replace ('abc', NULL, NULL); -- pattern, replace
SELECT regexp_replace (NULL, NULL, NULL); -- src, pattern, replace
