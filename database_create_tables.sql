DROP TABLE Phone CASCADE CONSTRAINTS;

CREATE TABLE Phone
(
	id number,
	company_name varchar(20),
	model_name varchar2(35),
	color varchar2(15),
	PRIMARY KEY (id)
);


DROP TABLE Inventory CASCADE CONSTRAINTS;

CREATE TABLE Inventory(
	id number,
	phone_id number,
	quantity number,
	PRIMARY KEY (id),
	FOREIGN KEY (phone_id) REFERENCES Phone(id)
);


DROP TABLE Seller CASCADE CONSTRAINTS;

CREATE TABLE Seller(
	id number,
	name varchar2(30),
	PRIMARY KEY(id)
);


DROP TABLE Sale CASCADE CONSTRAINTS;

CREATE TABLE Sale(
	id number,
	phone_id number,
	quantity number,
	sale_date date,
	seller_id number,
	PRIMARY KEY(id),
	FOREIGN KEY(seller_id) REFERENCES Seller(id)
);


DROP TABLE PurchaseCost CASCADE CONSTRAINTS;

CREATE TABLE PurchaseCost(
	id number,
	phone_id number,
	cost number,
	PRIMARY KEY(id),
	FOREIGN KEY (phone_id) REFERENCES Phone(id)
);


DROP TABLE SellingPrice CASCADE CONSTRAINTS;

CREATE TABLE SellingPrice(
	id number,
	phone_id number,
	price number,
	PRIMARY KEY(id),
	FOREIGN KEY (phone_id) REFERENCES Phone(id)
);


DROP TABLE LogSellingPriceChange CASCADE CONSTRAINTS;

CREATE TABLE LogSellingPriceChange(
	change_date date,
	phone_id number,
	old_price number,
	new_price number,
	FOREIGN KEY(phone_id) REFERENCES Phone(id)
);


DROP TABLE LogPurchaseCostChange CASCADE CONSTRAINTS;

CREATE TABLE LogPurchaseCostChange(
	change_date date,
	phone_id number,
	old_price number,
	new_price number,
	FOREIGN KEY(phone_id) REFERENCES Phone(id)
);


DROP TABLE LogInventoryAddition CASCADE CONSTRAINTS;

CREATE TABLE LogInventoryAddition(
	addition_date date,
	phone_id number,
	old_quantity number,
	new_quantity number,
	FOREIGN KEY(phone_id) REFERENCES Phone(id)
);

commit;
/