-- Get first day of the month

-- solution 1:
CREATE FUNCTION [dbo].[FirstOfMonth] (@date DateTime)
RETURNS DateTime AS

BEGIN
    DECLARE @FoM DateTime
	SET @FoM = CONVERT(DATE, DATEADD(DAY, 1-DATEPART(DAY, @date), @date))
    RETURN @FoM
END


-- solution 2:
CREATE FUNCTION [dbo].[FirstOfMonth] (@date DateTime )
RETURNS DateTime

BEGIN
    RETURN CAST(CAST(YEAR(@date) AS VARCHAR(4))
            	+ '/' 
				+ CAST(MONTH(@date) AS VARCHAR(2)) 
				+ '/01' 
				AS DateTime)
END


-- solution 3:
CREATE OR FUNCTION [dbo].[FirstOfMonth] (@date DateTime )
RETURNS DateTime

BEGIN
    RETURN CAST(FLOOR(CAST(@date AS DECIMAL(12, 5))) - (DAY(@date) - 1) AS DateTime)
END
