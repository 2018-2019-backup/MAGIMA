

(customerdetail table)

create table customer(
Id int not null primary key identity(1,1),
CustomerName varchar(50),
FathersName varchar(50),
Dob datetime,
Sex varchar(20),
Occupation varchar(100),
MobileNumber varchar(50),
LandLineNumber varchar(50),
IdProof varchar(50),
IdNumber varchar(50),
Address varchar(300),
City varchar(50),
Reference varchar(50),
ReferenceRelationship varchar(50),
Photo varbinary(max) not null
)

alter table customer add customerid AS 'MGR' + RIGHT('000' + CAST(Id AS VARCHAR(3)), 3) PERSISTED
alter table customer add Photo varbinary(max)

select*from customer
truncate table customer

drop table customer


create procedure CustomerDetail2
@id int
as
begin 
select Id, CustomerName, FathersName, Dob, Sex, Occupation, MobileNumber, LandLineNumber,IdProof,IdNumber,Address,City,Reference,ReferenceRelationship from customer
where Id= @id
end

Customer insertion

create procedure Financeinsert2(
@CustomerName varchar(50),
@FathersName varchar(50),
@Dob datetime,
@Sex varchar(20),
@Occupation varchar(100),
@MobileNumber varchar(50),
@LandLineNumber varchar(50),
@IdProof varchar(50),
@IdNumber varchar(50),
@Address varchar(300),
@City varchar(50),
@Reference varchar(50),
@ReferenceRelationship varchar(50),
@Photo varbinary(max)
)
as 
begin
insert into customer(CustomerName,FathersName,Dob,Sex,Occupation,MobileNumber,LandLineNumber,IdProof,IdNumber,Address,City,Reference,ReferenceRelationship,Photo)
values(@CustomerName,@FathersName,@Dob,@Sex,@Occupation,@MobileNumber,@LandLineNumber,@IdProof,@IdNumber,@Address,@City,@Reference,@ReferenceRelationship,@Photo)
end

create procedure FinanceApp(
@CustomerName varchar(50),
@FathersName varchar(50),
@Dob datetime,
@Sex varchar(20),
@Occupation varchar(100),
@MobileNumber varchar(50),
@LandLineNumber varchar(50),
@IdProof varchar(50),
@IdNumber varchar(50),
@Address varchar(300),
@City varchar(50),
@Reference varchar(50),
@ReferenceRelationship varchar(50),
@Photo varbinary(max)
)
as 
begin
insert into customer(CustomerName,FathersName,Dob,Sex,Occupation,MobileNumber,LandLineNumber,IdProof,IdNumber,Address,City,Reference,ReferenceRelationship)
values(@CustomerName,@FathersName,@Dob,@Sex,@Occupation,@MobileNumber,@LandLineNumber,@IdProof,@IdNumber,@Address,@City,@Reference,@ReferenceRelationship)
end


Customer updation



create procedure ups(
@CustomerName varchar(50),
@FathersName varchar(50),
@Dob datetime,
@Sex varchar(20),
@Occupation varchar(100),
@MobileNumber varchar(50),
@LandLineNumber varchar(50),
@IdProof varchar(50),
@IdNumber varchar(50),
@Address varchar(300),
@City varchar(50),
@Reference varchar(50),
@ReferenceRelationship varchar(50),
@id int
)
as 
begin
update customer
set  CustomerName=@CustomerName, FathersName=@FathersName, Dob=@Dob, Sex=@Sex, Occupation=@Occupation, MobileNumber=@MobileNumber, LandLineNumber=@LandLineNumber,IdProof=@IdProof,IdNumber=@IdNumber,Address=@Address,City=@City,Reference=@Reference,ReferenceRelationship=@ReferenceRelationship
where Id=@id
end

(grid fill)

select * from customer

create procedure gfillss
as
begin
select Id,customerid,CustomerName, FathersName, Dob, Sex, Occupation, MobileNumber, LandLineNumber,IdProof,IdNumber,Address,City,Reference,ReferenceRelationship,Photo from customer
end

drop procedure gfillss

select * from customer

(grid delete)

create procedure del
(@id int)
as
begin
delete from customer where Id=@id
end

(grid search customer detail)

create procedure searchpage
@id int
as
begin 
select  CustomerName, FathersName, Dob, Sex, Occupation, MobileNumber, LandLineNumber,IdProof,IdNumber,Address,City,Reference,ReferenceRelationship from customer
where Id= @id
end

