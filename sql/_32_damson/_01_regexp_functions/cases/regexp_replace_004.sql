-- test for nested calling regexp_replace function

select 
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(
  regexp_replace(c, 
     'Zh($|\s)', 'ZH\1'),
     'Be($|\s)', 'BE\1'),
     'Lu($|\s)', 'LU\1'),
     'Ur($|\s)', 'UR\1'),
     'Sz($|\s)', 'SZ\1'),
     'Ow($|\s)', 'OW\1'),
     'Nw($|\s)', 'NW\1'),
     'Gl($|\s)', 'GL\1'),
     'Zg($|\s)', 'ZG\1'),
     'Fr($|\s)', 'FR\1'),
     'So($|\s)', 'SO\1'),
     'Bs($|\s)', 'BS\1'),
     'Bl($|\s)', 'BL\1'),
     'Sh($|\s)', 'SH\1'),
     'Ar($|\s)', 'AR\1'),
     'Ai($|\s)', 'AI\1'), 
     'Sg($|\s)', 'SG\1'), 
     'Gr($|\s)', 'GR\1'), 
     'Ag($|\s)', 'AG\1'),
     'Tg($|\s)', 'TG\1'),
     'Ti($|\s)', 'TI\1'), 
     'Vd($|\s)', 'VD\1'),
     'Vs($|\s)', 'VS\1'), 
     'Ne($|\s)', 'NE\1'),
     'Ge($|\s)', 'GE\1'),
     'Ju($|\s)', 'JU\1')
    r
from (
  select 'Foo Ag'     c union all
  select 'Bar Zh Baz' c union all
  select 'Moo Ur 1'   c
);
