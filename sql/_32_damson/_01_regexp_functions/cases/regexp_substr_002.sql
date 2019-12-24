-- test for regexp_replace with optional arguments

--TEST: position argument
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 20);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 'a');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 0);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', -5);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 500);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', NULL);

--TEST: occurrence argument
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 1);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 3);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 'ab');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 0);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, -2);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 4);
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, NULL);

--TEST: match_type argument
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'i');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'c');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, '');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'A');
SELECT regexp_substr('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, NULL);
