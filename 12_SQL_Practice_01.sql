SQL> desc SALESMAN
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SALESMAN_ID                               NOT NULL NUMBER(10)
 NAME                                               VARCHAR2(23)
 CITY                                               VARCHAR2(23)
 COMMISSION                                         NUMBER(5,5)


SQL> desc CUSTOMER
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 CUSTOMER_ID                               NOT NULL NUMBER(10)
 CUSTOMER_NAME                                      VARCHAR2(23)
 CITY                                               VARCHAR2(23)
 GRADE                                              NUMBER(12)
 SALESMAN_ID                                        NUMBER(10)

SQL> desc ORDERS
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ORDER_NO                                  NOT NULL NUMBER(10)
 PURCH_AMT                                          NUMBER(10,5)
 ORDER_DATE                                         DATE
 CUSTOMER_ID                                        NUMBER(10)
 SALESMAN_ID                                        NUMBER(10)

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
                                                                                
                                                                                
       3003 Awadh Kumar             Kanpur                         300          
       5002                                                                     
                                                                                

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3004 Salam Khan              Bihar                          200          
       5003                                                                     
                                                                                
       3005 Ayushi Garg             Masoori                        100          
       5004                                                                     
                                                                                
       3006 Sumit Bansal            Patel Nagar                    300          
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

SQL> -- 01. Display name and commission of all the salesman.
SQL> select name, commission from SALESMAN;

NAME                    COMMISSION                                              
----------------------- ----------                                              
Akash Anuragi                  .15                                              
Sagar Singh                    .13                                              
Harsh Kumar                    .11                                              
Zainul Abbas                   .14                                              
Ayush Sharma                   .12                                              
Elvish Yadav                   .13                                              

6 rows selected.

SQL> --02. Retrieve salesman id from orders table without any repeat.
SQL> select distinct salesman_id from ORDERS;

SALESMAN_ID                                                                     
-----------                                                                     
       5006                                                                     
       5005                                                                     
                                                                                
       5004                                                                     
       5003                                                                     
       5002                                                                     
       5001                                                                     

7 rows selected.

SQL> --03. Display names and city of salesman ,who belong to the city of Meerut.
SQL> select name from SALESMAN
  2  where city = 'Meerut';

NAME                                                                            
-----------------------                                                         
Akash Anuragi                                                                   

SQL> select name,city from SALESMAN
  2  where city = 'Meerut';

NAME                    CITY                                                    
----------------------- -----------------------                                 
Akash Anuragi           Meerut                                                  

SQL> --04. display all the information for those customers with a grade of 200.
SQL> select * from customer
  2  where grade = 200;

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3002 Akhil Singh             U.K.                           200          
                                                                                
                                                                                
       3004 Salam Khan              Bihar                          200          
       5003                                                                     
                                                                                
       3007 Lavish gujjar           Banglor                        200          
                                                                                
                                                                                

SQL> --05 display the order number, order date and the purchase amount for orders which will be delivered by the salesman with id 5003.
SQL> select order_no, purch_amt, order_date from ORDERS
  2  where salesman_id = 5003;

  ORDER_NO  PURCH_AMT ORDER_DAT                                                 
---------- ---------- ---------                                                 
     70005      948.5 10-SEP-24                                                 
     70010     250.45 27-JUN-24                                                 
     70011      75.29 17-SEP-24                                                 

SQL> --06. Display all the customers, who are either to the city Meerut or not had a grade above 100.
SQL> select * from CUSTOMER
  2  where city = 'Meerut' or not grade > 100;

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3001 Kartik Singhal          Gujrat                         100          
       5001                                                                     
                                                                                
       3005 Ayushi Garg             Masoori                        100          
       5004                                                                     
                                                                                

SQL> --07 Find those salesman with all information who gets the commission within a range of 0.12 and 0.14.
SQL> select * from SALESMAN
  2  where commission between .12 and .14;

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5002 Sagar Singh             Goa                            .13          
       5004 Zainul Abbas            Delhi                          .14          
       5005 Ayush Sharma            Gurugram                       .12          
       5006 Elvish Yadav            Haryana                        .13          

SQL> --08. Find all those customers with all information whose name are ending with the letter 'n'.
SQL> select * from CUSTOMER
  2  where customer_name like '%n';

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3004 Salam Khan              Bihar                          200          
       5003                                                                     
                                                                                

SQL> --09. Find those salesman with all information whose name contain the first letter is 'A' and 4th letter is 's' and rest may be any letter.
SQL> select * from SALESMAN
  2  where name like 'A__s%';

SALESMAN_ID NAME                    CITY                    COMMISSION          
----------- ----------------------- ----------------------- ----------          
       5001 Akash Anuragi           Meerut                         .15          
       5005 Ayush Sharma            Gurugram                       .12          

SQL> --10. Find that customer with all information who does not get any grade except null.
SQL> select * from CUSTOMER
  2  where grade is NULL;

CUSTOMER_ID CUSTOMER_NAME           CITY                         GRADE          
----------- ----------------------- ----------------------- ----------          
SALESMAN_ID                                                                     
-----------                                                                     
       3008 Arjun Pandit            Hydrabad                                    
       5006                                                                     
                                                                                

