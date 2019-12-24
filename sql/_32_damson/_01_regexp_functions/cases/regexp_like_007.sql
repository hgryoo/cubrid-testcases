-- regular expression syntax errors
select regexp_like('','a{5,3}');
select regexp_like('','((a)');
