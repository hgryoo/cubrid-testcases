-- test for regexp_instr with optional arguments
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 20);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 'a');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 0);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', -5);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 500);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', NULL);

SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 1);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 3);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 'ab');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 0);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, -2);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 4);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, NULL);

SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2, 0);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2, 1);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2, 3);
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2, 'a');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2, NULL);

SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 0, 'i');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 0, 'c');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 0, '');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 0, 'A');
SELECT REGEXP_INSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 0, NULL);

