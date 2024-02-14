CREATE TABLE Departamento(
    ID int,
    Nome Varchar(20)
);
    
 CREATE TABLE Pessoa(
    ID int,
    Nome Varchar(20),
    Salario int,
    DeptID int
 );
 
INSERT INTO Pessoa VALUES (1, 'Joe', 70000, 1);
INSERT INTO Pessoa VALUES (2, 'Henry', 80000, 2);
INSERT INTO Pessoa VALUES (3, 'Sam', 60000, 2);
INSERT INTO Pessoa VALUES (4, 'Max', 90000, 1);
INSERT INTO Departamento VALUES (1, 'TI');
INSERT INTO Departamento VALUES (2, 'Vendas');



select DEP.Nome as Departamento
, PES.Nome as Pessoa
, Max(PES.Salario) as Salario
from Pessoa PES
Join Departamento DEP
  on DEP.ID = PES.DeptID
Group by DEP.Nome