SQL> --11. Find total purchase amount of all orders.
SQL> select sum(purch_amt) from ORDERS
  2  ;

SUM(PURCH_AMT)                                                                  
--------------                                                                  
      14495.58                                                                  


SQL> --12. Find the number of salesman currently listing for all their customers.
SQL> select customer_id from CUSTOMER;

CUSTOMER_ID                                                                     
-----------                                                                     
       3001                                                                     
       3002                                                                     
       3003                                                                     
       3004                                                                     
       3005                                                                     
       3006                                                                     
       3007                                                                     
       3008                                                                     

8 rows selected.

SQL> select distinct customer_id from CUSTOMER;

CUSTOMER_ID                                                                     
-----------                                                                     
       3001                                                                     
       3002                                                                     
       3003                                                                     
       3004                                                                     
       3005                                                                     
       3006                                                                     
       3007                                                                     
       3008                                                                     

8 rows selected.

SQL> --13. Find the highest grade for each of the cities of the customers.
SQL> select city,max(grade) from CUSTOMER
  2  group by city;

CITY                    MAX(GRADE)                                              
----------------------- ----------                                              
Gujrat                         100                                              
U.K.                           200                                              
Kanpur                         300                                              
Bihar                          200                                              
Masoori                        100                                              
Patel Nagar                    300                                              
Banglor                        200                                              
Hydrabad                                                                        

8 rows selected.

SQL> --14. Find the highest purchase amount ordered by each customer with their id and highest purchase amount.
SQL> select customer_id, max(purch_amt) from ORDERS
  2  group by customer_id;

CUSTOMER_ID MAX(PURCH_AMT)                                                      
----------- --------------                                                      
       3001          150.5                                                      
       3002         270.65                                                      
       3003          65.26                                                      
       3004          110.5                                                      
       3005          948.5                                                      
       3006           5760                                                      
       3007        1983.43                                                      
       3008         2480.4                                                      

8 rows selected.

SQL> --15.  Find the highest purchase amount ordered by each customer on particular date with their id ,order date and heighest purchase amount.
SQL> select customer_id, order_date, max(purch_amt) from ORDERS
  2  group by customer_id, order_date;

CUSTOMER_ID ORDER_DAT MAX(PURCH_AMT)                                            
----------- --------- --------------                                            
       3001 05-NOV-16          150.5                                            
       3002 10-OCT-24         270.65                                            
       3003 05-SEP-24          65.26                                            
       3004 17-AUG-24          110.5                                            
       3005 10-SEP-24          948.5                                            
       3006 27-JUL-24         2400.6                                            
       3006 10-SEP-24           5760                                            
       3007 10-OCT-24        1983.43                                            
       3008 10-OCT-24         2480.4                                            
       3005 27-JUN-24         250.45                                            
       3002 17-SEP-24          75.29                                            

11 rows selected.

SQL> --16.  Find the highest purchase amount ordered by each customer on date '2024-aug-17' for each salesman with their id.
SQL> select salesman_id,order_date, max(purch_amt) from ORDERS
  2  where order_date ='17-aug-2024' group by salesman_id,order_date;

SALESMAN_ID ORDER_DAT MAX(PURCH_AMT)                                            
----------- --------- --------------                                            
       5004 17-AUG-24          110.5                                            

SQL> --17.  Find the highest purchase amount with their customer id and order date, for only those customers who have the highest purchase amount in a day is more than 2000.
SQL> select customer_id,order_date, max(purch_amt) from ORDERS
  2   group by customer_id,order_date;

CUSTOMER_ID ORDER_DAT MAX(PURCH_AMT)                                            
----------- --------- --------------                                            
       3001 05-NOV-16          150.5                                            
       3002 10-OCT-24         270.65                                            
       3003 05-SEP-24          65.26                                            
       3004 17-AUG-24          110.5                                            
       3005 10-SEP-24          948.5                                            
       3006 27-JUL-24         2400.6                                            
       3006 10-SEP-24           5760                                            
       3007 10-OCT-24        1983.43                                            
       3008 10-OCT-24         2480.4                                            
       3005 27-JUN-24         250.45                                            
       3002 17-SEP-24          75.29                                            

11 rows selected.

SQL> select customer_id,order_date, max(purch_amt) from ORDERS
  2   group by customer_id,order_date
  3  having max(purch_amt)>2000;

CUSTOMER_ID ORDER_DAT MAX(PURCH_AMT)                                            
----------- --------- --------------                                            
       3006 27-JUL-24         2400.6                                            
       3006 10-SEP-24           5760                                            
       3008 10-OCT-24         2480.4                                            

SQL> --18 Write a SQL statement that count all orders for a date August 17,2024.
SQL> select count(*) from ORDERs
  2  where order_date = '17-aug-2024';

  COUNT(*)                                                                      
----------                                                                      
         1                                                                      

SQL> select count(*) from ORDERs
  2  where order_date = '10-sep-2024';

  COUNT(*)                                                                      
----------                                                                      
         2                                                                      

SQL> commit;

Commit complete.

