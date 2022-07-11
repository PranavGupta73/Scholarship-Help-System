create database scholarship_portal;
use scholarship_portal;
show tables;

create table login(
user_id varchar(25) not null,
pwd varchar(25) not null,
primary key (user_id)
);

create table scholarship(
sch_id varchar(4) not null,
sch_name varchar(50),
primary key (sch_id)
);

create table college(
c_id varchar(10) not null,
c_name varchar(30) not null,
Primary key ( c_id)
);

create table student(
student_id varchar(25) not null,
student_name varchar(30) not null,
college_id varchar(30) not null,
cg float not null,
family_income bigint not null,
sch_id varchar(4) ,
primary key(student_id),
foreign key (student_id) references login(user_id) on delete cascade,
foreign key (sch_id) references scholarship(sch_id) on delete set null,
foreign key (college_id) references college(c_id) on delete cascade
);


create table sport(
student_id varchar(25) not null,
sport_name varchar(25),
position varchar(25),
primary key (student_id),
foreign key (student_id) references student(student_id) on delete cascade
);

insert into college values('BITSP','BITS Pilani, Pilani Campus');
insert into college values('BITSH','BITS Pilani, Hyderabad Campus');
insert into college values('BITSG','BITS Pilani, Goa Campus');


Insert into scholarship values('M1','Merit 100%');
Insert into scholarship values('M2','Merit 40%');
Insert into scholarship values('MCN1','Merit Cum Need 80%');
Insert into scholarship values('MCN2','Merit Cum Need 40%');
Insert into scholarship values('MCN3','Merit Cum Need 25%');
Insert into scholarship values('MCN4','Merit Cum Need 15%');
insert into scholarship values('SPRT', 'Sports 50%');

insert into login values('f20201100p', '1100');
insert into login values('f20201101p', '1101');
insert into login values('f20201102p', '1102');
insert into login values('f20201103p', '1103');
insert into login values('f20201104p', '1104');
insert into login values('f20201105p', '1105');
insert into login values('f20201106p', '1106');
insert into login values('f20201107p', '1107');
insert into login values('f20201108p', '1108');
insert into login values('f20201109p', '1109');
insert into login values('f20201110p', '1110');
insert into login values('f20201111p', '1111');
insert into login values('f20201112p', '1112');
insert into login values('f20201113p', '1113');
insert into login values('f20201114p', '1114');
insert into login values('f20201115p', '1115');
insert into login values('f20201116p', '1116');
insert into login values('f20201117p', '1117');
insert into login values('f20201118p', '1118');
insert into login values('f20201119p', '1119');

insert into login values('f20201750p', '1750');
insert into login values('f20201751p', '1751');
insert into login values('f20201752p', '1752');
insert into login values('f20201753p', '1753');
insert into login values('f20201754p', '1754');
insert into login values('f20201755p', '1755');
insert into login values('f20201756p', '1756');
insert into login values('f20201757p', '1757');
insert into login values('f20201758p', '1758');
insert into login values('f20201759p', '1759');

insert into login values('f20201000g', '1000');
insert into login values('f20201001g', '1001');
insert into login values('f20201002g', '1002');
insert into login values('f20201003g', '1003');
insert into login values('f20201004g', '1004');
insert into login values('f20201005g', '1005');
insert into login values('f20201006g', '1006');
insert into login values('f20201007g', '1007');
insert into login values('f20201008g', '1008');
insert into login values('f20201009g', '1009');

