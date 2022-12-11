-- Get first day of the month

CREATE OR ALTER FUNCTION [dbo].[FirstOfMonth] (@date DateTime)
RETURNS DateTime AS

BEGIN
DECLARE @FoM DateTime
	SET @FoM = CONVERT(DATE, DATEADD(DAY, 1-DATEPART(DAY, @date), @date))
	RETURN @FoM
END
