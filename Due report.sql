sp_helptext interestins21

select customerid,ID,principalamount,createddate,loanid from interest20 where customerid=@rid and loanid=@ilid


select newpricipalamount, * from repayprincipal1 --where customerid=@pid and loan=@plid
select max(id) as id, loan from repayprincipal1 group by loan

select repayprincipal1.id,repayprincipal1.CustID, repayprincipal1.loan, repayprincipal1.newpricipalamount as 'New Principal' ,
interest20.totalamount as 'Pricipal amount', interest20.interest, interest20.loantype, interest20.createddate as 'Loan Created Date'   
from repayprincipal1,interest20 left join (select max(id) as id, loan from repayprincipal1 group by loan) A    
on interest20.loanid = A.id where repayprincipal1.id = A.id




select * from [dbo].interest20
sp_helptext newbalance

select count(loanid) as loanid from interest20
select * from repayprincipalamount where loan=@ilid

select * from interest20 where loanid=@ilid
select * from repayprincipal1 where loan=@ilid


