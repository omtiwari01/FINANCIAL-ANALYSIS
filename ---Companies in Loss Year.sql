---Companies in Loss Year

SELECT Company, COUNT(*) AS Loss_Years
FROM f_report
WHERE Net_Income < 0
GROUP BY Company
ORDER BY Loss_Years DESC;

USE finance;

CREATE TABLE companies_in_loss (
    Company VARCHAR(255),
    Loss_Years INT
);


INSERT INTO companies_in_loss (Company, Loss_Years)
SELECT Company, COUNT(*) AS Loss_Years
FROM f_report
WHERE Net_Income < 0
GROUP BY Company
ORDER BY Loss_Years DESC;

