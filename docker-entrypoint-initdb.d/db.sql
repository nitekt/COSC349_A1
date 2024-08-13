-- the SQL in this file will be run in the JobList DB in MariaDB
--a job needs to be allocated into a region
-- multiple jobs can be in the same region
drop table if exists Jobs;

create table Jobs (
    Job_ID int primary key,
    Job_Desc varchar(255) NOT NULL,
    Creation_Date date default current_date,
    Due_Date date,
    Address_ varchar(255),
    
);


insert into Jobs (Job_ID, Job_Desc, Due_Date, Address_) values (1, "Pothole", '05-08-2025', "34 addy st");
insert into Jobs (Job_ID, Job_Desc, Due_Date, Address_) values (2, "Fallen Tree", "06-08-2025", "35 addy st");
insert into Jobs (Job_ID, Job_Desc, Due_Date, Address_) values (3, "Line Painting", "07-08-2025", "42 addy st");