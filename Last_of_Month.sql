-- Get last day of the month

-- solution 1:
SELECT EOMONTH(t.start_date)
  FROM table t


-- solution 2:
CREATE OR ALTER FUNCTION [dbo].[LastOfMonth] (@date DateTime)
RETURNS DateTime

BEGIN
    DECLARE @Outputdate DateTime
	SET @Outputdate = CAST(YEAR(@date) AS VARCHAR(4)) + '/' + CAST(MONTH(@date) AS VARCHAR(2)) + '/01'
    SET @Outputdate = DATEADD(DD, -1, DATEADD(M, 1, @Outputdate))
    RETURN @Outputdate
END



-- solution 3:
CREATE OR ALTER FUNCTION [dbo].[LastOfMonth] (@date DateTime )
RETURNS DateTime

BEGIN
    DECLARE @Outputdate DateTime
    SET @Outputdate = CAST(FLOOR(CAST(@date AS DECIMAL(12, 5))) - (DAY(@date) - 1) AS DateTime)
    SET @Outputdate = DATEADD(DD, -1, DATEADD(M, 1, @Outputdate))
    RETURN @Outputdate
END