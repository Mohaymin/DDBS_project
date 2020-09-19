SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
	top_row_count number := &n;
	last_week date;
	sold_phone_id Sale.phone_id%TYPE;
	sold_count number;
	phone_brand_name Phone.company_name%TYPE;
	phone_model_name Phone.model_name%TYPE;

BEGIN
	last_week := PhoneStats.get_last_week_date;

	DBMS_OUTPUT.PUT_LINE('Trending phones of the week are: ');

	FOR row IN (
			SELECT * FROM (
				SELECT PhoneSalesView.phone_model, SUM(PhoneSalesView.quantity) AS total_sold
				FROM PhoneSalesView
				WHERE PhoneSalesView.sale_date >= last_week
				GROUP BY PhoneSalesView.phone_model
				ORDER BY total_sold DESC
			) temp_alias
			WHERE rownum <= top_row_count
			ORDER BY rownum
	)
	LOOP
		SELECT phone_brand INTO phone_brand_name
		FROM PhoneSalesView
		WHERE phone_model = row.phone_model and rownum = 1;
		phone_model_name := row.phone_model;
		sold_count := row.total_sold;
		DBMS_OUTPUT.PUT_LINE(phone_brand_name || ' ' || phone_model_name || ' : ' || sold_count || ' sold');
	END LOOP;
	
END;
/
