/*
CREATE OR REPLACE VIEW SalesView(sold_phone_id, total_sold) AS
SELECT Sale.phone_id, SUM(Sale.quantity) AS sale_quantity
FROM Sale
WHERE Sale.sale_date >= last_week
GROUP BY Sale.phone_id
ORDER BY sale_quantity DESC;
*/




CREATE OR REPLACE VIEW PhoneView(id, phone_brand, phone_model) AS
SELECT Phone.id, Phone.company_name, Phone.model_name
FROM Phone;


CREATE OR REPLACE VIEW SalesView(sold_phone_id, quantity, sale_date) AS
SELECT Sale.phone_id, Sale.quantity, Sale.sale_date
FROM Sale;


CREATE OR REPLACE VIEW PhoneSalesView(id, phone_brand, phone_model, quantity, sale_date) AS
SELECT pv.id, pv.phone_brand, pv.phone_model, sv.quantity, sv.sale_date
FROM PhoneView pv
INNER JOIN SalesView sv
ON pv.id = sv.sold_phone_id;
