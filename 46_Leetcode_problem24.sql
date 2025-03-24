select teacher_id,Count( distinct Subject_id) as cnt from Teacher
group by teacher_id
order By teacher_id;
