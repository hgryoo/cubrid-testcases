--+ holdcas on;
set names utf8;
Create table t (col1 char(10) collate utf8_ko_cs_uca,col2 varchar(10) collate utf8_ko_cs_uca,col3 nchar(10) collate utf8_ko_cs_uca,col4 NCHAR VARYING(10) collate utf8_ko_cs_uca,col5 string collate utf8_ko_cs_uca);
insert into t values('가伽佳假價加可呵哥嘉','가伽佳假價加可呵哥嘉',N'가伽佳假價加可呵哥嘉',N'가伽佳假價加可呵哥嘉','가伽佳假價加可呵哥嘉');
insert into t values('각刻却各恪慤殼珏脚覺','각刻却各恪慤殼珏脚覺',N'각刻却各恪慤殼珏脚覺',N'각刻却各恪慤殼珏脚覺','각刻却各恪慤殼珏脚覺');
insert into t values('가刻却各恪慤殼珏脚覺','가刻却各恪慤殼珏脚覺',N'가刻却各恪慤殼珏脚覺',N'가刻却各恪慤殼珏脚覺','가刻却各恪慤殼珏脚覺');
insert into t values('각伽佳假價加可呵哥嘉','각伽佳假價加可呵哥嘉',N'각伽佳假價加可呵哥嘉',N'각伽佳假價加可呵哥嘉','각伽佳假價加可呵哥嘉');
insert into t values('각刊墾奸姦干幹懇揀杆','각刊墾奸姦干幹懇揀杆',N'각刊墾奸姦干幹懇揀杆',N'각刊墾奸姦干幹懇揀杆','각刊墾奸姦干幹懇揀杆');
insert into t values('가假價加可呵哥嘉嫁家','가假價加可呵哥嘉嫁家',N'가假價加可呵哥嘉嫁家',N'가假價加可呵哥嘉嫁家','가假價加可呵哥嘉嫁家');
insert into t values('가佳假價加可呵哥嘉嫁','가佳假價加可呵哥嘉嫁',N'가佳假價加可呵哥嘉嫁',N'가佳假價加可呵哥嘉嫁','가佳假價加可呵哥嘉嫁');

update t set col1='0x12345678' where col1 like '_刻%';
select * from t order by 1,2;
update t set col1='0x12345678' where col2 like '_伽%';
select * from t order by 1,2;
update t set col1='0x12345678' where col3 like N'가%';
select * from t order by 1,2;
update t set col1='0x12345678' where col4 like N'%嫁';
select * from t order by 1,2;
update t set col1='0x12345678' where col5 like '%可%';
select * from t order by 1,2;
drop table t;
set names iso88591;
commit;
--+ holdcas off;