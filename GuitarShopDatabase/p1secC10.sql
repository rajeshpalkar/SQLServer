select OrderDate,
year(OrderDate) as YearOfOrderDate,
day(OrderDate) as DayofOrderDate,
dateadd(day,30,OrderDate) as Adding30Days
from Orders