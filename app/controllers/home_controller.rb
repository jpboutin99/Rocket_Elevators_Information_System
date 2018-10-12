class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
    end

    def chart

        conn = PG::Connection.open( host: "codeboxx-postgresql.cq6zrczewpu2.us-east-1.rds.amazonaws.com", user: "jp", password: "jp123", dbname: "jp")
        @data1 = conn.exec("select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, count(1) as Nbcontact from factcontact group by YearMonth;") 
        @x1 = @data1.column_values(0)
        @y1 = @data1.column_values(1)

        @data2 = conn.exec("select concat(extract(year from created_on),'-', extract(month from created_on)) as YearMonth, count(1) as NbQuotes from factquotes group by YearMonth;") 
        @x2 = @data2.column_values(0)
        @y2 = @data2.column_values(1)

        @data3 = conn.exec("select count(elevator_id), customer_id from factelevator group by customer_id") 
        @x3 = @data3.column_values(0)
        @y3 = @data3.column_values(1)
    end

end
