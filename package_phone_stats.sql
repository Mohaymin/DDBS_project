CREATE OR REPLACE PACKAGE PhoneStats as

	procedure show_most_sold_phone();

	procedure show_most_sold_phone_in_month(month varchar2(2));

	procedure show_most_sold_phone_in_month_of_each_year(month varchar2(2));

	procedure show_trending_phones_of_the_week();

end PhoneStats;
/