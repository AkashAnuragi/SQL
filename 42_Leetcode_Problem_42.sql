with new_table as (
    Select Distinct sell_date, product 
    From Activities
)

Select TO_CHAR(sell_date,'yyyy-mm-dd') as sell_date, Count( product) as num_sold,
LISTAGG( product,',') within Group (Order by Product) as products
From new_table
Group By sell_date
Order by sell_date;