insert into login values('f20200160h', '0160');
insert into login values('f20200161h', '0161');
insert into login values('f20200162h', '0162');
insert into login values('f20200163h', '0163');
insert into login values('f20200164h', '0164');
insert into login values('f20200165h', '0165');
insert into login values('f20200166h', '0166');
insert into login values('f20200167h', '0167');
insert into login values('f20200168h', '0168');
insert into login values('f20200169h', '0169');
insert into login values('f20200780h', '0780');
insert into login values('f20200781h', '0781');
insert into login values('f20200782h', '0782');
insert into login values('f20200783h', '0783');
insert into login values('f20200784h', '0784');
insert into login values('f20200785h', '0785');
insert into login values('f20200786h', '0786');
insert into login values('f20200787h', '0787');
insert into login values('f20200788h', '0788');
insert into login values('f20200789h', '0789');
insert into login values('f20200790h', '0790');
insert into login values('f20200791h', '0791');
insert into login values('f20200792h', '0792');
insert into login values('f20200793h', '0793');
insert into login values('f20200794h', '0794');
insert into login values('f20200795h', '0795');
insert into login values('f20200796h', '0796');
insert into login values('f20200797h', '0797');
insert into login values('f20200798h', '0798');
insert into login values('f20200799h', '0799');

insert into login values('f20201500g', '1500');
insert into login values('f20201501g', '1501');
insert into login values('f20201502g', '1502');
insert into login values('f20201503g', '1503');
insert into login values('f20201504g', '1504');
insert into login values('f20201505g', '1505');
insert into login values('f20201506g', '1506');
insert into login values('f20201507g', '1507');
insert into login values('f20201508g', '1508');
insert into login values('f20201509g', '1509');


insert into student values('f20201100p', 'Nicholas Middleton', 'BITSP', '5.00626', '774982', NULL);
insert into student values('f20201101p', 'Heidi Ortiz', 'BITSP', '7.81793', '1535307', NULL);
insert into student values('f20201102p', 'David Lowe', 'BITSP', '5.96652', '1024920', NULL);
insert into student values('f20201103p', 'Brenda Leonard', 'BITSP', '9.0437', '1276268', NULL);
insert into student values('f20201104p', 'Jeremy Snyder', 'BITSP', '7.92505', '861285', NULL);
insert into student values('f20201105p', 'William Hamilton', 'BITSP', '7.39937', '657436', NULL);
insert into student values('f20201106p', 'Zachary Stanley', 'BITSP', '6.75146', '949707', NULL);
insert into student values('f20201107p', 'Joanna Walker', 'BITSP', '9.47981', '820474', NULL);
insert into student values('f20201108p', 'Margaret Lin', 'BITSP', '9.1142', '786733', NULL);
insert into student values('f20201109p', 'Michael Gates', 'BITSP', '8.73302', '1179538', NULL);
insert into student values('f20201110p', 'James Williams', 'BITSP', '5.87054', '1648625', NULL);
insert into student values('f20201111p', 'William Carter', 'BITSP', '9.29472', '1345909', NULL);
insert into student values('f20201112p', 'Heather Smith', 'BITSP', '8.55251', '1803007', NULL);
insert into student values('f20201113p', 'Billy Arias', 'BITSP', '7.56767', '1573342', NULL);
insert into student values('f20201114p', 'John Simon', 'BITSP', '6.51997', '716242', NULL);
insert into student values('f20201115p', 'Christopher Wyatt', 'BITSP', '5.07492', '1985945', NULL);
insert into student values('f20201116p', 'Alex Green', 'BITSP', '5.45701', '999971', NULL);
insert into student values('f20201117p', 'Gabrielle May', 'BITSP', '6.82226', '894860', NULL);
insert into student values('f20201118p', 'Donna Johnson', 'BITSP', '5.73656', '1638296', NULL);
insert into student values('f20201119p', 'Danielle Cervantes', 'BITSP', '5.82949', '1971316', NULL);
insert into student values('f20201750p', 'Amber Pena', 'BITSP', '9.94263', '2057452', NULL);
insert into student values('f20201751p', 'Jenna Hicks', 'BITSP', '7.22846', '1125930', NULL);
insert into student values('f20201752p', 'Donald Ruiz', 'BITSP', '5.59542', '1576268', NULL);
insert into student values('f20201753p', 'Steven Martinez', 'BITSP', '5.02335', '780318', NULL);
insert into student values('f20201754p', 'Patty Harris', 'BITSP', '5.04456', '2070114', NULL);
insert into student values('f20201755p', 'John Harper', 'BITSP', '6.8894', '2039531', NULL);
insert into student values('f20201756p', 'Kenneth Mcclure', 'BITSP', '7.65831', '1557701', NULL);
insert into student values('f20201757p', 'Ronald Mayo', 'BITSP', '7.85592', '1888836', NULL);
insert into student values('f20201758p', 'Danielle Johnston', 'BITSP', '8.00882', '1128507', NULL);
insert into student values('f20201759p', 'Nicole Smith', 'BITSP', '8.03583', '1241108', NULL);


