--How to create tables?
-- we can create table with max 1000 columns.
create table stu_1 (
                    std_roll_no number,
                    std_first_name varchar2(100),
                    std_last_name varchar2(100),
                    std_class varchar2(100),
                    std_birth_date date,
                    std_addmission_date date
                    );
/
-- for table creation we have some roles to apply while creating the table
-- called it constraints 
-- we have three types of constraints (domain integrity constraint,entity integrity constraint, refrential integrity constraint)
--we will satrt from entity integrity constraint(primary, unique)
-- Primary key
-- two types
--- simple primary key -> involves one column, composite primary key -> involves two columns.
-- we can create primary key on three diff methods(column level, table level, alter table commands)
-- In entity integrity constraint we have unique key as well, 
-- it can be null record but every record will  be unique from each other.  
-- column level 
create table customer (
                       cust_id number constraint cust_id_pk PRIMARY key,
                       cust_name varchar2(100),
                       cust_ph number);
/
alter table cust_007 drop constraint cu_id_pk1;
-- Table level
create table cust_007 (
                      cu_id number(3),
                      cu_name varchar2(100),
                      cu_ph number,
                      constraint cu_id_pk1 primary key (cu_id)
                      );
/
-- Alter table command
drop table cust_007;
alter table cust_007 add constraint cu_id_pk1 primary key (cu_id);
-- composite primary key
create table cust_007 (
                      cu_id number(3),
                      cu_name varchar2(100),
                      cu_ph number,
                      constraint cu_id_pk1 primary key (cu_id,cu_ph)
                      );
/
-- Refrential integrity 
-- Forign key 
create table product ( prod_id number(3),
                       cus_id number(3) constraint cu_id_fk1 references cust_001(cu_id)
                        );
/
-- on delete set null clause 
-- by default on delete set no action
create table product ( prod_id number(3),
                       cus_id number(3) constraint cu_id_fk1 references cust_001(cu_id) on delete set null
                        );
-- on delete cascade
create table product ( prod_id number(3),
                       cus_id number(3) constraint cu_id_fk1 references cust_001(cu_id) on delete cascade
                        );
/
-- Domain integrity constraints
-- default, check, not null