(interest tabele)

create table interest20(customerid int foreign key  References customer(Id),principalamount float,interest float,months float,loantype varchar(20),totalamount float,totalinterest float,loanid int not null primary key identity(1,1),createddate varchar(50))
alter table interest20 add ID AS 'MGR' + RIGHT('000' + CAST(customerid AS VARCHAR(3)), 3) PERSISTED

select*from interest20
drop table interest20


ALTER TABLE interest20

(interest insert procedure)

create procedure interestins21
(@cid int,@amt float,@rate float,@mon float,@types varchar(20),@total float,@tin float,@date varchar(50))
as
begin
insert into interest20(customerid,principalamount,interest,months,loantype,totalamount,totalinterest,createddate)values(@cid,@amt,@rate,@mon,@types,@total,@tin,@date)
select loanid=@@IDENTITY
end

truncate table interest20
drop procedure interestins21

(emi table)

create table emi22(customerid1 int foreign key  References customer(Id),principalamount1 float,interest float,months float,loantype1 varchar(20),totalamount float,totalinterest float,Emi float,loanid1 int not null primary key identity(1,1),createdate varchar(50))
alter table emi22 add ID AS 'MGR' + RIGHT('000' + CAST(customerid1 AS VARCHAR(3)), 3) PERSISTED
(emi insert procedure)

create procedure emiins3
(@cid int,@amt float,@rate float,@mon float,@types varchar(20),@total float,@tin float,@emi float,@date varchar(50))
as
begin
insert into emi22(customerid1,principalamount1,interest,months,loantype1,totalamount,totalinterest,Emi,createdate)values(@cid,@amt,@rate,@mon,@types,@total,@tin,@emi,@date)
end

select * from emi22

truncate table emi22

drop table emi22

drop table emi20
(overall loan interest and emi)

create procedure insloan
(@id int)
as
begin
select customer.Id,interest20.ID as ID1,interest20.principalamount as principalamount,interest20.loantype as loantype,interest20.loanid from customer 
inner join interest20 on customer.Id=interest20.customerid
where customer.Id=@id
end

Select*from interest20
drop procedure insloan

create procedure emiloan2
(@id int)
as
begin
select customer.Id,emi22.ID as ID1,emi22.principalamount1 as principalamount1,emi22.loantype1 as loantype1,emi22.loanid1 from customer 
left join emi22 on customer.Id=emi22.customerid1
where customer.Id=@id
end

drop procedure emiloan2
(emi collection display)

create procedure emicollect4
(@id int,@lid1 int)
as
begin
select customerid1,ID,loanid1,loantype1,principalamount1,Emi,months,createdate from emi22  where customerid1=@id and loanid1=@lid1
end

drop procedure emicollect4

(interest collection display)

create procedure incollect2
(@id int,@lid int)
as
begin
select customerid,ID,loanid,loantype,principalamount,totalamount,totalinterest,months,createddate from interest20 where customerid=@id and loanid=@lid
end


drop procedure  incollect2
(customer report)

create procedure customerreport
as
begin
select Id,customerid,CustomerName,Dob, MobileNumber from customer
end

drop procedure customerreport
(table repay interest)

create table repayprincipalamount(customerid int foreign key  References customer(Id),sno int,amountpaid float,date varchar(50),loan int foreign key references interest20(loanid))
alter table repayprincipalamount add ID AS 'MGR' + RIGHT('000' + CAST(customerid AS VARCHAR(3)), 3) PERSISTED

drop table repayprincipalamount
select * from repayprincipalamount

(procedure for insert interest per month)

create procedure repaypric2
(@id int,@sno int,@monthlyinterest float,@date varchar(50),@loanno int)
as
begin
insert into repayprincipalamount(customerid,sno,amountpaid,date,loan)values(@id,@sno,@monthlyinterest,@date,@loanno)
end






drop procedure repaypric2


create procedure temp
(@id int,@ilid int)
as
begin
select customerid,ID,principalamount,interest,months from interest20 where customerid=@id and loanid=@ilid
end

drop procedure temp

(interest permonth grid )

