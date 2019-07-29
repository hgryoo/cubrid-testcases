
-- from regexp001.sql
--+ holdcas on;
set names utf8;


SELECT REGEXP_LIKE('字符串1' ,'^字符');
SELECT REGEXP_LIKE('字符' ,BINARY  '字符串1');
SELECT REGEXP_LIKE('字符串1' ,'字符');

SELECT REGEXP_LIKE( cast( _utf8'12345가나다라마가나다라마' as string charset euckr), cast( _utf8'가' as string charset euckr));
SELECT REGEXP_LIKE(cast( _utf8'12345가나다라마가나다라마' as string charset euckr),BINARY cast( _utf8'가' as string charset euckr));


SELECT REGEXP_LIKE('Öö_Şş_Üü2' COLLATE iso88591_bin, 'ö' COLLATE iso88591_bin  );
SELECT REGEXP_LIKE('Öö_Şş_Üü2' COLLATE iso88591_bin,BINARY 'Ö' COLLATE iso88591_bin);


SELECT REGEXP_LIKE( cast( _utf8'Öö_Şş_Üü2' as string charset iso88591) , cast( _utf8'Öö_Ş' as string charset iso88591));
SELECT REGEXP_LIKE(cast( _utf8'Öö_Şş_Üü2' as string charset iso88591) , cast( _utf8'Öö_Ş' as string charset iso88591), 'c');

SELECT REGEXP_LIKE( cast( _utf8'Öö_Şş_Üü2' as string charset iso88591) , cast( _utf8'Öö_Şş' as string charset iso88591));
SELECT REGEXP_LIKE(cast( _utf8'Öö_Şş_Üü2' as string charset iso88591) , cast( _utf8'Öö_Şş' as string charset iso88591), 'c');



SELECT REGEXP_LIKE('chr(0)' ,'^字符');


set names iso88591;
commit;
--+ holdcas off;