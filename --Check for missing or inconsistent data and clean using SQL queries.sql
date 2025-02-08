--Check for missing or inconsistent data and clean using SQL queries

SELECT * FROM f_report
WHERE Market_Cap_in_B_USD IS NULL
   OR Revenue IS NULL
   OR Gross_Profit IS NULL
   OR Net_Income IS NULL
   OR EBITDA IS NULL;

   UPDATE f_report
   SET Market_Cap_in_B_USD = 0 WHERE Market_Cap_in_B_USD is NULL;

SELECT * FROM f_report
WHERE Revenue < 0
   OR Gross_Profit < 0
   OR Net_Income < 0
   OR EBITDA < 0
   OR Market_Cap_in_B_USD < 0;



DELETE FROM f_report
WHERE Revenue IS NULL OR Net_Income IS NULL;



UPDATE f_report
SET Market_Cap_in_B_USD = ROUND(Market_Cap_in_B_USD, 2),
    Revenue = ROUND(Revenue, 2),
    Gross_Profit = ROUND(Gross_Profit, 2),
    Net_Income = ROUND(Net_Income, 2),
    EBITDA = ROUND(EBITDA, 2),
    Share_Holder_Equity = ROUND(Share_Holder_Equity, 2),
    Cash_Flow_from_Operating = ROUND(Cash_Flow_from_Operating, 2),
    Cash_Flow_from_Investing = ROUND(Cash_Flow_from_Investing, 2),
    Cash_Flow_from_Financial_Activities = ROUND(Cash_Flow_from_Financial_Activities, 2);

	SELECT * FROM f_report;


SELECT * FROM f_report
WHERE Revenue < 0 
   OR Net_Income < 0 
   OR Market_Cap_in_B_USD < 0;



UPDATE f_report
SET Revenue = 0
WHERE Revenue < 0;



UPDATE f_report
SET Market_Cap_in_B_USD = NULL
WHERE Market_Cap_in_B_USD < 0;