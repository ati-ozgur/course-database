

-- Create a test table with data

create table t1(a int, b int, c int);
insert into t1 values(1,0,0);
insert into t1 values(2,0,1);
insert into t1 values(3,1,0);
insert into t1 values(4,1,1);
insert into t1 values(5,null,0);
insert into t1 values(6,null,1);
insert into t1 values(7,null,null);

-- Check to see what CASE does with NULLs in its test expressions

select a, case when b<>0 then 1 else 0 end from t1;
select a+10, case when not b<>0 then 1 else 0 end from t1;
select a+20, case when b<>0 and c<>0 then 1 else 0 end from t1;
select a+30, case when not (b<>0 and c<>0) then 1 else 0 end from t1;
select a+40, case when b<>0 or c<>0 then 1 else 0 end from t1;
select a+50, case when not (b<>0 or c<>0) then 1 else 0 end from t1;
select a+60, case b when c then 1 else 0 end from t1;
select a+70, case c when b then 1 else 0 end from t1;

-- What happens when you multiply a NULL by zero?
select a+80, b*0 from t1;
select a+90, b*c from t1;

-- What happens to NULL for other operators?
select a+100, b+c from t1;

-- Test the treatment of aggregate operators
select count(*), count(b), sum(b), avg(b), min(b), max(b) from t1;

-- Check the behavior of NULLs in WHERE clauses
select a+110 from t1 where b<10;
select a+120 from t1 where not b>10;
select a+130 from t1 where b<10 OR c=1;
select a+140 from t1 where b<10 AND c=1;
select a+150 from t1 where not (b<10 AND c=1);
select a+160 from t1 where not (c=1 AND b<10);

-- Check the behavior of NULLs in a DISTINCT query
select distinct b from t1;

-- Check the behavior of NULLs in a UNION query
select b from t1 union select b from t1;

-- Create a new table with a UNIQUE column.  
-- Check to see if NULLs are considered
-- to be DISTINCT.
create table t2(a int, b int unique);
insert into t2 values(1,1);
insert into t2 values(2,null);
insert into t2 values(3,null);
select * from t2;

drop table t1;
drop table t2;
