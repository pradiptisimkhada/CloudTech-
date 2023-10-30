 set sql_safe_updates = 0;
 
 select * 
 from universities.universities;
 
 update universities.universities
 set Affiliated_colleges = 1
 where SN =9;
 
 CREATE TABLE universities.colleges(
 Sn int auto_increment primary key,
 college_name varchar(40),
 affiliated_uni varchar(40)
 );
 
 insert into universities.colleges(
 college_name, affiliated_uni
 )values('Pulchowk Campus','Tribhuwan University'),('Thapathali Campus','Tribhuwan University');
 
 Select * from universities.colleges;
 
 delete from universities.colleges where college_name like '%Pulchowk%';

 drop table universities.colleges;
 