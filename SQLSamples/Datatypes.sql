create table DataTypes
(
charname char(4), --used for fixed length only; 8000 char
varcharname varchar(10), -- varying length, extra memory is released
varcharmaxname varchar(max), --upto 80000 characters
tinyintnumber tinyint,
smallintnumber smallint,
intnumber int,
bigintnumber bigint,
decimalnumber decimal(7,2), --precision = total no of digits, scale= no of digits allowed after decimal
smallmoneycurrency smallmoney,
moneycurrency money,
dateclock date,
timeclock time,
datetimeclock datetime
)
--textname text,
--ncharname nchar,
--nvarcharname nvarchar,
--ntextname ntext,
--binarynaem binary(10),
--varbinaryname varbinary,
--imagename image,
--floatname float(10)


insert into DataTypes values('Hari','Hyderabad',' Kavuri Hills Phase 2 Rd, Kavuri Hills, Madhapur, Telangana 500033',255,32767,2147483647,9.223372e+18
,50000.00,214748.3647,9223772036857.5807,GETDATE(),GETDATE(),GETDATE()),('Priy','Chennai',' T Nagar Phase 2 Rd, Kavuri Hills, TamilNadu 500033',0,-32767,2147483646,1.223372e+18
,70000.00,114148.3647,458772036857.5807,GETDATE(),GETDATE(),GETDATE())

insert into DataTypes values('MH','Mumbai',' Nariman point Phase 2 R, Mumbai West, Maharastra 500033',100,12767,1147483647,2.223372e+18
,10000.00,114748.3647,3223772036857.5807,GETDATE(),GETDATE(),GETDATE())

insert into DataTypes values('MH','Mumbai',' Nariman point Phase 2 R, Mumbai West, Maharastra 500033',100,12767,1147483647,2.223372e+18
,10000.00,114748.3647,3223772036857.5807,GETDATE(),GETDATE(),GETDATE())


select * from DataTypes 

drop table DataTypes