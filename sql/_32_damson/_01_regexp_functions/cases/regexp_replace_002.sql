-- test for regexp_replace with optional arguments

--TEST: position argument
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 6);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 'a');
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 0);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', -1);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 999);

SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', NULL);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', NULL, 2, 'i');

--TEST: occurrence argument
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 3);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 'a');
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, -1);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 999);

SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL);
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, NULL, 'i');

--TEST: match_type argument
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'i');
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'c');
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, '');

SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'a');
SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, 'ia');

SELECT regexp_replace ('a fox is cute', 'a|e|i|o|u', '#', 1, 0, NULL);