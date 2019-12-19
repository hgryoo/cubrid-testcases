drop table if exists t1;
create table t1 (id int AUTO_INCREMENT , a varchar);
insert into T1(a) values ('I have a fox');
insert into T1(a) values ('fox has a human');
insert into T1(a) values ('any human and fox can live peacefully');
insert into T1(a) values ('');
insert into T1(a) values ('nofox here');
insert into T1(a) values ('lady is foxy');
insert into T1(a) values ('the foxx is not an animal');

select
  regexp_replace (a, '[a-d]', '#', 6, 0, i)
from t1;

--TEST: more than once in select list
select 
  a, 
  regexp_replace (a, '[a-d]', '#'), 
  regexp_replace (a, '[e-z]', '@')
from t1 order by 2, 3, 1;

--TEST: used in another expressions or funcions
select a from t1 
where length (regexp_replace (a, '\s', '')) < 5 order by 1;

--TEST: insert ... select
drop table if exists t2;
create table t2 ( reg_a varchar );
insert into t2 
select regexp_replace (a, '[a|e|i|o|u]', '#') AS reg_a from t1 order by 1;
drop table if exists t2;

--TEST: create table as select
drop table if exists t2;
create table t2 ( reg_a varchar ) as select regexp_replace (a, '[a|e|i|o|u]', '#') as reg_a from t1;
select * from t2 order by reg_a;
drop table if exists t2;

drop table if exists t1;
