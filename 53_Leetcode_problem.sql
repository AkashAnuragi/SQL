select id, num 
from (
    select id, COUNT(*) as num
    from  (
        select requester_id as id from RequestAccepted
        union all
        select accepter_id from RequestAccepted
    ) 
    group by id
    order by num desc
) 
where ROWNUM = 1;
