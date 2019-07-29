SELECT REGEXP_COUNT('123123123123123', '(12)3', 1, 'i');
SELECT REGEXP_COUNT();
SELECT REGEXP_COUNT ('abc');
SELECT REGEXP_COUNT ('aabbb', 'ab{-1,3}$');
SELECT REGEXP_COUNT('', ',[^,]+,');
SELECT REGEXP_COUNT('123', '');
SELECT REGEXP_COUNT(NULL, ',[^,]+,');
SELECT REGEXP_COUNT('123123123123123', NULL);
SELECT REGEXP_COUNT('123123123123123', '(12)3', 5);
SELECT REGEXP_COUNT('123123123123123', '(12)3', 'a');
SELECT REGEXP_COUNT('123123123123123', '(12)3', 0);
SELECT REGEXP_COUNT('123123123123123', '(12)3', -3);
SELECT REGEXP_COUNT('123123123123123', '(12)3', 500);
SELECT REGEXP_COUNT('123123123123123', '(12)3', NULL);
SELECT REGEXP_COUNT('ABCABCabcabc', 'a|b', 1, 'i');
SELECT REGEXP_COUNT('ABCABCabcabc', 'a|b', 1, 'c');
SELECT REGEXP_COUNT('ABCABCabcabc', 'a|b', 1, '');
SELECT REGEXP_COUNT('ABCABCabcabc', 'a|b', 1, 'a');
SELECT REGEXP_COUNT('ABCABCabcabc', 'a|b', 1, NULL);

SELECT DISTINCT REGEXP_COUNT (name, '[[:alpha:]]+') FROM athlete;
SELECT name FROM athlete WHERE REGEXP_COUNT (name, '[[:alpha:]]+') > 5;

DROP TABLE IF EXISTS many_word_name;
CREATE TABLE many_word_name ( name VARCHAR ) AS SELECT name FROM athlete WHERE REGEXP_COUNT (name, '[[:alpha:]]+') > 4;
SELECT * FROM many_word_name;

DROP TABLE IF EXISTS many_word_name;
CREATE TABLE many_word_name ( name VARCHAR );
INSERT INTO many_word_name SELECT name FROM athlete WHERE REGEXP_COUNT (name, '[[:alpha:]]+') > 4;
SELECT * FROM many_word_name;

SET NAMES utf8 COLLATE utf8_ko_cs;
SELECT REGEXP_COUNT('가나다가나다가나다라', '(가나)다', 1);
SELECT REGEXP_COUNT('가나 가나다라 마바사아 자차카타 파하', '[[:alpha:]]+', 1);
SELECT REGEXP_COUNT('11억 8112만 5400 won 더하기 420만 4432 won', '[[:alpha:]]', 8);
SELECT REGEXP_COUNT (_euckr'가나다라' COLLATE euckr_bin, _utf8' [가-나]' COLLATE utf8_ko_cs);
SELECT REGEXP_COUNT ('가나다라' COLLATE utf8_ko_cs,  _utf8' [த]' COLLATE utf8_tr_cs);
SELECT REGEXP_COUNT('abcabcabcabcabc', 'abc', 1) AS C1, REGEXP_COUNT('abcabcabcabcabc', 'abc', 4) AS C2;
