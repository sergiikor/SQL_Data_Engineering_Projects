EXPLAIN ANALYZE --this command execute and analyze the execution while explain alone does not execute
select 
cd.name as Company_name,
count(jpf.job_id) as postings_count
from
job_postings_fact as jpf
LEFT JOIN   company_dim as cd   
ON jpf.company_id = cd.company_id
WHERE jpf.job_country = 'United States'
group by cd.name
HAVING COUNT(jpf.job_id) > 3000
order by postings_count DESC
limit 20;
