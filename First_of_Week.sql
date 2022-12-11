-- Returns first day of the week

-- solution 1:
CREATE FUNCTION [dbo].[FirstOfWeek] (@date DateTime)
RETURNS DateTime

BEGIN
    SET @date = CONVERT(VARCHAR(10), @date, 111)
    RETURN DATEADD(DD, 1 - DATEPART(DW, @date), @date) -- Sundays
END


-- solution 2:
CREATE FUNCTION [dbo].[FirstOfWeek] (@date DateTime)
RETURNS DateTime

BEGIN
    RETURN DATEADD(week, DATEDIFF(week, -1, @date), -1) -- Sundays
END


-- solution 3:
CREATE FUNCTION [dbo].[FirstOfWeek] (@date DateTime)
RETURNS DateTime

BEGIN
    RETURN DATEADD(week, DATEDIFF(week, 0, @date -1), 0) -- Mondays
END
