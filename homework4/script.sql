drop schema academy;
CREATE DATABASE academy CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
use academy;

create table employee (
                        employee_id int not null primary key auto_increment,
                        first_name varchar(50),
                        last_name varchar(50),
                        position varchar(50),
                        gender varchar(50)
) ENGINE = InnoDB;

insert into employee (first_name, last_name, position, gender) values
('Douglas', 'Wotherspoon', 'Product Management', 'Male'),
('Carmen', 'Klimkiewich', 'Courier', 'Female'),
('Oliviero', 'Mackleden', 'Courier', 'Male'),
('Kandy', 'Ding', 'Accounting', 'Female'),
('Torrin', 'Lambkin', 'Accounting', 'Male'),
('Lusa', 'Eads', 'Courier', 'Female'),
('Layney', 'Gellan', 'Marketing', 'Female'),
('Rory', 'Nelane', 'Courier', 'Male'),
('Nicolle', 'Astupenas', 'Support', 'Female'),
('Eudora', 'Kenyam', 'Courier', 'Female'),
('Adams', 'Stevani', 'Courier', 'Male'),
('Winni', 'Castano', 'Courier', 'Female'),
('Tilly', 'McAtamney', 'Courier', 'Female'),
('Dee dee', 'Ambrus', 'Sales', 'Female'),
('Kettie', 'Rickets', 'Support', 'Female'),
('Gradey', 'Anelay', 'Courier', 'Male'),
('Alfie', 'FitzAlan', 'Courier', 'Female'),
('Adriano', 'Tessington', 'Courier', 'Male'),
('Thatch', 'Lunam', 'Courier', 'Male'),
('Annaliese', 'Partkya', 'Courier', 'Female');

create table equipment (
                         id   int not null primary key auto_increment,
                         type varchar(50)
) ENGINE = InnoDB;

insert into equipment (type) values
('cellphone'),
('notebook'),
('courier bag'),
('courier rainsuit');

create table vehicle (
                       vehicle_id int not null primary key auto_increment,
                       type varchar(50),
                       make varchar(50),
                       model varchar(50),
                       year date,
                       country varchar(50)
);

insert into vehicle (type, make, model, year, country) values
('motorbyke', 'Toyota', 'Camry', '1998-12-01', 'Japan'),
('minitruck', 'Chrysler', 'Voyager', '2002-05-30', 'United states of America'),
('minitruck', 'Audi', 'S5', '2009-08-24', 'Germany'),
('minivan', 'Mazda', '626', '1986-01-12', 'Japan'),
('minivan', 'Mercedes-Benz', 'R-Class', '2008-04-15', 'Germany'),
('minivan', 'Volkswagen', 'Passat', '1997-06-24', 'Germany'),
('motorbyke', 'Honda', 'Element', '2003-01-04', 'Japan'),
('motorbyke', 'Morgan', 'Aero 8', '2008-11-11', 'United states of America'),
('minivan', 'Mitsubishi', 'Diamante', '1998-05-06', 'Japan'),
('minivan', 'Cadillac', 'CTS', '2007-09-15', 'United states of America');

create table vehicle_registrations (
                                     id int not null primary key auto_increment,
                                     vehicle_id int,
                                     licence_id tinyint,
                                     vehicle_ssn varchar(20)
);

insert into vehicle_registrations (vehicle_id, licence_id, vehicle_ssn) values
(1, 1, 'JN1BJ0HP2FM480795'),
(2, 3, 'WBA3N9C52EF264218'),
(3, 3, '1YVHZ8BH9D5690781'),
(4, 2, 'WBAFR9C50DD778516'),
(5, 2, '2C3CCAEG4FH835172'),
(6, 2, 'WAUVT64B04N870073'),
(7, 1, 'JH4CL96818C544246'),
(8, 1, '1GYUKKEF3AR247346'),
(9, 2, '3LNDL2L34CR736322'),
(10, 2, 'BCFEBBBK2BG423491');

create table employee_vehicle (
                                id int not null primary key auto_increment,
                                employee_id int,
                                vehicle_id int,
                                parking_violations int,
                                traffic_fees int,
                                foreign key (employee_id)
                                  references employee (employee_id)
                                  ON DELETE CASCADE,
                                foreign key (vehicle_id)
                                  references vehicle (vehicle_id)
                                  ON DELETE CASCADE
);

insert into employee_vehicle (employee_id, vehicle_id, parking_violations, traffic_fees) values
(2, 3, 0, 50),
(2, 4, 2, 87),
(3, 1, 1, 45),
(6, 5, 2, 50),
(6, 6, 1, 20),
(8, 5, 1, 20),
(8, 6, 3, 180),
(10, 4, 4, 250),
(10, 6, 0, 54),
(11, 7, 0, 160),
(12, 7, 2, 200),
(13, 8, 1, 102),
(16, 9, 5, 420),
(17, 1, 4, 320),
(17, 2, 1, 50),
(17, 10, 0, 0),
(18, 9, 1, 0),
(19, 1, 3, 360),
(20, 8, 3, 280);