create procedure repayins
(@id int,@loanno int)
as
begin
select repayprincipalamount.sno,repayprincipalamount.amountpaid,repayprincipalamount.date from repayprincipalamount 
inner join customer on customer.Id=repayprincipalamount.customerid where repayprincipalamount.customerid=@id and repayprincipalamount.loan=@loanno
end

drop procedure repayins

create procedure principalread
(@rid int,@ilid int)
as
begin
select customerid,ID,principalamount,createddate,loanid from interest20 where customerid=@rid and loanid=@ilid
end

drop procedure principalread


create table repayprincipal1(id int not null identity(1,1) primary key,customerid int foreign key references customer(Id),loan int foreign key references interest20(loanid) ,date varchar(50),pricipalamount float,finalpricipalamount float,payamount float,newpricipalamount float)
alter table repayprincipal1 add CustID AS 'MGR' + RIGHT('000' + CAST(customerid AS VARCHAR(3)), 3) PERSISTED

select * from repayprincipal1
drop table repayprincipal1

create procedure repayprincipalins
(@id int,@loan int,@pa float,@date varchar(50),@pamount float,@spay float,@famount float)
as
begin
insert into repayprincipal1(customerid,loan,pricipalamount,date,finalpricipalamount,payamount,newpricipalamount)values(@id,@loan,@pa,@date,@pamount,@spay,@famount)
end

drop procedure repayprincipalins

create procedure repaypricipalread
(@pid int,@plid int)
as
begin
select newpricipalamount from repayprincipal1 where customerid=@pid and loan=@plid
end


drop procedure repaypricipalread

(emiloandetail read procedure)
create procedure emiread
(@id int,@lid1 int)
as
begin
select customerid1,loanid1,principalamount1,Emi,months from emi22 where customerid1=@id and loanid1=@lid1
end

drop procedure emiread

(emiloandetail table)
create table emidetails(id int not null primary key identity(1,1),customerid int foreign key references customer(Id),loanid int foreign key references emi22(loanid1) ,loanamount float,sno int,emiamount float,payamount float,date varchar(50))
alter table emidetails add CustID AS 'MGR' + RIGHT('000' + CAST(id AS VARCHAR(3)), 3) PERSISTED


(emiloandetail insert procedure)
create procedure emidetaiins
(@customerid int,@loanid int,@loanamount float,@installment int,@emiinterest float,@pay float,@date varchar(50))
as
begin
insert into emidetails(customerid,loanid,loanamount,sno,emiamount,payamount,date)values(@customerid,@loanid,@loanamount,@installment,@emiinterest,@pay,@date)
end


(emiloandetail grid procedure)
create procedure emidetaigrid
(@id int,@lid1 int)
as
begin
select sno,CustID,payamount,date from emidetails where customerid=@id and loanid=@lid1
end

drop procedure emidetaigrid


(loan report interest grid procedure)

create procedure loanreportinterest
(@from varchar(50),@to varchar(50))
as
begin
select createddate,ID as ID1,loanid,principalamount,interest,months,loantype,totalamount,totalinterest from interest20 where createddate between @from and @to 
end

drop procedure loanreportinterest


(loan report emi grid procedure)

create procedure loanreportemi
(@efrom varchar(50),@eto varchar(50))
as
begin
select createdate,ID as ID1,loanid1,principalamount1,interest,months,loantype1,totalamount,totalinterest,Emi from emi22 where createdate between @efrom  and @eto
end

drop procedure loanreportemi

create procedure loanreportinterestread
(@id varchar(50),@loan int)
as
begin 
select createddate,ID,loanid,principalamount,interest,months,loantype,totalamount,totalinterest from interest20 where ID=@id   and loanid=@loan
end

drop procedure loanreportinterestread

select * from interest20

create procedure loanreportemiread
(@id varchar(50),@loan int)
as
begin
select createdate,ID,loanid1,principalamount1,interest,months,loantype1,totalamount,totalinterest,Emi from emi22 where ID=@id   and loanid1=@loan
end

drop procedure loanreportemiread


select * from emi22

create procedure customerreportins
(@id int)
as
begin
Select * from interest20 where customerid=@id
end


create procedure customerreportemi
(@id int)
as
begin
Select * from emi22 where customerid1=@id
end



(display foreign key)

