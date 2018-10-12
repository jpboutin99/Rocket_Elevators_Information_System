select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, 
    count(1) as Nbcontact 
from factcontact 
group by YearMonth;

select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, 
    count(1) as NbQuotes 
from factquotes 
group by YearMonth;

select count(elevator_id), customer_id 
from factelevator 
group by customer_id