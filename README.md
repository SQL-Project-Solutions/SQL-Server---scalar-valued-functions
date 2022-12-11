# Scalar-valued Functions  <img src="" width="65"/>  <br><br/> 


SQL Server scalar-valued function takes one or more parameters and returns a single value.

The scalar functions help you simplify your code. For example, you may have a complex calculation that appears in many queries. Instead of including the formula in every query, you can create a scalar function that encapsulates the formula and uses it in each query.

To create a scalar function, you use the CREATE FUNCTION statement as follows: 

```sql
CREATE FUNCTION [schema_name.]function_name (parameter_list)
RETURNS data_type AS
BEGIN
    statements
    RETURN value
END
``` 

After we create a function as above, we can then call it in our select statement:
```sql
SELECT [schema_name.]function_name(t.column)
  FROM table t
``` 
<br> <br/>
### Time related Scalar-valued Functions
One of the most used scalar functions throughout my analytical work were probably related to time. Those allowed analysts like myself to reuse the same function in many procedures. 
It is easier to remember name of the function rather than whole function and on many occastions it also consumes less time.

Let's have a look at the most used functions under this category:
- Get first day of the month
- Get last day of the month
- Get number of days in month
- Get first day of the week
- Get last day of the week
- Determine leap year

Useful links:
- [how to get different SQL Server date formats](https://www.mssqltips.com/sqlservertip/1145/date-and-time-conversions-using-sql-server/)
