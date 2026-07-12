SELECT *
FROM telecom_churn;

SELECT COUNT(*)
FROM telecom_churn;

SELECT *
FROM telecom_churn
LIMIT 10;

SELECT COUNT(*)
FROM telecom_churn
WHERE churn = 'Yes';

SELECT COUNT(*)
FROM telecom_churn
WHERE churn = 'No';

SELECT AVG(monthlycharges)
FROM telecom_churn;

SELECT MAX(monthlycharges)
FROM telecom_churn;

SELECT MIN(monthlycharges)
FROM telecom_churn;


SELECT SUM(monthlycharges)
FROM telecom_churn;


SELECT gender,
       COUNT(*)
FROM telecom_churn
GROUP BY gender;

SELECT contract,
       COUNT(*)
FROM telecom_churn
GROUP BY contract
ORDER BY COUNT(*) DESC;


SELECT churn,
       AVG(tenure)
FROM telecom_churn
GROUP BY churn;


SELECT customerid,
       monthlycharges
FROM telecom_churn
ORDER BY monthlycharges DESC
LIMIT 10;

SELECT customerid,
       monthlycharges
FROM telecom_churn
ORDER BY monthlycharges ASC
LIMIT 10;


SELECT *
FROM telecom_churn
WHERE monthlycharges > 100;


SELECT *
FROM telecom_churn
WHERE tenure > 24;


SELECT Contract,
       COUNT(*) AS churn_count
FROM telecom_churn
WHERE Churn = 'Yes'
GROUP BY Contract;


SELECT contract , 
         COUNT(*) AS churn_count
FROM telecom_churn
WHERE Churn = 'Yes'
GROUP BY contract
ORDER BY churn_count DESC
LIMIT 1;

SELECT paymentmethod,
COUNT(*)
From telecom_churn
Group By paymentmethod
order by count(*) desc
limit 1;

SELECT seniorcitizen,
COUNT(*)
FROM telecom_churn
WHERE churn='Yes'
GROUP BY seniorcitizen;


SELECT Churn,
       AVG(Tenure) AS average_tenure
FROM telecom_churn
GROUP BY Churn;

SELECT internetservice , 
         COUNT(*) AS churn_count
FROM telecom_churn
WHERE Churn = 'Yes'
GROUP BY internetservice
ORDER BY churn_count DESC
LIMIT 1;
