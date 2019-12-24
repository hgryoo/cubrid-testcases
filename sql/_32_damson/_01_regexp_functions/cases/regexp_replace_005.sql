-- test collation related functionality for regexp_replace
set names utf8 collate utf8_ko_cs;

-- TEST: test for regexp_replace for utf8_ko_cs string
SELECT regexp_replace('가나다라', '[가-힣]{4}', '한글');
SELECT regexp_replace('가나다라', '[가-나]{4}', '한글');
SELECT regexp_replace('가나다라', '[가-라]{4}', '한글');
SELECT regexp_replace('가나다라', '[[:alpha:]]', '한글');
SELECT regexp_replace('가나다라', '\w+', '한글');

SELECT regexp_replace('a1가b2나다라', '[가-다]', '#', 6);
SELECT regexp_replace('a1가b2나다라', '[a-z]', '유', 4);
SELECT regexp_replace('a1가b2나다라', '\d', '숫자', 3);

-- TEST: test arguments that has different codset
SELECT regexp_replace (_utf8'가나다라' collate utf8_ko_cs, _euckr' [가-나]{4}' collate euckr_bin, '다른 문자셋');
SELECT regexp_replace ('가나다라' collate utf8_ko_cs,  _utf8' [த]' collate utf8_tr_cs, 'INVALID');
SELECT regexp_replace ('가나다라' collate utf8_ko_cs,  _utf8' [த]' collate utf8_ko_cs, 'INVALID');

set names iso88591;
