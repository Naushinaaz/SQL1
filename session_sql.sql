DROP TABLE WORKERNN;
	CREATE TABLE WORKERNN 
	(
     WORKER_ID    INT NOT NULL PRIMARY KEY ,
     FIRST_NAME   VARCHAR(25),
     LAST_NAME    VARCHAR(25),
     SALARY INT,
     JOINING_DATE TIMESTAMP,
	DEPARTMENT VARCHAR(25)
	--PRIMARY KEY(WORKER_ID)
);

--select * from dual;


INSERT INTO WORKERNN  VALUES (001, 'Monika', 'Arora', 100000, TIMESTAMP '2017-02-08 09:00:00', 'HR');
INSERT INTO WORKERNN  VALUES (002, 'Niharika', 'Verma', 80000, TIMESTAMP '2017-06-11 09:00:00', 'Admin');
INSERT INTO WORKERNN  VALUES (003, 'Vishal', 'Singhal', 300000, TIMESTAMP '2017-02-05 09:00:00', 'HR');
INSERT INTO WORKERNN  VALUES (004, 'Amitabh', 'Singh', 500000,TIMESTAMP '2017-02-11 09:00:00', 'Admin');
INSERT INTO WORKERNN  VALUES (005, 'Vivek', 'Bhati', 500000,TIMESTAMP '2017-06-11 09:00:00', 'Admin');
INSERT INTO WORKERNN  VALUES (006, 'Vipul', 'Diwan', 200000,TIMESTAMP '2018-06-11 09:00:00', 'Account');
INSERT INTO WORKERNN  VALUES (007, 'Satish', 'Kumar', 75000,TIMESTAMP '2018-01-02 09:00:00', 'Account');
INSERT INTO WORKERNN  VALUES (008, 'Geetika', 'Chauhan', 90000,TIMESTAMP '2018-04-11 09:00:00', 'Admin');


CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT NUMBER(10),
	BONUS_DATE TIMESTAMP
	
);

INSERT INTO Bonus VALUES (001, 5000, TIMESTAMP '2016-02-11 09:00:00');
INSERT INTO Bonus VALUES (002, 3000, TIMESTAMP '2016-04-11 09:00:00');
INSERT INTO Bonus VALUES (003, 4000, TIMESTAMP '2017-05-11 09:00:00');
INSERT INTO Bonus VALUES (001, 4500, TIMESTAMP '2018-06-11 09:00:00');
INSERT INTO Bonus VALUES (002, 3500, TIMESTAMP '2016-07-11 09:00:00');

DROP TABLE TITLE;
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE VARCHAR(25),
	AFFECTED_FROM TIMESTAMP
	
);

INSERT INTO Title VALUES (001, 'Manager', TIMESTAMP '2016-02-20 00:00:00');
INSERT INTO Title VALUES (002, 'Executive',TIMESTAMP '2016-06-11 00:00:00');
INSERT INTO Title VALUES (008, 'Executive', TIMESTAMP'2016-06-11 00:00:00');
INSERT INTO Title VALUES(005, 'Manager', TIMESTAMP'2016-06-11 00:00:00');
 INSERT INTO Title VALUES(004, 'Asst. Manager',TIMESTAMP '2016-06-11 00:00:00');
 INSERT INTO Title VALUES(007, 'Executive',TIMESTAMP '2016-06-11 00:00:00');
 INSERT INTO Title VALUES(006, 'Lead', TIMESTAMP'2016-06-11 00:00:00');
 INSERT INTO Title VALUES(003, 'Lead',TIMESTAMP '2016-06-11 00:00:00');
 
 SELECT * FROM TITLE ORDER BY WORKER_REF_ID ;
 COMMIT;
 
 
 --Q-1.Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
 select FIRST_NAME as WORKER_NAME from WORKERNN ;
