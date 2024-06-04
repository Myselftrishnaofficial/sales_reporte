create table sales(
ProductCategory varchar2(50),
ProductName varchar2(30),
SaleAmount number);
--insert
INSERT into sales values('electronics','laptop',1000);
INSERT into sales values('electronics','Phone',800);
INSERT into sales values('electronics','tablet',500);
INSERT into sales values('clothing','shirt',300);
INSERT into sales values('clothing','pants',400);
INSERT into sales values('furniture','sofa',1200);
INSERT into sales values('furniture','bed',900);
--select
select ProductCategory,ProductName,SaleAmount from sales;

SELECT COALESCE
    (ProductCategory,'total',ProductName,'total') AS ProductCategory,ProductName,
    SUM(SaleAmount) AS TotalSales
FROM 
    sales
GROUP BY 
    ROLLUP(ProductCategory,ProductName);

