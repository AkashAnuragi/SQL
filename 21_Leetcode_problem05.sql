SQL> desc Tweets
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TWEET_ID                                  NOT NULL NUMBER(12)
 CONTENT                                            VARCHAR2(56)

SQL> select * from Tweets;

  TWEET_ID CONTENT                                                              
---------- --------------------------------------------------------             
         1 Vote for Biden                                                       
         2 Let us make America great again!                                     

SQL> --SOLUTION.
SQL> select tweet_id from Tweets
  2  where length(content) > 15;

  TWEET_ID                                                                      
----------                                                                      
         2                                                                      

SQL> commit;

Commit complete.
