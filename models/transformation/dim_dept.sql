with raw_data as (
    select
    distinct dept
    from
    {{ ref('stg_emp_raw') }}
)
select
row_number() over(order by dept) dept_id,
dept
from
raw_data