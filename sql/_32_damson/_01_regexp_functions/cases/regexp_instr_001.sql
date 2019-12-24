-- test for regexp_instr with mandatory arguments

SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', ',[^,]+,');
SELECT REGEXP_INSTR();
SELECT REGEXP_INSTR ('abc');
SELECT REGEXP_INSTR ('aabbb', 'ab{-1,3}$');
SELECT REGEXP_INSTR('', ',[^,]+,');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '');
SELECT REGEXP_INSTR(NULL, ',[^,]+,');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', NULL);
