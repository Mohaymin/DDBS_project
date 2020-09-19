CLEAR SCREEN;

INSERT INTO Phone VALUES (1, 'samsung', 'galaxy s5', 'black');
INSERT INTO Phone VALUES (2, 'samsung', 'galaxy s5', 'white');
INSERT INTO Phone VALUES (3, 'samsung', 'galaxy s6', 'gold');
INSERT INTO Phone VALUES (4, 'samsung', 'galaxy s6', 'black');
INSERT INTO Phone VALUES (5, 'samsung', 'galaxy s6', 'blue');
INSERT INTO Phone VALUES (6, 'samsung', 'galaxy s7 edge', 'black');
INSERT INTO Phone VALUES (7, 'apple', 'iphone 6', 'gold');
INSERT INTO Phone VALUES (8, 'apple', 'iphone 6', 'space grey');
INSERT INTO Phone VALUES (9, 'apple', 'iphone 7', 'rose gold');

SELECT * FROM Phone;


INSERT INTO Inventory VALUES (1, 1, 5);
INSERT INTO Inventory VALUES (2, 2, 6);
INSERT INTO Inventory VALUES (3, 3, 7);
INSERT INTO Inventory VALUES (4, 4, 8);
INSERT INTO Inventory VALUES (5, 5, 9);
INSERT INTO Inventory VALUES (6, 6, 0);
INSERT INTO Inventory VALUES (7, 7, 7);
INSERT INTO Inventory VALUES (8, 8, 8);
INSERT INTO Inventory VALUES (9, 9, 9);

SELECT * FROM Inventory;


INSERT INTO Seller VALUES (1, 'Imran');
INSERT INTO Seller VALUES (2, 'Zakir');
INSERT INTO Seller VALUES (3, 'Nihal');
INSERT INTO Seller VALUES (4, 'Robin');

SELECT * FROM Seller;


INSERT INTO Sale VALUES (1, 1, 2, '19-SEP-20', 1);
INSERT INTO Sale VALUES (2, 1, 2, '19-SEP-20', 2);
INSERT INTO Sale VALUES (3, 8, 1, '19-SEP-20', 1);
INSERT INTO Sale VALUES (4, 2, 1, '19-SEP-20', 4);
INSERT INTO Sale VALUES (5, 2, 1, '20-SEP-20', 4);

SELECT * FROM Sale;


INSERT INTO PurchaseCost VALUES (1, 1, 1000);
INSERT INTO PurchaseCost VALUES (2, 2, 1000);
INSERT INTO PurchaseCost VALUES (3, 3, 1500);
INSERT INTO PurchaseCost VALUES (4, 4, 1500);
INSERT INTO PurchaseCost VALUES (5, 5, 1500);
INSERT INTO PurchaseCost VALUES (6, 6, 2000);
INSERT INTO PurchaseCost VALUES (7, 7, 2500);
INSERT INTO PurchaseCost VALUES (8, 8, 2500);
INSERT INTO PurchaseCost VALUES (9, 9, 3000);

SELECT * FROM PurchaseCost;


INSERT INTO SellingPrice VALUES (1, 1, 1100);
INSERT INTO SellingPrice VALUES (2, 2, 1200);
INSERT INTO SellingPrice VALUES (3, 3, 1700);
INSERT INTO SellingPrice VALUES (4, 4, 1750);
INSERT INTO SellingPrice VALUES (5, 5, 1600);
INSERT INTO SellingPrice VALUES (6, 6, 2200);
INSERT INTO SellingPrice VALUES (7, 7, 2800);
INSERT INTO SellingPrice VALUES (8, 8, 2900);
INSERT INTO SellingPrice VALUES (9, 9, 3550);

SELECT * FROM SellingPrice;

commit;
/