insert into student values('f20201000g', 'Jacob Parker', 'BITSG', '5.00626', '1831270', NULL);
insert into student values('f20201001g', 'James Rogers', 'BITSG', '7.81793', '1967829', NULL);
insert into student values('f20201002g', 'Kayla Reynolds', 'BITSG', '5.96652', '639653', NULL);
insert into student values('f20201003g', 'Michael Salinas', 'BITSG', '9.0437', '1592494', NULL);
insert into student values('f20201004g', 'Adam Woods', 'BITSG', '7.92505', '649725', NULL);
insert into student values('f20201005g', 'Megan Wheeler', 'BITSG', '7.39937', '2030538', NULL);
insert into student values('f20201006g', 'Rachel Alexander', 'BITSG', '6.75146', '1409461', NULL);
insert into student values('f20201007g', 'Caitlin Patterson', 'BITSG', '9.47981', '946078', NULL);
insert into student values('f20201008g', 'Amanda Grant', 'BITSG', '9.1142', '864789', NULL);
insert into student values('f20201009g', 'Brian Hudson', 'BITSG', '8.73302', '2069036', NULL);
insert into student values('f20201500g', 'Nathan Tyler', 'BITSG', '5.87054', '1764270', NULL);
insert into student values('f20201501g', 'Michael Hicks', 'BITSG', '9.29472', '988448', NULL);
insert into student values('f20201502g', 'Lisa Johnson', 'BITSG', '8.55251', '1814483', NULL);
insert into student values('f20201503g', 'Heather Davis', 'BITSG', '7.56767', '1545136', NULL);
insert into student values('f20201504g', 'Brett Powell', 'BITSG', '6.51997', '1707915', NULL);
insert into student values('f20201505g', 'Taylor Hubbard', 'BITSG', '5.07492', '1807844', NULL);
insert into student values('f20201506g', 'Lisa Robinson', 'BITSG', '5.45701', '820489', NULL);
insert into student values('f20201507g', 'Jordan Carr', 'BITSG', '6.82226', '943911', NULL);
insert into student values('f20201508g', 'Richard French', 'BITSG', '5.73656', '1982762', NULL);
insert into student values('f20201509g', 'Benjamin Banks', 'BITSG', '5.82949', '1801875', NULL);

