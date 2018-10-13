select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, 
    count(1) as Nbcontact 
from factcontact 
group by YearMonth
order by YearMonth;



