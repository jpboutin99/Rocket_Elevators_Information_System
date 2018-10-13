select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, 
    count(1) as NbQuotes 
from factquotes 
group by YearMonth
order by YearMonth;