create table licence (
                       licence_id   tinyint not null primary key auto_increment,
                       type varchar(10)
) ENGINE = InnoDB;

insert into licence (type) values
('A'),
('B'),
('C'),
('D'),
('E'),
('F'),
('G');

create table employee_licence (
                                id int not null primary key auto_increment,
                                employee_id int,
                                licence_id tinyint,
                                foreign key (employee_id)
                                  references employee (employee_id)
                                  ON DELETE CASCADE,
                                foreign key (licence_id)
                                  references licence (licence_id)
                                  ON DELETE CASCADE
);

insert into employee_licence (employee_id, licence_id) values
('1', '1'),
('1', '2'),
('1', '3'),
('2', '2'),
('2', '3'),
('3', '1'),
('4', '2'),
('5', '2'),
('6', '2'),
('7', '1'),
('7', '2'),
('8', '2'),
('8', '3'),
('9', '2'),
('10', '2'),
('11', '1'),
('12', '1'),
('13', '1'),
('14', '2'),
('15', '2'),
('16', '2'),
('17', '1'),
('17', '2'),
('17', '3'),
('18', '2'),
('19', '1'),
('20', '1');



# ==================================================================================
# 10 select statements using 5 built-in functions: COUNT, CONCAT, SUM, AVG, MAX, MIN
            # ==================================================================================

            # 1. Count total number of couriers in the company
select COUNT(*) from employee where position = 'Courier';

# 2. Select all employees (first name, last name and position in company) which have drivers licence A
select CONCAT(e.first_name, ' ', e.last_name), e.position from employee e
                                                                 inner join employee_licence el on e.employee_id = el.employee_id
                                                                 inner join licence l on el.licence_id = l.licence_id  where UPPER(l.type) = 'A';

# 3. Select all females (first and last name) in company that drives company vehicles
select distinct e.first_name, e.last_name from employee_vehicle ev inner join employee e on ev.employee_id = e.employee_id where e.gender = 'Female';

# 4. Calculate the sum of all traffic fees
select SUM(traffic_fees) from employee_vehicle;

# 5. List sum of all traffic fees sorted by couriers
select e.first_name, e.last_name, SUM(traffic_fees) from employee_vehicle ev inner join employee e on ev.employee_id = e.employee_id group by e.employee_id;

# 6. Which courier has the most traffic fees
select e.first_name, e.last_name, SUM(traffic_fees) from employee_vehicle ev inner join employee e on ev.employee_id = e.employee_id
group by e.employee_id order by SUM(traffic_fees) desc limit 1;

# 7. List sum of all traffic fees sorted by vehicle type
select v.type, SUM(traffic_fees) from employee_vehicle ev inner join vehicle v on ev.vehicle_id = v.vehicle_id group by v.type;

# 8. What is the average traffic fee by employee
select e.first_name, AVG(ev.traffic_fees) from employee_vehicle ev inner join employee e on ev.employee_id = e.employee_id group by e.employee_id;

# 9. What is the maximal traffic fee
select MAX(ev.traffic_fees) from employee_vehicle ev;

# 10. The year of the oldest vehicle in company
select MIN(year) from vehicle;

# 11. Select all employees out of couriers which dont have traffic fee
select e.first_name, e.last_name from employee e where position = 'Courier' and not exists (select 1 from employee_vehicle ev where ev.employee_id = e.employee_id and ev.traffic_fees > 0);


# 12. List all employees with their licences
select e.first_name, e.last_name, max(case when l.type = 'A' then 'A' else '-' end)  as licenceA,
       max(case when l.type = 'B' then 'B' else '-' end) as licenceB, max(case when l.type = 'C' then 'C' else '-' end)  as licenceC
from employee e left join employee_licence el on e.employee_id = el.employee_id inner join licence l on el.licence_id = l.licence_id
group by e.first_name, e.last_name;


# ==================================================================================
# 5 update statements
      # ==================================================================================

update employee set gender = 'M' where gender = 'Male';
update employee set gender = 'F' where gender = 'Female';
update vehicle set country = 'USA' where country = 'United States of America';
update vehicle_registrations set vehicle_ssn = 'JN1BJ0HP2FM480796' where vehicle_ssn = 'JN1BJ0HP2FM480795';
update employee_vehicle set traffic_fees = 120 where traffic_fees = 102;



# ==================================================================================
# 5 delete statements
# ==================================================================================

delete from licence where type = 'F';
delete from vehicle where vehicle_id = 7;
delete from employee where first_name = 'Winni' and last_name = 'Castano';
delete from equipment where type = 'courier rainsuit';
delete from equipment where type = 'notebook';