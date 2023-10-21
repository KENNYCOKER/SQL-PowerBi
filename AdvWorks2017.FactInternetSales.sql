
----QUESTION - Using AdventureWorks2017, kindly use the table below to design a Power BI report dashboard for the business decison making
[FactInternetSales], [DimCustomer], [DimProduct], [DimSalesTerritory], [DimDate].



---SOLUTION
Select * from [dbo].[FactInternetSales]
Select * from [dbo].[DimCustomer]
Select * from [dbo].[DimProduct]
Select * from [dbo].[DimSalesTerritory]
Select * from [dbo].[DimDate]

SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]
      ,[SalesAmount]
      ,[TaxAmt]
      ,[Freight]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
  FROM [AdventureWorksDW2017].[dbo].[FactInternetSales]


  SELECT [CustomerKey]
      ,B.[StateProvinceName]
      ,([FirstName]+ ' '+ [LastName]) as CustomerName
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[EmailAddress]
      ,[YearlyIncome]
      ,[TotalChildren]
      ,[NumberChildrenAtHome]
      ,[EnglishEducation]
      ,[EnglishOccupation]
      ,[NumberCarsOwned]
      ,[AddressLine1]
      ,[DateFirstPurchase]
  FROM [AdventureWorksDW2017].[dbo].[DimCustomer] as A
  Inner join [dbo].[DimGeography] as B 
  on A.Geographykey = B.GeographyKey


SELECT [ProductKey]
      ,[ProductAlternateKey]
      ,[EnglishProductName]
      ,[SafetyStockLevel]
      ,[DaysToManufacture]
      ,[EnglishDescription]
      ,[StartDate]
    FROM [AdventureWorksDW2017].[dbo].[DimProduct]

SELECT [SalesTerritoryKey]
      ,[SalesTerritoryRegion]
      ,[SalesTerritoryCountry]
      ,[SalesTerritoryGroup]
  FROM [AdventureWorksDW2017].[dbo].[DimSalesTerritory]


SELECT [DateKey]
      ,[FullDateAlternateKey]
      ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek]
      ,[DayNumberOfMonth]
      ,[DayNumberOfYear]
      ,[WeekNumberOfYear]
      ,[EnglishMonthName]
      ,[MonthNumberOfYear]
      ,[CalendarQuarter]
      ,[CalendarYear]
      ,[CalendarSemester]
      ,[FiscalQuarter]
      ,[FiscalYear]
      ,[FiscalSemester]
  FROM [AdventureWorksDW2017].[dbo].[DimDate]







