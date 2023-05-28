-- Criação da tabela de exemplo
CREATE TABLE VENDAS (
    OrderID INT,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10, 2)
);

-- Inserção de dados na tabela de exemplo
INSERT INTO VENDAS (OrderID, OrderDate, CustomerID, TotalAmount)
VALUES (1, '2023-03-15', 101, 150.00),
       (2, '2023-04-20', 102, 250.00),
       (3, '2024-02-10', 103, 300.00),
       (4, '2024-11-05', 104, 200.00);







-- Geração de 20 registros de vendas com datas de 20 anos diferentes
DECLARE @StartDate DATE = '2000-01-01';
DECLARE @EndDate DATE = DATEADD(YEAR, 19, @StartDate);

DECLARE @OrderID INT = 1;

WHILE @StartDate <= @EndDate
BEGIN
    INSERT INTO VENDAS (OrderID, OrderDate, CustomerID, TotalAmount)
    VALUES (@OrderID, @StartDate, 1, RAND() * 1000);

    SET @OrderID = @OrderID + 1;
    SET @StartDate = DATEADD(DAY, 1, @StartDate);
END;
