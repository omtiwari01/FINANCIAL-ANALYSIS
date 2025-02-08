---Perform summary statistics (mean, median, min, max)

SELECT DISTINCT
    MIN(Revenue) OVER() AS Min_Revenue,
    MAX(Revenue) OVER() AS Max_Revenue,
    AVG(Revenue) OVER() AS Avg_Revenue,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Revenue) OVER() AS Median_Revenue
FROM f_report;


USE finance;

CREATE TABLE perform_summary (
    Min_Revenue DECIMAL(18,2),
    Max_Revenue DECIMAL(18,2),
    Avg_Revenue DECIMAL(18,2),
    Median_Revenue DECIMAL(18,2)
);

INSERT INTO perform_summary (Min_Revenue, Max_Revenue, Avg_Revenue, Median_Revenue)
SELECT DISTINCT
    MIN(Revenue) OVER() AS Min_Revenue,
    MAX(Revenue) OVER() AS Max_Revenue,
    AVG(Revenue) OVER() AS Avg_Revenue,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY Revenue) OVER() AS Median_Revenue
FROM f_report;
