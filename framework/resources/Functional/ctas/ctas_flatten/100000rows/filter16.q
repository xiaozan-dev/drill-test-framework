create table dfs.ctas_flatten.`filter16_100000rows_ctas` as select  s.rms.mapid  from (select d.type type, flatten(d.map.rm) rms from `data.json` d where d.map.rm[0].mapid='m1') s where s.rms.mapid='m2';
select * from dfs.ctas_flatten.`filter16_100000rows_ctas`;
drop table dfs.ctas_flatten.`filter16_100000rows_ctas`;
