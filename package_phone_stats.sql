CREATE OR REPLACE PACKAGE PhoneStats as

	procedure showMostSoldPhone;

	procedure mostSoldMonth(month in varchar2);

	procedure mostSoldMonthYear(month in varchar2);

	procedure trendingPhonesWeek;

	function get_last_week_date
		return date;

end PhoneStats;
/