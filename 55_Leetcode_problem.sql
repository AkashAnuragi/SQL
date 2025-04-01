with OrderedQueue as (
    select person_name, weight, turn, 
           SUM(weight) OVER (order by turn) as total_weight
    from Queue
),
RankedQueue as (
    select person_name, total_weight,
           ROW_NUMBER() over (order by total_weight desc) as rn
    from OrderedQueue
    where total_weight <= 1000
)
select person_name
from RankedQueue
where rn = 1;

