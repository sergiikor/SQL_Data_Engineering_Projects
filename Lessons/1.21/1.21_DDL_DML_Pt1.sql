CREATE DATABASE IF NOT EXISTS jobs_mart;

--Drop database if exists jobs_mart;

show databases;

select *
from information_schema.schemata;

create schema if not exists jobs_mart.staging; --we have to specify the db name cause we have connected to the data_jobs db

--DROP SCHEMA If EXISTS jobs_mart.staging;
