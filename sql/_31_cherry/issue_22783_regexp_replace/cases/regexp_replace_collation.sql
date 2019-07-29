SET NAMES utf8 COLLATE utf8_ko_cs;
SELECT REGEXP_REPLACE('가나다라', '[가-힣]{4}', '한글');
SELECT REGEXP_REPLACE('가나다라', '[가-나]{4}', '한글');
SELECT REGEXP_REPLACE('가나다라', '[가-라]{4}', '한글');
SELECT REGEXP_REPLACE('가나다라', '[[:alpha:]]', '한글');
SELECT REGEXP_REPLACE('가나다라', '\w+', '한글');

SELECT REGEXP_REPLACE('a1가b2나다라', '[가-다]', '#', 6);
SELECT REGEXP_REPLACE('a1가b2나다라', '[a-z]', '유', 4);
SELECT REGEXP_REPLACE('a1가b2나다라', '\d', '숫자', 3);

SELECT REGEXP_REPLACE (_euckr'가나다라', _utf8' [가-나]{4}', _utf8'다른 문자셋');
SELECT REGEXP_REPLACE ('가나다라' COLLATE utf8_ko_cs,  _utf8' [த]' COLLATE utf8_tr_cs, 'INVALID');