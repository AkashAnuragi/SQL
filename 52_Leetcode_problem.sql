with LatestChange as (
    select product_id, 
           MAX(change_date) as max_date
    from Products
    where change_date <= date '2019-08-16'
    group by product_id
)
select p.product_id, 
       COALESCE(pr.new_price, 10) as price
from (select distinct product_id from Products) p
left join LatestChange lc on p.product_id = lc.product_id
left join Products pr 
on pr.product_id = lc.product_id 
and pr.change_date = lc.max_date;
