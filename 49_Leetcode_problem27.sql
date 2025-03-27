select
    ROUND(COUNT(distinct a.player_id) / COUNT(distinct b.player_id), 2) as fraction
from
    (select
         player_id, 
         MIN(event_date) as first_login 
     from Activity 
     group by player_id
    ) b
left join  Activity a
    on a.player_id = b.player_id 
   and a.event_date = b.first_login + 1;
