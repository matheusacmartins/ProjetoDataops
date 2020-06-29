-- Selecionando toda a coluna de SalesOrderHeader
SELECT SalesOrderID, RevisionNumber, OrderDate, DueDate, ShipDate, Status, OnlineOrderFlag, SalesOrderNumber, PurchaseOrderNumber, AccountNumber, CustomerID, SalesPersonID, TerritoryID, BillToAddressID, ShipToAddressID, ShipMethodID, CreditCardID, CreditCardApprovalCode, CurrencyRateID, SubTotal, TaxAmt, Freight, TotalDue, Comment, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesOrderHeader;
-- selecionando os campos mais importantes para se analizar na coluna SalesOrderHeader
SELECT OrderDate, ShipDate, OnlineOrderFlag, SubTotal, TaxAmt, Freight, TotalDue, Comment, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesOrderHeader;

-- Selecionando somente as vendas online
SELECT  OrderDate, ShipDate, OnlineOrderFlag, SubTotal, TaxAmt, Freight, TotalDue, Comment, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesOrderHeader
WHERE OnlineOrderFlag = 1

-- selecionando a tabela  vendas por territorio (SalesTerritory)
SELECT TerritoryID, Name, CountryRegionCode, `Group`, SalesYTD, SalesLastYear, CostYTD, CostLastYear, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesTerritory;

-- Principais colunas da tabela SalesTerritory
SELECT Name, CountryRegionCode, `Group`, SalesYTD, SalesLastYear, CostYTD, CostLastYear, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesTerritory;

-- total de vendas por SalesYTD
SELECT Name, CountryRegionCode, `Group`, sum(SalesYTD), SalesLastYear, CostYTD, CostLastYear, rowguid, ModifiedDate
FROM AdventureWorks2014.SalesTerritory
GROUP BY CountryRegionCode;

-- selecionando tabela produto
SELECT *
FROM AdventureWorks2014.Product;

-- principais colunas da tabela Product
SELECT ProductID, Name, ProductNumber, Color, SafetyStockLevel, StandardCost, ListPrice, ProductLine, Class, `Style`
FROM AdventureWorks2014.Product;

-- Selecionando subcategorias
SELECT ProductCategoryID, Name, rowguid, ModifiedDate
FROM AdventureWorks2014.ProductCategory;

-- Selecionando categoria do produto 
SELECT ProductSubcategoryID, ProductCategoryID, Name, rowguid, ModifiedDate
FROM AdventureWorks2014.ProductSubcategory;

<<<<<<< HEAD
-- Selecionando a tabela de cliente
SELECT *
FROM AdventureWorks2014.Customer;

-- Tabela de funcionarios
SELECT BusinessEntityID, NationalIDNumber, LoginID, OrganizationNode, OrganizationLevel, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours, CurrentFlag, rowguid, ModifiedDate
FROM AdventureWorks2014.Employee;

-- Tabela de pessoas
SELECT BusinessEntityID, PersonType, NameStyle, Title, FirstName, MiddleName, LastName, Suffix, EmailPromotion, AdditionalContactInfo, Demographics, rowguid, ModifiedDate
FROM AdventureWorks2014.Person;


=======
>>>>>>> 50c7e12b023394d852e1e78949907e7275e3c5e2
