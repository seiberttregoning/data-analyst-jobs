/*  How many rows are in the data_analyst_jobs table?
1793

SELECT COUNT (*)
FROM data_analyst_jobs; */

/* Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
ExxonMobil

SELECT *
FROM data_analyst_jobs
LIMIT 10; */

/* How many postings are in Tennessee?
21

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN'; */

/* How many are there in either Tennessee or Kentucky?
27

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' OR location = 'KY'; */

/* How many postings in Tennessee have a star rating above 4?
3

SELECT COUNT (location)
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4; */

/* How many postings in the dataset have a review count between 500 and 1000?
151

SELECT COUNT (review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000; */

/* Show the average star rating for each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
NE

SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
GROUP BY state
ORDER BY avg_rating DESC; */

/* Select unique job titles from the data_analyst_jobs table. How many are there?
881

SELECT DISTINCT title
FROM data_analyst_jobs;

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs; */

/* How many unique job titles are there for California companies?
230

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA'; */

/* Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. 

SELECT company, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company; */

/* How many companies are there with more that 5000 reviews across all locations?
184

SELECT COUNT(company)
FROM data_analyst_jobs
WHERE review_count > 5000; */

/* Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
General Motors/Unilever/Microsoft/Nike/American Express/Kaiser Permanente, 4.199999809

SELECT company, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000
GROUP BY company
ORDER BY avg_star_rating DESC; */

/* Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
754. 774 with all case types

SELECT title
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';

SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE 
title LIKE '%Analyst%' OR
title LIKE '%ANALYST%' OR
title LIKE '%analyst%'; */

/* How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
Tableau

SELECT DISTINCT title
FROM data_analyst_jobs
WHERE 
title NOT LIKE '%Analyst%' AND 
title NOT LIKE '%analyst%' AND
title NOT LIKE '%ANALYST%' AND
title NOT LIKE '%Analytics%' AND
title NOT LIKE '%analytics%' AND
title NOT LIKE '%ANALYTICS%'
; */


