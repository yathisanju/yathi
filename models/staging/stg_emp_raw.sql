{{
    config(
        materialized='table'
    )
}}

select 
empno,
lower(ename) as Emp_name,
job,
mgr,
hiredate,
--coalesce(try_to_date(hiredate,'dd-mm-yyyy'),
--try_to_date(hiredate,'mm/dd/yyyy')) as hiredate2,
sal,
comm,
dept 
from 
{{ source('raw', 'emp_raw') }}