--Q-2.Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
select UPPER(FIRST_NAME) as WORKER_NAME from WORKERNN;
--Q-3.Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
select DISTINCT(DEPARTMENT) from WORKERNN;
--Q-4.Write An SQL Query To Print The First Three Characters Of  FIRST_NAME From Worker Table.
select substr (first_name,1,3) from workernn;
--Q-5.Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
select instr (FIRST_NAME, 'A') from workernn where first_name ='Amitabh';
--Q-6.Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
select RTRIM(first_name) from workernn;
--Q-7.Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
select ltrim (first_name) from workernn;
--Q-8.Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
select distinct length(department) from workernn;
--Q-9.Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘A’.
select replace (first_name, 'a','A') from workernn;
--Q-10.Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.
select (first_name ||' '|| last_name) as Complete_Name from workernn;
select CONCAT (concat(first_name,' '),last_name) as complete_name from workernn;
--Q-11.Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
select * from workernn order by first_name asc;
--Q-12.Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.
select * from workernn order by first_name asc,department desc;
--Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.
select * from workernn where first_name in ('Vipul','Satish');
--Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
select * from workernn where first_name not in ('Vipul','Satish');
--Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
select * from workernn where department like 'Admin%';
--Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
select * from workernn where first_name like'%a%';
--Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
select * from workernn where first_name like '%a';
--Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
select * from workernn where first_name like '%h' and length(first_name) =6;
--Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
select * from workernn where salary between 100000 and 500000;
--Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
select * from workernn;
select * from workernn where extract (year from JOINING_DATE)= 2018 and extract (month from JOINING_DATE) =01;
--Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
select count(*) from workernn where department like 'Admin';
--Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
select (first_name || ' ' ||last_name) as complete_names from workernn where salary >= 50000 and salary <=100000;
select * from workernn WHERE WORKER_ID IN 
(SELECT WORKER_ID FROM workernn 
WHERE Salary BETWEEN 50000 AND 100000);
--Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
select department , count(1) as number_workers from workernn group by department order by number_workers desc;
--Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
select * from workernn w, title tt where w.worker_id= tt.worker_ref_id and tt.worker_title like 'Manager';
--Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
select * from title;
select worker_title, affected_from ,count(*) from title group by worker_title, affected_from having count(*) >1;
--Q-26. Write An SQL Query To Show Only Odd Rows From A Table.
select * from workernn where mod(worker_id,2) <>0;
--Q-27. Write An SQL Query To Show Only Even Rows From A Table.
select * from workernn where mod(worker_id,2) =0;
--Q-28. Write An SQL Query To Clone A New Table From Another Table.
create table workerclone as select *  from workernn;
drop table workerclone;
create table workerclone2 as select *  from workernn where 1=0;
select * from workerclone2;
--Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
select * from workernn intersect select * from workerclone;
--Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have.
select worker_id from workernn minus (select worker_ref_id from bonus);
--Q-31. Write An SQL Query To Show The Current Date And Time.
select sysdate from dual;
--Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
Select * from (select * from workernn order by salary desc) where rownum <=5;
--Q-33. Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.
SELECT first_name, salary FROM workernn w1 WHERE 5-1 = (SELECT COUNT(DISTINCT salary) FROM workernn w2 WHERE w2.salary > w1.salary);
select first_name, salary from (select w.*, dense_rank() over (order by salary desc) as drank from workernn w) where drank=5;
--Q-34. Write An SQL Query To Determine The 5th Highest Salary Without Using TOP Or Limit Method.

--Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary.
select w.first_name, w.salary from workernn w, workernn w1 where w.salary = w1.salary and w.worker_id != w1.worker_id;
--Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
select first_name,salary from workernn w1 where 2-1 = (SELECT COUNT(DISTINCT salary) FROM workernn w2 WHERE w2.salary > w1.salary);
select max(salary) from workernn where salary not in (select max(salary) from workernn);
--Q-37. Write An SQL Query To Show One Row Twice In Results From A Table.
select first_name, department from workernn w where department = 'HR' union all select first_name, department from workernn w1 where w1.department = 'HR';
--Q-38. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
SELECT * FROM Workernn INTERSECT (SELECT * FROM workerclone);
--Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.
select * from workernn where rownum <= (select count(*)/2 from workernn);
select * from workernn sample(50);
--Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.
select department, count(*)  from workernn group by department having count(*) <5;
--Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There.
select department, count(*)  from workernn group by department;
--Q-42. Write An SQL Query To Show The Last Record From A Table.
select * from workernn where worker_id = (select max(worker_id) from workernn); --since worker id id the primary key
--Q-43. Write An SQL Query To Fetch The First Row Of A Table.
select * from workernn where worker_id = (select min(worker_id) from workernn);
--Q-44. Write An SQL Query To Fetch The Last Five Records From A Table.
select * from (select * from workernn order by worker_id desc ) where rownum <=5 order by rownum ;
--Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.
select w.first_name, w.salary from (select department,max(salary) as totalsalary from workernn group by department) as temp
inner join workernn w on  temp.department = w.department and temp.totalsalary = w.salary ;

SELECT w.DEPARTMENT,w.FIRST_NAME,w.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Workernn group by DEPARTMENT) as TempNew 
 Join Workernn w on TempNew.DEPARTMENT=w.DEPARTMENT 
 and TempNew.TotalSalary=w.Salary;
--Q-46. Write An SQL Query To Fetch Three Max Salaries From A Table.
select distinct(salary) from (select w.*, dense_rank() over (order by salary desc) as drank from workernn w) where drank in (1,2,3);
SELECT distinct Salary from workernn a WHERE 3 >= (SELECT count(distinct Salary) from workernn b WHERE a.Salary <= b.Salary) order by a.Salary desc;
--Q-47. Write An SQL Query To Fetch Three Min Salaries From A Table.
select distinct(salary) from (select w.*, dense_rank() over (order by salary ) as drank from workernn w) where drank in (1,2,3);
SELECT distinct Salary from workernn a WHERE 3 >= (SELECT count(distinct Salary) from workernn b WHERE a.Salary >= b.Salary) order by a.Salary desc;
--Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table.
SELECT distinct Salary from workernn a WHERE n >= (SELECT count(distinct Salary) from workernn b WHERE a.Salary <= b.Salary) order by a.Salary desc;
--Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid For Each Of Them.
SELECT DEPARTMENT, sum(Salary) from workernn group by DEPARTMENT;
--Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.
SELECT FIRST_NAME, SALARY from Workernn WHERE SALARY=(SELECT max(SALARY) from Workernn);
