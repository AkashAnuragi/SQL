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

SQL> /*  Find the name and city of those customers and salesmen who lives in the same city. */
SQL> select CUSTOMER.customer_name,SALESMAN.name,SALESMAN.city from SALESMAN ,CUSTOMER
  2  where CUSTOMER.city = SALESMAN.city;

CUSTOMER_NAME           NAME                    CITY                            
----------------------- ----------------------- -----------------------         
Awadh Kumar             Akash Anuragi           Meerut                          
Sumit Bansal            Akash Anuragi           Meerut                          

SQL> --  Find the names of all customers along  with the salesmen who works for them.
SQL> select CUSTOMER.customer_name,SALESMAN.name from SALESMAN ,CUSTOMER
  2  where CUSTOMER.customer_id = SALESMAN.salesman_id;

no rows selected

SQL> ed
Wrote file afiedt.buf

  1  select CUSTOMER.customer_name,SALESMAN.name from SALESMAN ,CUSTOMER
  2* where CUSTOMER.salesman_id = SALESMAN.salesman_id
SQL> /

CUSTOMER_NAME           NAME                                                    
----------------------- -----------------------                                 
Kartik Singhal          Akash Anuragi                                           
Awadh Kumar             Sagar Singh                                             
Salam Khan              Harsh Kumar                                             
Ayushi Garg             Zainul Abbas                                            
Sumit Bansal            Ayush Sharma                                            
Arjun Pandit            Elvish Yadav                                            

6 rows selected.


