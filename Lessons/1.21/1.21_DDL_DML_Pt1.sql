--checkkkkkkkkk
-- .read Lessons/1.21/1.21_DDL_DML_Pt1.sql
use data_jobs;
Drop database if exists jobs_mart;
show databases;
CREATE DATABASE IF NOT EXISTS jobs_mart;

--Drop database if exists jobs_mart;

show databases;
use jobs_mart;
select *
from information_schema.schemata;

create schema if not exists jobs_mart.staging; --we have to specify the db name cause we have connected to the data_jobs db

select *
from information_schema.schemata;
--DROP SCHEMA If EXISTS jobs_mart.staging;

use jobs_mart;

create table if not exists staging.preferred_roles(
    role_id integer primary key,
    role_name varchar
);

-- show databases;


select *
from information_schema.tables
where table_catalog = 'jobs_mart';   

drop table if exists main.preferred_roles;

select *
from information_schema.tables
where table_catalog = 'jobs_mart'; 



insert into staging.preferred_roles (role_id, role_name)
values 

    (1, 'Data Engineer'),
    (2, 'Senior Data Engineer'),
    (3, 'Software Engineer');


/* insert into staging.preferred_roles (role_id, role_name)
values 

    (4, 'Senior Software Engineer'); */
    
select *
from staging.preferred_roles;

ALTER TABLE staging.preferred_roles
ADD COLUMN preferred_role BOOLEAN;

ALTER TABLE staging.preferred_roles
DROP  COLUMN preferred_role;

ALTER TABLE staging.preferred_roles
ADD COLUMN preferred_role BOOLEAN;

UPDATE staging.preferred_roles
SET preferred_role = true
WHERE role_id IN (1, 2);

UPDATE staging.preferred_roles
SET preferred_role = FALSE
WHERE role_id = 3;

ALTER TABLE staging.preferred_roles
RENAME TO priority_roles;

select *
from staging.priority_roles;

ALTER TABLE staging.priority_roles
RENAME column preferred_role TO prioriry_lvl;

alter table staging.priority_roles
alter column prioriry_lvl TYPE integer;

update staging.priority_roles
set prioriry_lvl = 3
where role_id = 3;

select *
from staging.priority_roles;