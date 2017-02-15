ALTER SESSION SET `exec.sort.disable_managed` = false;
alter session set `planner.memory.max_query_memory_per_node` = 37127360;
alter session set `planner.width.max_per_node` = 1;
alter session set `planner.width.max_per_query` = 1;
create table dfs.drillTestDir.xsort_ctas1 partition by (dir0) as select col1, dir0 from dfs.`/drill/testdata/resource-manager/small_large_parquet`;
select count(*) from dfs.drillTestDir.xsort_ctas1;
drop table dfs.drillTestDir.xsort_ctas1;
ALTER SESSION SET `exec.sort.disable_managed` = true;
alter session set `planner.memory.max_query_memory_per_node` = 2147483648;
alter session set `planner.width.max_per_node` = 17;
alter session set `planner.width.max_per_query` = 1000;