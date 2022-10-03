create table Customer
	(CustNo char(8),
	 CustFirstName varchar(20) notnull,
	 CustLastName varchar(30) notnull,
	 CustCity varchar(30),
	 CustState char(10),
	 CustZip char(10),
	 CustBal decimal(12,2),
	 Constraint PKCustomer primary key(CustNo)
	);
	
create table Employee
	(EmpNo char(8),
	 EmpFirstName varchar(20) notnull,
	 EmpLastName varchar(30) notnull,
	 EmpPhone varchar(30),
	 EmpEmail varchar(70) notnull,
	 Constraint PKEmployee primary key(EmpNo)
	);
create table OrderTbl
	(OrdNo int(25) notnull
	 OrdDate date notnull,
	 CustNo varchar(60) notnull,
	 EmpNo varchar (60),
	 primary key PKOrdNo primary key(OrdNo)
	);
	
