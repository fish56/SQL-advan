show index from employee;

drop index birth_date_index
on employee;

-- create a index for birth_date_column
create index birth_date_index
on employee (birth_date);

select sql_no_cache *
from employee
where birth_date > '1955-11-11'
order by birth_date
limit 10
;


select sql_no_cache *
from employee
ignore index (PRIMARY)
where id = 10001
;


select *
from department_employee_rel;
select count(*) from department_employee_rel;

desc department_employee_rel;

select
  *
from department_employee_rel
where true
  and department_id = 3
  and from_date = '1989-09-12'
  and to_date is null
;

select sql_no_cache
  *
from employee
where true
  and 'ff-975616' = lower(personal_code)
--  and 'ff-975616' = personal_code
;

explain
select sql_no_cache
  id,
  personal_code
from employee
-- use index (ak_employee)
-- use index (PRIMARY)
use index (PRIMARY, ak_employee)
where (
  personal_code = '7c-91159'
  or
    id between 12380 and 12400
)
;

select @@version as version;
show variables ;