with raw_data as (
    select
    distinct job
    from
    {{ ref('stg_emp_raw') }}
    order by
    job
)
select
row_number() over(order by job) job_id,
job
from
raw_data