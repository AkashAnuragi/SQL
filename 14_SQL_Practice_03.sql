SQL> select * from SALESMAN;

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5002 Sagar Singh             Goa                            .13          
       5003 Harsh Kumar             Noida                          .11          
       5004 Zainul Abbas            Delhi                          .14          
       5005 Ayush Sharma            Gurugram                       .12          
       5006 Elvish Yadav            Haryana                        .13          

6 rows selected.

SQL> select * from CUSTOMER;

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

SQL> select * from ORDERS;

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

SQL> --01. Display all those orders by the customers not located in the same cities where their salesman live.
SQL> select orders.order_no,orders.customer_id,orders.salesman_id from ORDERS,CUSTOMER, SALESMAN
  2  where CUSTOMER.city != SALESMAN.city AND ORDERS.customer_id =CUSTOMER.customer_id AND ORDERS.salesman_id =SALESMAN.salesman_id;

  ORDER_NO CUSTOMER_ID SALESMAN_ID                                              
---------- ----------- -----------                                              
     70001        3001        5006                                              
     70002        3002        5005                                              
     70011        3002        5003                                              
     70004        3004        5004                                              
     70005        3005        5003                                              
     70010        3005        5003                                              
     70008        3007        5002                                              
     70009        3008        5001                                              

8 rows selected.

SQL> --02. Display all the orders issued by the salesman 'harsh kumar' from the orders table.
SQL> --By Using Subquery
SQL> select* from ORDERS
  2  where salesman_id = (select salesman_id from SALESMAN where name ='Harsh Kumar';
where salesman_id = (select salesman_id from SALESMAN where name ='Harsh Kumar'
                     *
ERROR at line 2:
ORA-00921: unexpected end of SQL command 


SQL> ed
Wrote file afiedt.buf

  1  select* from ORDERS
  2* where salesman_id = (select salesman_id from SALESMAN where name ='Harsh Kumar')
SQL> /

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70005      948.5 10-SEP-24        3005        5003                         
     70010     250.45 27-JUN-24        3005        5003                         
     70011      75.29 17-SEP-24        3002        5003                         

SQL> --03. Display all the orders which value are greater than the avg orderv value for 10 sept 2024.
SQL> select * from ORDERS w
  2  ;

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

  1  select * from ORDERS
  2* where purch_amt =(select avg(purch_amt) from orders where order_date ='10-sep-2024')
SQL> /

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select * from ORDERS
  2* where purch_amt =(select avg(purch_amt) from orders where order_date ='10-oct-2024')
SQL> /

no rows selected

SQL> select avg(purch_amt) from ORDERS
  2  where order_date ='10-sep-24';

AVG(PURCH_AMT)                                                                  
--------------                                                                  
       3354.25                                                                  

SQL> select * from ORDERS
  2  where purch_amt = (select avg(purch_amt) from ORDERS where order_date ='10-sep-24');

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select * from ORDERS
  2* where purch_amt > (select avg(purch_amt) from ORDERS where order_date ='10-sep-24')
SQL> /

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70007       5760 10-SEP-24        3006                                     

SQL> --04. Find all orders attributed to salesman in meerut.
SQL> select Salesman_id from SALESMAN where city = 'Meerut';

SALESMAN_ID                                                                     
-----------                                                                     
       5001                                                                     

SQL> select * from ORDERS
  2  where Salesman_id IN (select salesman_id from SALESMAN where city ='Meerut');

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70009     2480.4 10-OCT-24        3008        5001                         

SQL> 
SQL> --05. Exract the data from orders table for the salesman who earn the maximum commission.
SQL> select max(commission) from SALESMAN;

MAX(COMMISSION)                                                                 
---------------                                                                 
            .15                                                                 

SQL> Select * from ORDERS
  2  where salesman_id IN (select salesman_id from SALESMAN
  3  where commission =(select max(commission) from SALESMAN));

  ORDER_NO  PURCH_AMT ORDER_DAT CUSTOMER_ID SALESMAN_ID                         
---------- ---------- --------- ----------- -----------                         
     70009     2480.4 10-OCT-24        3008        5001                         

SQL> commit;

Commit complete.