SELECT name AS 'Foreign Key Constraint Name', 
	       OBJECT_SCHEMA_NAME(parent_object_id) + '.' + OBJECT_NAME(parent_object_id) AS 'Child Table'
   FROM sys.foreign_keys 
   WHERE OBJECT_SCHEMA_NAME(referenced_object_id) = 'dbo' AND 
              OBJECT_NAME(referenced_object_id) = 'customer'



(removing foreign key constraint)
			  ALTER TABLE dbo.repayprincipal1 DROP CONSTRAINT FK__repayprin__custo__2F650636;
			  ALTER TABLE dbo.interest20 DROP CONSTRAINT FK__interest2__custo__345EC57D;
			  ALTER TABLE dbo.emi22 DROP CONSTRAINT FK__emi22__customeri__4E1E9780;
			  ALTER TABLE dbo.emidetails DROP CONSTRAINT FK__emidetail__custo__361203C5;
			  ALTER TABLE dbo.repayprincipalamount DROP CONSTRAINT FK__repayprin__custo__5B78929E;
			  ALTER TABLE dbo.loan DROP CONSTRAINT FK__loan__customerid__46E78A0C;




(due report interest grid)

create procedure loanduereportinterest
(@from varchar(50),@to varchar(50))
as
begin
select createddate,ID as ID1,customerid,loanid,principalamount,interest,months,loantype,totalamount,totalinterest from interest20 where createddate between DATEADD(MONTH,-1,@from ) and DATEADD(MONTH,-1,@to )
end




create procedure loanduereportinterestjoins
(@from varchar(50),@to varchar(50))
as
begin
select interest20.createddate,interest20.ID as ID1,interest20.customerid,interest20.loanid,interest20.principalamount,interest20.interest,interest20.months,interest20.loantype,interest20.totalamount,interest20.totalinterest from interest20 left outer join
repayprincipalamount on interest20.customerid=repayprincipalamount.customerid and interest20.loanid=repayprincipalamount.loan
where repayprincipalamount.customerid is null and repayprincipalamount.loan is null

union all
select interest20.createddate,interest20.ID as ID1,interest20.customerid,interest20.loanid,interest20.principalamount,interest20.interest,interest20.months,interest20.loantype,interest20.totalamount,interest20.totalinterest from repayprincipalamount left outer join
interest20  on interest20.customerid=repayprincipalamount.customerid and interest20.loanid=repayprincipalamount.loan
where repayprincipalamount.customerid is null and repayprincipalamount.loan is null
and interest20.createddate between DATEADD(MONTH,-1,@from ) and DATEADD(MONTH,-1,@to ) 
end

create procedure loanduereportinterestjoins2
(@from varchar(50),@to varchar(50),@dnew varchar(50))
as
begin
select interest20.createddate,interest20.ID as ID1,interest20.customerid,interest20.loanid,interest20.principalamount,interest20.interest,interest20.months,interest20.loantype,interest20.totalamount,interest20.totalinterest from interest20 left outer join
repayprincipalamount on interest20.customerid=repayprincipalamount.customerid and interest20.loanid=repayprincipalamount.loan
where repayprincipalamount.date=@dnew and
repayprincipalamount.date between DATEADD(MONTH,-1,@from ) and DATEADD(MONTH,-1,@to ) 
end

drop procedure loanduereportinterestjoins

drop procedure loanduereportinterestjoins2

create procedure installment
as
begin
select* from repayprincipalamount
end


create procedure dueins
(@id int,@ilid int)
as
begin
select * from repayprincipalamount where customerid=@id and loan=@ilid
end

create procedure interestdue2
(@id int,@ilid int)
as
begin
select * from interest20 where customerid=@id and loanid=@ilid
end



drop procedure interestdue

create procedure loanduereportemi
(@efrom varchar(50),@eto varchar(50))
as
begin
select emi22.createdate,emi22.ID as ID1,emi22.customerid1,emi22.loanid1,emi22.principalamount1,emi22.interest,emi22.months,emi22.loantype1,emi22.totalamount,emi22.totalinterest,emi22.Emi from emi22 left outer join
emidetails on emi22.customerid1=emidetails.customerid and emi22.loanid1=emidetails.loanid
where emidetails.customerid  is null and emidetails.loanid is null
union all
select emi22.createdate,emi22.ID as ID1,emi22.customerid1,emi22.loanid1,emi22.principalamount1,emi22.interest,emi22.months,emi22.loantype1,emi22.totalamount,emi22.totalinterest,emi22.Emi from emidetails  left outer join
emi22 on emi22.customerid1=emidetails.customerid and emi22.loanid1=emidetails.loanid
where emidetails.customerid  is null and emidetails.loanid is null
and emi22.createdate between DATEADD(MONTH,-1,@efrom ) and DATEADD(MONTH,-1,@eto ) 
end



