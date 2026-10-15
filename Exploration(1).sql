

--1. Amount of Apprenticehips per month
select 
	TO_CHAR( date_posted,'Month'),
	COUNT(Vacancy_reference_number) Amount_Of_Apprenticeships
from Apprenticeships
group by 1
order by 2 desc;
	

--2.Apprenticeships trend per year
select 
	TO_CHAR( date_posted,'YYYY') "Year",
	COUNT(Vacancy_reference_number) Amount_Of_Apprenticeships
from Apprenticeships
group by 1
order by 2 desc;
--by month
select 
	TO_CHAR( date_posted,'Month') "Year",
	AVG(Vacancy_reference_number) Amount_Of_Apprenticeships
from Apprenticeships
group by 1
order by 2 desc;

--3. Average period of time between Date_postyed and Close_date
select 
	CONCAT(ROUND(AVG(Application_closing_date-date_posted)),' Days') "Average_Period"
from apprenticeships


--4. Average period of time between date posted and expected_start_date per sector
select 
	sector_name,
	CONCAT(ROUND(AVG(expected_start_date-date_posted))::INT,' Days') "Average_period"
from Apprenticeships
where sector_name is not NULL
group by 1
order by 2 desc;
--5. The highest month each sector apprenticeships comes out
with Monthly_vacancy_by_sector as (
select
	TO_CHAR(date_posted,'Month') "Month",
	sector_name,
	COUNT(Vacancy_reference_number) Amount_Of_Vacancy
from apprenticeships 
group by 1,2
)
select 
	"Month",
	sector_name,
	amount_of_vacancy 
from (
	select 
		"Month",
		sector_name,
		Amount_of_vacancy,
		Rank() over (partition by sector_name order by Amount_of_vacancy desc) Highest
from Monthly_vacancy_by_sector) as ranked
where Highest=1;