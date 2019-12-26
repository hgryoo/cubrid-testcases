-- regular expression tests regexp_like(constant folding)
select regexp_like(null,'a');
select regexp_like('a',null);
select regexp_like(null,null);

select regexp_like('','a');
select regexp_like('a','');
select regexp_like('','');

select regexp_like(null,'');
select regexp_like('',null);

select regexp_like('a','^a$'), regexp_like('b','^a$');
select regexp_like('','^a*$'), regexp_like('aaa','^a*$'), regexp_like('baa','^a*$');
select regexp_like('a','^a+$'), regexp_like('aaa','^a+$'), regexp_like('','^a+$');
select regexp_like('','^a?$'), regexp_like('a','^a?$'), regexp_like('aa','^a?$');
select regexp_like('abbaababab','^(ab|ba)*$'), regexp_like('abb','^(ab|ba)*$');
select regexp_like('aaa','^a{3,5}$'), regexp_like('aaaaa','^a{3,5}$'), regexp_like('aa','^a{3,5}$');
select regexp_like('abcbabababc','^[abc]+$'), regexp_like('a','^[abc]+$'), regexp_like('abcdbcbcbabc','^[abc]+$');
select regexp_like('abcxacbxax','^[a-cx]+$'), regexp_like('xxaba','^[a-cx]+$'), regexp_like('dabcx','^[a-cx]+$');
select regexp_like('xyz','^[^a-w]*$'), regexp_like('xyz123!@#','^[^a-w]*$'), regexp_like('wxyz','^[^a-w]*$');
select regexp_like('~','^[[.tilde.]]$'), regexp_like('a','^[[.tilde.]]$');
select regexp_like('a fox is cute','\bfox\b'), regexp_like('a foxx is cute','\bfox\b');