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

-[x] Apprenticeship Vacancy by UK_Region

_<sub> One of teh complex chart i had to come up with, I enriched my data with [Doogal postcodes]()

<img width="1277" height="548" alt="image" src="https://github.com/user-attachments/assets/6dbf3c84-8ffe-4688-8240-820be2ff2a8c" />




