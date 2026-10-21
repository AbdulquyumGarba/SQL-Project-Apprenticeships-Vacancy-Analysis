# SQL-Project-Apprenticeships-Vacancy-Analysis
Explore the Apprenticeships Job Market, exploring all sectors of Apprenticeships, highest paying Apprenticeship Level, the sector with most apprenticeships, and aprenticeship vacancy by sector.

 ## Sql Scripts
  + [Table Creation](https://github.com/AbdulquyumGarba/SQL-Project-Apprenticeships-Vacancy-Analysis/blob/main/Table_Creation(Apprenticeships).sql)
  + [Data Cleansing](https://github.com/AbdulquyumGarba/SQL-Project-Apprenticeships-Vacancy-Analysis/blob/main/Data%20Cleansing.sql)
  + [Exploration(1)](https://github.com/AbdulquyumGarba/SQL-Project-Apprenticeships-Vacancy-Analysis/blob/main/Exploration(1).sql)

# Background
I am in my final year of College, where I currently study Data Analytics(T level) and I wanted to apply for apprenticeships, so I thought it could be useful  to use data to make informed decisions on how to embark on applying for one, and also help my peers by providing them with insights from my analysis which might help them choose whether going to university or getting an apprenticeship is better, and specifically for my classmates, I would be carving out the Digital Industry from the whole data in order to focus specifically on data Roles Like Data Engineer, Data Scientist and Data Analyst, that would be the second version of this project, which I would provide a link for when it is concluded

## Tools Used
+ **SQL:** My analysis was made using the SQL Language,
+	**PostgreSQL:** The DBMS I use for most of analysis as it is capable of handling huge amounts of Data, and it also lends itself well with amazing functions
+	**DBeaver:** My Go to GUI for executing SQL Queries and interacting with Databases, amazing versatility and also has the ability to interact with various applications such as POWERBI 
+	**Tableau:** My Favorite Tool for Visualizing after Excel, with it's intelligence and amazing visualizing features, it still amazes me how much there is to learn about tableau.
+	**Excel:**  Mandatory for every Data professional, i use it for viewing, analysing and visualizing data as it is very flexible and you can easily tweak it to your preference.

### Explorations Made:
  +	Percentage of Vacancy by Apprenticeship Level
  +	Average Wage per Sector
  +	Apprenticeship Trends by Month/Year
  +	Apprenticeships vacancy by region
  +	Average Time between Date Posted and Expected start Date for each sector

_<sub>This is non-exhaustive list, i made more explorations on the datset</sub>_

### Data Visualization
- [x] Average Wage by Apprenticeship_Type and Education_Level
    
_<sub>Curious to find out how much an apprentice is likely to receive annually, I calculated the average wages by apprenticeship_type and education level, although the query doesnt show education_level, i had to create an hierachy in **Tableau** that groups each education_level to it's apprenticehip type.</sub>_

```sql
select 
	apprenticeship_type,
	ROUND(AVG(wage_numeric )) Average_wage 
from apprenticeships
group by 1
order by 2 desc;
```
<img width="1187" height="505" alt="Average_Wage_by_Apprenticeship_type_and_Education_level" src="https://github.com/user-attachments/assets/9b839a41-e767-4687-bf00-2bd854942259" />

- [x] Apprenticeship Vacancy by UK Region

_<sub> One of the most time-consuming and complex chart i had to come up with, I enriched my data with [Doogal Postcodes](https://github.com/AbdulquyumGarba/SQL-Project-Apprenticeships-Vacancy-Analysis/blob/main/Postcode%20districts.csv) so i would be able to link the postcode on the vacancy post to its region,click on the image to Interact with the [Chart](https://public.tableau.com/shared/PJF3SKC33?:display_count=n&:origin=viz_share_link) on my Tableau page_</sub>

```sql
Select
	Vacancy_Reference_Number /*Primary Key*/
	Vacancy_Postcode
from apprenticeships;
```
[<img width="1277" height="548" alt="Apprenticeship_Vacancy_by_UK_Region" src="https://github.com/user-attachments/assets/da8d1885-9c7d-4785-8ed9-2be0ac9550e4" />](https://public.tableau.com/shared/PJF3SKC33?:display_count=n&:origin=viz_share_link)

- [x] Apprenticeship Vacancy Trend from 2022-2026

_<sub></sub>_	  

```sql
select 
	TO_CHAR( date_posted,'YYYY') "Year",
	COUNT(Vacancy_reference_number) Amount_Of_Apprenticeships
from Apprenticeships
group by 1
order by 2 desc;
```

[<img width="776" height="574" alt="Apprenticeship_Vacancy_Trend" src="https://github.com/user-attachments/assets/a0ae4f3c-8e1e-4434-bf84-e7fa864ef7bb" />](https://public.tableau.com/views/ApprenticeshipTrendin4years/Sheet1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

- [x] Average Hours per week by Apprenticeship type

_<sub></sub>_	 

```sql
select 
	apprenticeship_type,
	ROUND(AVG(hours_per_week )) Average_weekly_hours
from apprenticeships
group by 1
order by 2 desc;
```

| Apprenticeship_type   | Demand Count |
|-----------------------|--------------|
| SQL      | 7291         |
| Excel    | 4611         |
| Python   | 4330         |
| Tableau  | 3745         |
| Power BI | 2609         |



```
[<img width="1277" height="523" alt="Sheet 1" src="https://github.com/user-attachments/assets/d62e9813-4107-44eb-a9b6-1628993540fa" />](https://public.tableau.com/views/AveragePeriodofTimeBetweenDatePostedandExpectedStartDatebySector/Sheet1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

- [x] 
