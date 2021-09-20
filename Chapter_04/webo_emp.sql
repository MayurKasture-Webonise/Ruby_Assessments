
/* Q. Create a crud using MySQL */



/* Create a Database */
create database webo_emp;


/* Use Datebase */
use webo_emp;





/* create department */
create table department(d_id int(11) not null auto_increment, d_name varchar(255) not null, primary key(d_id));


/*-------------Insert values-------------*/
insert into department values(1, "HR");
insert into department values(2, "Marketing");
insert into department values(3, "Sales");
insert into department values(4,"Operations");


/*----------Read----------*/
select * from department;


/*----------------Delete---------------*/
delete from department where d_id = 4;


/*--------------------------Update------------------------*/
update department set d_name = "Accounting" where d_id=2;





/* create employee */
create table employee(e_id int(11) auto_increment not null, e_name varchar(50) not null, e_email varchar(50) not null, e_contact varchar(11) not null, e_salary varchar(30) not null, e_gender varchar(10) not null, e_joining_date date, e_bod date, d_id int(11), primary key(e_id), foreign key(d_id) references department(d_id));


/*--------------Insert-------------*/
insert into employee values(1,"Suyog More", "suyog14@gmail.com", "9889899751", 15000, "male", "2019-10-20", "1994-03-05",1);
insert into employee values(2,"Harish dhonde", "harishde@gmail.com", "7098890989", 20000, "male", "2020-10-20", "1998-11-12",2);


/*--------------read---------------*/
select * from employee;


/*--------------delete-------------*/
delete from employee where e_id = 2;


/*--------------update-------------*/
update employee set e_salary="25000" where e_id=1;



/*--------------Index--------------*/
CREATE INDEX idx_name ON employee(e_name);
