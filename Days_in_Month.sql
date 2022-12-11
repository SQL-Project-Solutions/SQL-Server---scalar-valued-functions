-- Get number of days in month:

-- solution 1:
SELECT DAY(EOMONTH(t.start_date)) as days
  FROM table t


-- solution 2:
CREATE OR ALTER FUNCTION [dbo].[DaysInMonth] (@date DateTime)
RETURNS INT

BEGIN
    SET @date = CONVERT(VARCHAR(10), @date, 101)
    SET @date = @date - DAY(@date) + 1

    RETURN DATEDIFF(DD, @date, DATEADD(MM, 1, @date))
END