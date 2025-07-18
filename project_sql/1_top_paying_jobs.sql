/*
QUESTION : What are the top paying data analyst jobs?
--Identify the top 10 highest paying data analyst roles that are avaliable remotely.
--Focuses on job postings with specified salaries (remove nulls).
--WHY?Highlight the top-paying opportunities for Data Analysts, offering insights into employee most optimum skill and role to pursue as data analyst
*/

SELECT	
	job_id,
	job_title,
	job_location,
	job_schedule_type,
	salary_year_avg,
	job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND 
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
