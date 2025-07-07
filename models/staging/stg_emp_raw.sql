select 
empno,
lower(ename) as Emp_name,
job,
mgr,
hiredate,
coalesce(try_to_date('dd-mm-yyyy'),
try_to_date('mm/dd/yyyy')) as hiredate2,
sal,
comm,
dept 
from 
DEV_DB.RAW.EMP_RAW