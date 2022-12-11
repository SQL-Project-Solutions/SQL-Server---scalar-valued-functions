CREATE FUNCTION [dbo].[WeekEndingSAT] (@date DateTime)
RETURNS DateTime AS

BEGIN
	DECLARE @WeekEnd DateTime
	SET @WeekEnd = DATEADD(DAY,(7-DATEPART(WEEKDAY,@date)%7),@date) 
	RETURN @WeekEnd
END
