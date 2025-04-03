with daily_sales as (
    select visited_on, SUM(amount) as total_amount
    from Customer
    group by visited_on
),
rolling_avg as (
    select visited_on,
           SUM(total_amount) over (order by visited_on rows between 6 preceding and CURRENT row) as amount,
           ROW_NUMBER() over (order by visited_on) as rk
    from daily_sales
)
select TO_CHAR(visited_on,'YYYY-MM-DD') as visited_on, amount, ROUND(amount / 7, 2) as average_amount
from rolling_avg
where rk > 6
order by visited_on;
