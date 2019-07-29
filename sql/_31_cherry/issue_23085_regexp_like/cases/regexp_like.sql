-- from sql/_22_news_service_mysql_compatibility/_04_regular_expression/answers/_01_basic_test_01
--#1
select regexp_like ('a word file','\bWord\b');
select regexp_like ('__pa word _file','\bWord\b');
select regexp_like ('__pa  word  _file','\bWord\b');
select regexp_like ('__pa  word _file','\bWord\b');
select regexp_like ('__pa wrd  _file','\bWo?rd\b');
select regexp_like ('__pa 7_1 _file','\b[^_a-z09]_[0-1]\b');

--#0
select regexp_like ('a word file','\bWord\b', 'c');
select regexp_like ('__pa wordddd _file','\bWord{2,3}\b');
select regexp_like ('__pa a _file','\b[^a-z]\b');
select regexp_like ('__pa _1 _file','\b[^_a-z09][0-1]\b');
select regexp_like ('__pa 71 _file','\b[^_a-z09]_[0-1]\b');

--sql/_22_news_service_mysql_compatibility/_04_regular_expression/answers/_01_basic_test_05.answer

-- ...

--sql/_22_news_service_mysql_compatibility/_04_regular_expression/answers/_02_scenario_03.answer

-- ...