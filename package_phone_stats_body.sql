CREATE OR REPLACE PACKAGE BODY PhoneStats AS

	procedure showMostSoldPhone
		IS
	BEGIN
		dbms_output.put_line('not implemented');
	END showMostSoldPhone;

	

	procedure mostSoldMonth(month in varchar2)
		IS
	BEGIN
		dbms_output.put_line('not implemented');
	END mostSoldMonth;

	

	procedure mostSoldMonthYear(month in varchar2)
		IS
	BEGIN
		dbms_output.put_line('not implemented');
	END mostSoldMonthYear;


	procedure trendingPhonesWeek
		IS
	BEGIN
		dbms_output.put_line('not implemented');
	END trendingPhonesWeek;

	function get_last_week_date
		return date
		IS
	BEGIN
		return sysdate - 7;
	END get_last_week_date;


END PhoneStats;
/