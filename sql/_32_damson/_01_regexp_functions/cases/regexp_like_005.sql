-- NOT tests regexp_like(constant folding)
select regexp_like('a' ,'a'), not regexp_like('a','a');
select regexp_like('a' ,'a', 'c'), not regexp_like('a','a', 'c');

-- NOT tests regexp_like(prep statements)
prepare regex_st from 'select regexp_like(? ,?), not regexp_like(? ,?), regexp_like(? ,?, "c"), not regexp_like(?,?, "c")';
execute regex_st using 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a';

-- NOT tests regexp_like(table)
create table t(c char(10), s string);
insert into t values regexp_like('a', 'a');

select regexp_like(c ,s), not regexp_like(c ,s), regexp_like(c , s ,'c'), not regexp_like(c ,s ,'c') from t;
select regexp_like(s ,c), not regexp_like(s ,c), regexp_like(s , c ,'c'), not regexp_like(s ,c ,'c') from t;

select * from t where c ,s;
select * from t where s ,c;
select * from t where c not ,s;
select * from t where s not ,c;

drop table t;
