SQL> s
SP2-0042: unknown command "s" - rest of line ignored.
SQL> select * from salesman;

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5002 Sagar Singh             Goa                            .13          
       5003 Harsh Kumar             Noida                          .11          
       5004 Zainul Abbas            Delhi                          .14          
       5005 Ayush Sharma            Gurugram                       .12          
       5006 Elvish Yadav            Haryana                        .13          

6 rows selected.

SQL> select * from customer;

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3001 Kartik Singhal          Gujrat                         100          
       5001                                                                     
                                                                                
       3002 Akhil Singh             U.K.                           200          
                                                                                
                                                                                
       3003 Awadh Kumar             Meerut                         300          
       5002                                                                     
                                                                                

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3004 Salam Khan              Bihar                          200          
       5003                                                                     
                                                                                
       3005 Ayushi Garg             Masoori                        100          
       5004                                                                     
                                                                                
       3006 Sumit Bansal            Meerut                         300          
       5005                                                                     
                                                                                

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3007 Lavish gujjar           Banglor                        200          
                                                                                
                                                                                
       3008 Arjun Pandit            Hydrabad                                    
       5006                                                                     
                                                                                

8 rows selected.

SQL> select * from orders;

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70001      150.5 05-NOV-16        3001        5006                         
     70002     270.65 10-OCT-24        3002        5005                         
     70003      65.26 05-SEP-24        3003                                     
     70004      110.5 17-AUG-24        3004        5004                         
     70005      948.5 10-SEP-24        3005        5003                         
     70006     2400.6 27-JUL-24        3006                                     
     70007       5760 10-SEP-24        3006                                     
     70008    1983.43 10-OCT-24        3007        5002                         
     70009     2480.4 10-OCT-24        3008        5001                         
     70010     250.45 27-JUN-24        3005        5003                         
     70011      75.29 17-SEP-24        3002        5003                         

11 rows selected.

SQL> --01. Find the name and ids of all salesman who had more than one customer.
SQL> select salesman_id, name  from salesman
  2  where 1<(select count(*) from customer  where customer.salesman_id=salesman.salesman_id);

no rows selected

SQL> --02 write a query to find all the salesman who worked for only one customer.
SQL> select * from salesman
  2  where salesman_id in(select distinct salesman_id from customer a
  3  where not exists(select * from customer b where a.salesman_id = b.salesman_id
  4  and a.customer_name != b.customer_name));

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5006 Elvish Yadav            Haryana                        .13          
       5003 Harsh Kumar             Noida                          .11          
       5005 Ayush Sharma            Gurugram                       .12          
       5002 Sagar Singh             Goa                            .13          
       5004 Zainul Abbas            Delhi                          .14          

6 rows selected.

  1  select c.salesman_id,s.name, s.city, s.commission from salesman s, customer c
  2  where s.salesman_id = c.salesman_id
  3  group by c.salesman_id,s.name,s.city, s.commision
  4* having count(c.salesman_id)=1
SQL> /
group by c.salesman_id,s.name,s.city, s.commision
                                      *
ERROR at line 3:
ORA-00904: "S"."COMMISION": invalid identifier 


SQL> ed
Wrote file afiedt.buf

  1  select c.salesman_id,s.name, s.city, s.commission from salesman s, customer c
  2  where s.salesman_id = c.salesman_id
  3  group by c.salesman_id,s.name,s.city, s.commission
  4* having count(c.salesman_id)=1
SQL> /

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5002 Sagar Singh             Goa                            .13          
       5003 Harsh Kumar             Noida                          .11          
       5004 Zainul Abbas            Delhi                          .14          
       5005 Ayush Sharma            Gurugram                       .12          
       5006 Elvish Yadav            Haryana                        .13          

6 rows selected.

SQL> select * from salesman
  2  where salesman_id not in(select a.salesman_id from customer a,customer b
  3  where a.salesman_id = b.salesman_id
  4  and a.customer_name!=b.customer_name);

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5006 Elvish Yadav            Haryana                        .13          
       5003 Harsh Kumar             Noida                          .11          
       5005 Ayush Sharma            Gurugram                       .12          
       5002 Sagar Singh             Goa                            .13          
       5004 Zainul Abbas            Delhi                          .14          

6 rows selected.

SQL> --03 Display all the orders that had amount that were greater than at least one of the orders from 10 sep 2024.
SQL> select * from orders
  2  where purch_amt >any(select purch_amt from orders
  3  where order_date ='10-sep-2024');

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70007       5760 10-SEP-24        3006                                     
     70009     2480.4 10-OCT-24        3008        5001                         
     70006     2400.6 27-JUL-24        3006                                     
     70008    1983.43 10-OCT-24        3007        5002                         

SQL> --03 Display all those cutomers whose grade are  amount that were greater than at least one of the orders from 10 sep 2024.
SQL> 
SQL> select grade from customer
  2  where city ='Meerut';

     GRADE
----------
       300
       300

SQL> select * from customer w
  2  where grade>all(select grade from customer
  3  where city ='Meerut');

no rows selected                 

8 rows selected.

SQL> commit;

Commit complete.
