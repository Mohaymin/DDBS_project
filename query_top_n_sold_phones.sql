SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
	sold_phone_id Sale.phone_id%TYPE;
	sold_count number;
	phone_brand Phone.company_name%TYPE;
	phone_model Phone.model_name%TYPE;
	top_row_count number := &n;

BEGIN
	FOR row IN ( 
				SELECT * FROM (
					SELECT Sale.phone_id, SUM(Sale.quantity) AS sale_quantity
					FROM Sale
					GROUP BY Sale.phone_id
					ORDER BY sale_quantity DESC
				) dummy_alias
				WHERE rownum <= top_row_count
				ORDER BY rownum
			)
	LOOP
		sold_phone_id := row.phone_id;
		sold_count := row.sale_quantity;
--		DBMS_OUTPUT.PUT_LINE(sold_phone_id || ' ' || sold_count);
		SELECT company_name, model_name INTO phone_brand, phone_model
		FROM Phone
		WHERE id = sold_phone_id;
		DBMS_OUTPUT.PUT_LINE(phone_brand || ' ' || phone_model || ' : ' || sold_count);
	END LOOP;

END;
/

--TODO: change the query so that it calculates on the basis of the phone's model name instead of the phone's id.