insert into student values('f20200160h', 'Sarah Holmes', 'BITSH', '5.00626', '2085964', NULL);
insert into student values('f20200161h', 'Scott Jimenez', 'BITSH', '7.81793', '2023705', NULL);
insert into student values('f20200162h', 'Nicholas Lee', 'BITSH', '5.96652', '2043702', NULL);
insert into student values('f20200163h', 'William Brown', 'BITSH', '9.0437', '1533807', NULL);
insert into student values('f20200164h', 'Cynthia Frank', 'BITSH', '7.92505', '1329130', NULL);
insert into student values('f20200165h', 'Paul Anderson', 'BITSH', '7.39937', '1658115', NULL);
insert into student values('f20200166h', 'Donald Liu', 'BITSH', '6.75146', '1743088', NULL);
insert into student values('f20200167h', 'Sandra Nguyen', 'BITSH', '9.47981', '1449119', NULL);
insert into student values('f20200168h', 'Jennifer Tyler', 'BITSH', '9.1142', '1264028', NULL);
insert into student values('f20200169h', 'Stephanie Jones', 'BITSH', '8.73302', '1858968', NULL);
insert into student values('f20200780h', 'Daniel Koch', 'BITSH', '5.87054', '790899', NULL);
insert into student values('f20200781h', 'Erica Brown', 'BITSH', '9.29472', '1763913', NULL);
insert into student values('f20200782h', 'George Price', 'BITSH', '8.55251', '1016113', NULL);
insert into student values('f20200783h', 'Rachel Hudson', 'BITSH', '7.56767', '841205', NULL);
insert into student values('f20200784h', 'Ashley Harrison', 'BITSH', '6.51997', '2002002', NULL);
insert into student values('f20200785h', 'Timothy Hampton', 'BITSH', '5.07492', '1192594', NULL);
insert into student values('f20200786h', 'Robert Reid', 'BITSH', '5.45701', '827244', NULL);
insert into student values('f20200787h', 'Christian Baldwin', 'BITSH', '6.82226', '773428', NULL);
insert into student values('f20200788h', 'Tyler Tanner', 'BITSH', '5.73656', '1283170', NULL);
insert into student values('f20200789h', 'Amanda Snow', 'BITSH', '5.82949', '919783', NULL);
insert into student values('f20200790h', 'Michael Cole', 'BITSH', '9.94263', '914437', NULL);
insert into student values('f20200791h', 'Jackie Becker', 'BITSH', '7.22846', '1692154', NULL);
insert into student values('f20200792h', 'Michelle Campbell', 'BITSH', '5.59542', '751573', NULL);
insert into student values('f20200793h', 'Jennifer Walker', 'BITSH', '5.02335', '1122125', NULL);
insert into student values('f20200794h', 'Karen Pittman', 'BITSH', '5.04456', '703511', NULL);
insert into student values('f20200795h', 'Whitney Gray', 'BITSH', '6.8894', '1608596', NULL);
insert into student values('f20200796h', 'Joshua Reed', 'BITSH', '7.65831', '1478560', NULL);
insert into student values('f20200797h', 'Heather Wolfe', 'BITSH', '7.85592', '1316443', NULL);
insert into student values('f20200798h', 'Carla Olson', 'BITSH', '8.00882', '1461853', NULL);
insert into student values('f20200799h', 'George Glass', 'BITSH', '8.03583', '1365009', NULL);

insert into sport values('f20201100p', 'basketball', 'player');
insert into sport values('f20201101p', 'basketball', 'player');
insert into sport values('f20201102p', 'tennis', 'player');
insert into sport values('f20201103p', 'tennis', 'player');
insert into sport values('f20201104p', 'basketball', 'player');
insert into sport values('f20201105p', 'tennis', 'player');
insert into sport values('f20201106p', 'cricket', 'player');
insert into sport values('f20201107p', 'cricket', 'player');
insert into sport values('f20201108p', 'tennis', 'player');
insert into sport values('f20201109p', 'football', 'player');
insert into sport values('f20201000g', 'cricket', 'player');
insert into sport values('f20201001g', 'volleyball', 'player');
insert into sport values('f20201002g', 'football', 'player');
insert into sport values('f20201003g', 'badminton', 'player');
insert into sport values('f20201004g', 'tennis', 'player');
insert into sport values('f20201005g', 'basketball', 'player');
insert into sport values('f20201006g', 'cricket', 'player');
insert into sport values('f20201007g', 'volleyball', 'player');
insert into sport values('f20201008g', 'football', 'player');
insert into sport values('f20201009g', 'badminton', 'player');
insert into sport values('f20200780h', 'cricket', 'player');
insert into sport values('f20200781h', 'volleyball', 'player');
insert into sport values('f20200782h', 'football', 'player');
insert into sport values('f20200783h', 'badminton', 'player');
insert into sport values('f20200784h', 'tennis', 'player');
insert into sport values('f20200785h', 'basketball', 'player');
insert into sport values('f20200786h', 'cricket', 'player');
insert into sport values('f20200787h', 'volleyball', 'player');
insert into sport values('f20200788h', 'football', 'player');
insert into sport values('f20200789h', 'badminton', 'player');