create procedure loanduereportemi2
(@efrom varchar(50),@eto varchar(50),@dnew varchar(50))
as
begin
select emi22.createdate,emi22.ID as ID1,emi22.customerid1,emi22.loanid1,emi22.principalamount1,emi22.interest,emi22.months,emi22.loantype1,emi22.totalamount,emi22.totalinterest,emi22.Emi from emi22 left outer join
emidetails on emi22.customerid1=emidetails.customerid and emi22.loanid1=emidetails.loanid
where emidetails.date=@dnew and
emidetails.date between DATEADD(MONTH,-1,@efrom ) and DATEADD(MONTH,-1,@eto )
end

create procedure dueemi
(@id int,@ilid int)
as
begin
select * from emidetails where customerid=@id and loanid=@ilid
end

create procedure emidue2
(@id int,@ilid int)
as
begin
select * from emi22 where customerid1=@id and loanid1=@ilid
end




drop procedure loanduereportinterestjoins

drop procedure loanduereportemi 

drop procedure loanduereportemi2 

select * from repayprincipalamount

select * from interest20

select * from emi22

select * from emidetails



drop procedure loanduereportinterest

(due report emi grid)

create procedure loanduereportemi
(@efrom varchar(50),@eto varchar(50))
as
begin
select createdate,ID as ID1,customerid1,loanid1,principalamount1,interest,months,loantype1,totalamount,totalinterest,Emi from emi22 where createdate between DATEADD(MONTH,-1,@efrom ) and DATEADD(MONTH,-1,@eto )
end
		 
drop procedure loanduereportemi


(analysis interest grid)

create procedure analysisinterest
as 
begin
select customer.customerid,customer.CustomerName,customer.FathersName,customer.Dob,customer.Sex,customer.Occupation,customer.MobileNumber,customer.LandLineNumber,customer.IdProof,customer.IdNumber,customer.Address,customer.City,customer.Reference,customer.ReferenceRelationship,
interest20.loanid,interest20.createddate,interest20.loantype,interest20.principalamount,interest20.interest,interest20.months,interest20.totalamount,interest20.totalinterest,
repayprincipalamount.sno,repayprincipalamount.date,repayprincipalamount.amountpaid from interest20 
inner join customer on interest20.customerid=customer.Id 
inner join repayprincipalamount on interest20.customerid=repayprincipalamount.customerid and interest20.loanid=repayprincipalamount.loan
order by customer.Id,interest20.loanid,repayprincipalamount.sno
end

drop procedure analysisinterest

(analysis emi grid)

create procedure analysisemi
as 
begin
select customer.customerid,customer.CustomerName,customer.FathersName,customer.Dob,customer.Sex,customer.Occupation,customer.MobileNumber,customer.LandLineNumber,customer.IdProof,customer.IdNumber,customer.Address,customer.City,customer.Reference,customer.ReferenceRelationship,
emi22.loanid1,emi22.createdate,emi22.loantype1,emi22.principalamount1,emi22.interest,emi22.months,
emidetails.sno,emidetails.loanamount,emidetails.emiamount,emidetails.payamount,emidetails.date from emi22
inner join customer on emi22.customerid1=customer.Id 
inner join emidetails on emi22.customerid1=emidetails.customerid and emidetails.loanid=emidetails.loanid
order by customer.Id,emidetails.loanid,emidetails.sno
end



drop procedure analysisemi




select*from emi22

select * from repayprincipalamount

select * from customer
select * from emidetails
select * from interest20

(signup page table)

create table signup(id int  not null identity(1,1) primary key,name varchar(50),password varchar(50),confirmpassword varchar(50))
select * from signup
drop table signup


create procedure signupins
(@name varchar(50),@password varchar(50),@confirmpassword varchar(50))
as
begin
insert into signup(name,password,confirmpassword)values(@name,@password,@confirmpassword)
end

(procedure for authentication page)

create procedure authentication
(@name varchar(50),@password varchar(50))
as
begin
select name, password from signup where name=@name and password=@password
end

drop procedure authentication