---Identify top-performing companies by revenue, profit, and ROI
Use finance;
SELECT TOP 10
Company,Year,Revenue,Net_Income,
ROUND((Net_Income / NULLIF(Revenue, 0)) * 100, 2) AS ROI
FROM f_report
ORDER BY Revenue DESC, Net_Income DESC, ROI DESC;

USE finance;

CREATE TABLE top_companies (
    Company VARCHAR(255),
    Year INT,
    Revenue DECIMAL(18,2),
    Net_Income DECIMAL(18,2),
    ROI DECIMAL(10,2)
);

INSERT INTO top_companies (Company, Year, Revenue, Net_Income, ROI)
SELECT TOP 10
    Company,
    Year,
    Revenue,
    Net_Income,
    ROUND((Net_Income / NULLIF(Revenue, 0)) * 100, 2) AS ROI
FROM f_report
ORDER BY Revenue DESC, Net_Income DESC, ROI DESC;


