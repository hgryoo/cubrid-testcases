SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', ',[^,]+,');
SELECT REGEXP_SUBSTR();
SELECT REGEXP_SUBSTR ('abc');
SELECT REGEXP_SUBSTR ('aabbb', 'ab{-1,3}$');
SELECT REGEXP_SUBSTR('', ',[^,]+,');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '');
SELECT REGEXP_SUBSTR(NULL, ',[^,]+,');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', NULL);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 20);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 'a');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 0);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', -5);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 500);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', NULL);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 1);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 2);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 3);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 'ab');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 0);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, -2);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, 4);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-\w+', 1, NULL);
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'i');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'c');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, '');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'A');
SELECT REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, NULL);

SELECT REGEXP_SUBSTR(ip, '[^.]+', 1, 1) ip_1
     , REGEXP_SUBSTR(ip, '[^.]+', 1, 2) ip_2
     , REGEXP_SUBSTR(ip, '[^.]+', 1, 3) ip_3
     , REGEXP_SUBSTR(ip, '[^.]+', 1, 4) ip_4
  FROM (SELECT '10.100.10.1' ip
        UNION ALL SELECT '10.100.1.10'
        UNION ALL SELECT '100.10.1.20'
        UNION ALL SELECT '2.10.1.140') t
ORDER BY ip_1, ip_2, ip_3, ip_4;

SELECT DISTINCT REGEXP_SUBSTR (name, '[[:alpha:]]+', 1, 1) AS first_name FROM athlete LIMIT 5;

SELECT BIT_LENGTH( REGEXP_SUBSTR('Samseong-ro 86-gil, Gangnam-gu, Seoul', '\w+\-GU', 1, 1, 'i'));

WITH V_TEST AS (
SELECT 'hello@cubrid.com' EMAIL
)
SELECT REGEXP_SUBSTR(EMAIL, '[^@]+', 1, 1) AS id
, REGEXP_SUBSTR(EMAIL, '[^@]+', 1, 2) AS domain
FROM V_TEST;

DROP TABLE IF EXISTS first_name_store;
CREATE TABLE first_name_store ( first_name VARCHAR ) AS SELECT DISTINCT REGEXP_SUBSTR (name, '[[:alpha:]]+', 1, 1) AS first_name FROM athlete LIMIT 10;
SELECT * FROM first_name_store;

DROP TABLE IF EXISTS first_name_store;
CREATE TABLE first_name_store ( first_name VARCHAR );
INSERT INTO first_name_store SELECT DISTINCT REGEXP_SUBSTR (name, '[[:alpha:]]+', 1, 1) AS first_name from athlete LIMIT 10;
SELECT * FROM first_name_store;

SET NAMES utf8 COLLATE utf8_ko_cs;
SELECT REGEXP_SUBSTR('삼성로 86길, 강남구, 서울특별시', ',[^,]+,', 1, 1);
SELECT REGEXP_SUBSTR('삼성로 86길, 강남구, 서울특별시', '[[:alpha:]]+', 1, 3);
SELECT REGEXP_SUBSTR('11억 8112만 5400원', '\d+[[:alpha:]]', 3, 1);
SELECT REGEXP_SUBSTR (_euckr'가나다라' COLLATE euckr_bin, _utf8' [가-나]{4}' COLLATE utf8_ko_cs);
SELECT REGEXP_SUBSTR ('가나다라' COLLATE utf8_ko_cs,  _utf8' [த]' COLLATE utf8_tr_cs);
