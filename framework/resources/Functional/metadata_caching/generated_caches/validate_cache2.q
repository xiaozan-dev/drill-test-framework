alter session set `store.json.all_text_mode` = true;
select * from `generated_caches/fewtypes_varcharpartition_cache.json`;
alter session set `store.json.all_text_mode` = false;
