-- Returns flag for leap/not leap year

CREATE FUNCTION [dbo].[IsLeapYear] (@date DateTime)
RETURNS INT

BEGIN
   IF YEAR( @date ) % 4 = 0
   RETURN 1
   ELSE
   RETURN 0
END


-- Returns number of days in year
CREATE FUNCTION [dbo].[DaysInYear] (@date DateTime)
RETURNS INT

BEGIN
    RETURN 365 + [dbo].[IsLeapYear](@date)
END
