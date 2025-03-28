with NumberSequence AS (
    SELECT num,
           LAG(num, 1) over (order by id) as prev_num,
           LAG(num, 2) over (order by id) as prev_prev_num
    from Logs
)
select  distinct num as ConsecutiveNums
from NumberSequence
where num = prev_num and num = prev_prev_num;