insert into sport values('f20201112p','badminton','captain');
insert into sport values('f20201113p','tennis','captain');
insert into sport values('f20201114p','basketball','captain');
insert into sport values('f20201115p','football','captain');
insert into sport values('f20201116p','cricket','captain');

insert into sport values('f20201500g','badminton','captain');
insert into sport values('f20201501g','tennis','captain');
insert into sport values('f20201502g','basketball','captain');
insert into sport values('f20201503g','football','captain');
insert into sport values('f20201504g','cricket','captain');

insert into sport values('f20200791h','badminton','captain');
insert into sport values('f20200792h','tennis','captain');
insert into sport values('f20200793h','basketball','captain');
insert into sport values('f20200794h','football','captain');
insert into sport values('f20200795h','cricket','captain');


update student set sch_id = 'M1' where cg>9.5;
update student set sch_id = 'MCN1' where sch_id is null and cg>8.7 and family_income<1100000;
update student set sch_id = 'M2' where sch_id is null and cg>9;
Update student set sch_id = 'MCN2' where sch_id is null and cg>8.0 and family_income<1100000;
Update student set sch_id = 'MCN3' where sch_id is null and cg>7.0 and family_income<1100000;
Update student set sch_id = 'MCN3' where sch_id is null and cg>6.5 and family_income<1100000;
Update student set sch_id = 'MCN4' where sch_id is null and cg>5.9 and family_income<1100000;
update student natural join sport set sch_id='SPRT' where sch_id is null and cg>5.5 and position='captain';

# following views return all the students having a particular scholarship.

Create view merit_100 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='M1'; 

Create view merit_40 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='M2'; 

Create view merit_cum_need_80 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='MCN1'; 

Create view merit_cum_need_40 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='MCN2'; 

Create view merit_cum_need_25 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='MCN3';

Create view merit_cum_need_15 as
select student_id , student_name, c_name as college_name 
from student s inner join college c on s.college_id = c.c_id
where sch_id='MCN4';

Create view sports_50 as
select student_id , student_name, c_name as college_name,sport_name
from student s inner join college c on s.college_id = c.c_id natural join sport
where sch_id='SPRT';


# the below procedure returns the scholarship for the given student id.
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE
`scholarship`(IN std_id VARCHAR(25),out scholarship_name varchar(30))
 READS SQL DATA
 DETERMINISTIC
 SQL SECURITY INVOKER
BEGIN
select sch_name into scholarship_name
from scholarship_portal.student natural join scholarship_portal.scholarship 
where student_id=std_id;
END$$
DELIMITER ;

select * from merit_100;
select * from merit_40;
select * from merit_cum_need_80;
select * from merit_cum_need_40;
select * from merit_cum_need_25;
select * from merit_cum_need_15;
select * from sports_50;

call scholarship('f20200790h',@schname);
select @schname;
# merit 100% is printed. 

call scholarship('f20201003g',@schname);
select @schname;
# merit 40% is printed. 

call scholarship('f20201008g',@schname);
select @schname;
# merit cum need 80% is printed. 

call scholarship('f20200782h',@schname);
select @schname;
# merit cum need 40% is printed. 

call scholarship('f20201104p',@schname);
select @schname;
# merit cum need 25% is printed. 

call scholarship('f20201102p',@schname);
select @schname;
# merit cum need 15% is printed.
 
call scholarship('f20200792h',@schname);
select @schname;
# sports 50% is printed. 

call scholarship('f20201100p',@schname);
select @schname;
# null is printed. 

-- drop table college;
-- drop table login;u
-- drop table scholarship;
-- drop table sport;
-- drop table student;
-- drop database scholarship_portal;










