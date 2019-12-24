-- operator syntax test
select regexp_like('abc',            'abc'), regexp_like('ABC',            'abc');
select regexp_like('abc',           'abc'), regexp_like('ABC',           'abc');
select !regexp_like('abc' ,        'abc'), !regexp_like('ABC' ,        'abc');
select !regexp_like('abc' ,       'abc'), !regexp_like('ABC' ,       'abc');
select regexp_like('abc',      'abc', 'c'), regexp_like('ABC',      'abc', 'c');
select regexp_like('abc',     'abc', 'c'), regexp_like('ABC',     'abc', 'c');
select !regexp_like('abc' ,  'abc', 'c'), regexp_like('ABC' ,  'abc', 'c');
select !regexp_like('abc' , 'abc', 'c'), regexp_like('ABC' , 'abc', 'c');
