CREATE OR REPLACE TRIGGER trigger_selling_price_change
AFTER INSERT OR UPDATE ON SellingPrice
FOR EACH ROW
BEGIN
	dbms_output.put_line('price of phone updated');
	INSERT INTO LogSellingPriceChange
	VALUES(sysdate, phone_id, :old.price, :new.price);
END;
/


CREATE OR REPLACE TRIGGER trigger_purchase_cost_change
AFTER INSERT OR UPDATE ON PurchaseCost
FOR EACH ROW
BEGIN
	dbms_output.put_line('purchase cost updated');
	INSERT INTO LogPurchaseCostChange
	VALUES(sysdate, phone_id, :old.cost, :new.cost);
END;
/

CREATE OR REPLACE TRIGGER trigger_inventory_addition
AFTER INSERT ON Inventory
FOR EACH ROW
BEGIN
	dbms_output.put_line('enlisted new phones in database');
	INSERT INTO LogInventoryAddition
	VALUES(sysdate, phone_id, :old.quantity, :new.quantity);
END;
/
