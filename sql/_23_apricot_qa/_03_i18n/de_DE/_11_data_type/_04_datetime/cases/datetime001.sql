--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = de_DE';
set system parameters 'intl_date_lang = de_DE';
create table t( a datetime);
insert into t value(TO_DATETIME('2011-05-01 SONNTAG 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF'));
insert into t value(TO_DATETIME('2011-05-01 sonntag', 'yyyy-MM-DD day'));
insert into t value(TO_DATETIME('2011-05-01 SO.', 'yyyy-MM-DD DY'));
insert into t value(TO_DATETIME('2011-05-03 di.', 'yyyy-MM-DD dy'));
insert into t value(TO_DATETIME('2010-01 JANUAR', 'yyyy-dd MONTH'));
insert into t value(TO_DATETIME('2010-01 dezember', 'yyyy-dd month'));
insert into t value(TO_DATETIME('2010-01 jan', 'yyyy-dd mon'));
select a+1 from t order by 1;
select a-1 from t order by 1;
drop table t;
set system parameters 'intl_date_lang = en_US';
set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;