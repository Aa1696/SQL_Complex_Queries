create or replace procedure pr_name(p_name varchar,p_age int)
language plpgsql
as $$
declare
	declare_variables
begin
	logic will written
end;
$$
CREATE TABLE trig_Employee
(  
  Id INT PRIMARY KEY,  
  Name VARCHAR(45),  
  Salary INT,  
  Gender VARCHAR(12),  
  DepartmentId INT  
)  

INSERT INTO trig_Employee VALUES (1,'Steffan', 82000, 'Male', 3),  
(2,'Amelie', 52000, 'Female', 2),  
(3,'Antonio', 25000, 'male', 1),  
(4,'Marco', 47000, 'Male', 2),  
(5,'Eliana', 46000, 'Female', 3) 

INSERT INTO Employee VALUES (6,'Peter', 62000, 'Male', 3);

select * from trig_Employee;

CREATE TABLE Employee_Audit_Test  
(    
Id int IDENTITY,   
Audit_Action text   
); 

CREATE TRIGGER trg_InsertEmployee   
ON trig_Employee  
FOR INSERT  
AS  
BEGIN  
  Declare @Id int  
  SELECT @Id = Id from inserted  
  INSERT INTO Employee_Audit_Test  
  VALUES ('New employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is added at ' + CAST(Getdate() AS VARCHAR(22)))  
END  