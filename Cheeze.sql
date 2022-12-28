
create database inventory_db;
 use inventory_db;
 
 create table customer
     ( cust_id int(11) PRIMARY KEY Auto_increment,
     name varchar(120),
     address varchar(120),
    contact int(11));
    
    --when ID is auto increment then neglect from insertion
    
    insert into customer ( name, address,contact)
    -> values ('Hiko','1290 tokyo','123456789'),
    -> ('Jemo','1340 tokyo','12342389'),
    -> ('oNa','4340 tokyo','123232449');
    
    --Change data value in table
    
     Update customer set name='Hena' where cust_id=1;
     
    --Delete a row of data in table
     Delete from customer where cust_id=3;
     
     --Display all table
     select * from customer;
     
     --Display all data of specified row from table
     select * from customer where cust_id=2;
     
    --Display specified data of from whole table
     select name, contact from customer;
     
     --Display specified data of specified row from table
     select name, contact from customer where cust_id=1;
     
     --Display data of all rows that start with '  %' characters from table
     select * from customer where address like '12%';
     
     
