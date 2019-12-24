-- test for regexp_substr with mandatory arguments

--TEST: normal test
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', ',[^,]+,');

--TEST: pass no arguments
SELECT regexp_substr();

--TEST: pass wrong number of arguments
SELECT regexp_substr ('abc');

--TEST: wrong regular expression pattern error
SELECT regexp_substr ('aabbb', 'ab{-1,3}$');
SELECT regexp_substr ('aabbb', 'ab{3,2}$');

--TEST: pass an empty string into arguments
SELECT regexp_substr('', ',[^,]+,');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '');
SELECT length(regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', ''));

--TEST: pass NULL into arguments
SELECT regexp_substr(NULL, ',[^,]+,');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', NULL);
