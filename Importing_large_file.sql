#Importing large sql file to MySql via command line

> First open MySQL:
mysql -u root -p
> Then, You just need to do following :

mysql>use your_db

mysql>SET autocommit=0 ; source the_sql_file.sql ; COMMIT ;
