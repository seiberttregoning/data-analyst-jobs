/* 1.	How many rows are in the data_analyst_jobs table?

1793


SELECT COUNT(*)
FROM data_analyst_jobs;
*/

/* 2.	Write a query to look at just the first 10 rows. 
What company is associated with the job posting on the 10th row? 

ExxonMobil


SELECT company
FROM data_analyst_jobs
LIMIT 10;
*/


/* 3.	How many postings are in Tennessee?
How many are there in either Tennessee or Kentucky? 
TN = 21
TN or KY = 27

SELECT COUNT (title)
FROM data_analyst_jobs
WHERE location = 'TN'


SELECT COUNT(title)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY'
*/

