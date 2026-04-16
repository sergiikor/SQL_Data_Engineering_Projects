select
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
from
job_postings_fact
limit 10;

select *
from company_dim
where name in ('Google', 'Microsoft', 'Meta')
limit 10;

select *
from information_schema.tables
WHERE table_catalog = 'data_jobs';

select *
from information_schema.columns
WHERE table_catalog = 'data_jobs';

select table_name, column_name, data_type
from information_schema.columns
WHERE table_catalog = 'data_jobs';

pragma show_tables; --works in duckdb, mysql but not in postgres
DESCRIBE job_postings_fact; --works in mysql and duckdb but not in  postgres
