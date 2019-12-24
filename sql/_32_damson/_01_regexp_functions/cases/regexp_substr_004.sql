SELECT regexp_substr(ip, '[^.]+', 1, 1) ip_1
     , regexp_substr(ip, '[^.]+', 1, 2) ip_2
     , regexp_substr(ip, '[^.]+', 1, 3) ip_3
     , regexp_substr(ip, '[^.]+', 1, 4) ip_4
  FROM (SELECT '10.100.10.1' ip
        UNION ALL SELECT '10.100.1.10'
        UNION ALL SELECT '100.10.1.20'
        UNION ALL SELECT '2.10.1.140') t
ORDER BY ip_1, ip_2, ip_3, ip_4;

SELECT regexp_substr(v, '[^@]+', 1, 1)
, regexp_substr(v, '[^@]+', 1, 2)
FROM (SELECT 'hello@cubrid.com') AS email(v);