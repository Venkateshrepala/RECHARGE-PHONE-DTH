CREATE TABLE table3g(
plan_id varchar2(6),
data number(4),
constraint pk_3g primary key (plan_id));

CREATE TABLE table3g(
plan_id varchar2(6),
c_id number(2),
data number(4),
constraint pk_3g primary key (plan_id),
constraint fk_3gcid foreign key (c_id) REFERENCES company(c_id));


CREATE TABLE table2g(
plan_id varchar2(6),
c_id number(2),
data number(4),
constraint pk_2g primary key (plan_id),
constraint fk_2gcid foreign key (c_id) REFERENCES company(c_id));

CREATE TABLE tabledth(
plan_id varchar2(6),
c_id number(2),
data number(4),
constraint pk_dth primary key (plan_id),
constraint fk_dthcid foreign key (c_id) REFERENCES company(c_id));


CREATE TABLE tablett(
plan_id varchar2(6),
c_id number(2),
data number(4),
constraint pk_tt primary key (plan_id),
constraint fk__ttcid foreign key (c_id) REFERENCES company(c_id));


create table company(
c_id number(2),
c_name varchar2(10),
constraint pk_company primary key(c_id));

create table customer(
cust_id number(4),
cust_name varchar2(30),
phone_no number(10),
balance number(5),
c_id number(2),
password varchar2(15),
constraint pk_cust primary key(cust_id),
constraint fk_cid foreign key(c_id) references company(c_id));

create table plan(
plan_no number(2),
plan_name varchar2(10),
constraint pk_plan primary key(plan_no));

insert into customer values(1001,   'venkatesh',  9490174399, 1200,    1, 'Venkatesh');
insert into customer values(2001,   'pvkb',       8335647898, 1000,   2, 'Pvkb');
insert into customer values(3001,   'meghana',    9790738207, 8000,   3, 'meghana');
insert into customer values(3002,   'santhosh',   9042158496, 500,    3, 'santhosh');
insert into customer values(4002,   'sahithi',    9632587410, 600,    4, 'sahithi');
 
insert into company values(1,   'Aircel');
insert into company values(2,   'BSNL');
insert into company values(3,   'Airtel');
insert into company values(4,   'Uninor');
insert into company values(5,   'Reliance');
 
insert into plan values(1,  '3G');
insert into plan values(2,  '2G');
insert into plan values(3,  'DTH');
insert into plan values(4,  'TalkTime');
 
insert into table3g values('AT100',3, 250);
insert into table3g values('AT200',3, 750);
insert into table3g values('AC100',1, 350);
insert into table3g values('AC250',1, 899);
insert into table3g values('RI500',5, 500);
insert into table3g values('UN300',4, 301);
insert into table3g values('BS1000',2,1500);
 
insert into table2g values('AT115',3, 400); 
insert into table2g values('AT200',3, 600);
insert into table2g values('AC100',1, 250);
insert into table2g values('AC250',1,500);
insert into table2g values('RI500',5,750);
insert into table2g values('UN300',4, 600);
insert into table2g values('BS1000',2,1500);
 
insert into tabledth values('AT1000',3,   3000);
insert into tabledth values('AT200', 3,   750);
insert into tabledth values('AC100', 1,   350);
insert into tabledth values('AC250', 1,    899);
insert into tabledth values('RI500', 5,  500);
insert into tabledth values('UN300', 4,   301);
insert into tabledth values('BS1000',2,  1500);
 
insert into tablett values('AT100',3, 100);
insert into tablett values('AT200',3, 200);
insert into tablett values('AC100',1, 90);
insert into tablett values('AC250',1, 230);
insert into tablett values('RI500',5, 490);
insert into tablett values('UN300',4, 320);
insert into tablett values('BS1000',2,1200);

commit





drop table company cascade constraints;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = company
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = COMPANY';
drop table customer;
drop table table2g;
drop table table3g;
drop table tabledth;
drop table tablett;
drop table plan;
drop table company;

drop table book57;
drop table course57;
drop table custatable57;
  drop table department57;
drop  table employee_table57;
  drop  table instructor57;
drop table issue57;
  drop  table member57;
drop  table movie;
drop  table sales_order;
  drop  table section57;
drop table table1;
drop  table table2;

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = section57";

select * from customer;
select * from table2g;
select * from table3g;
select * from tabledth;
select * from company;
select * from tablett;
select * from plan;
