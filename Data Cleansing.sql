update apprenticeships 
set wage_type='National minimum wage for apprentices'
where wage_type ='National Minimum Wage Salary';

-- Looking for an average annual wag to replace the range in the wage column
select distinct wage_type,wage,hours_per_week ,apprenticeship_type,education_level  from apprenticeships where 
wage ilike '%-%'
order by 3 desc;

--update wage_column to remoe ranges and cast to INT
update apprenticeships 
set wage = '17858.88'
where hours_per_week = '48'
and wage ='12005.7600-23712.0000';

update apprenticeships 
set wage = '19593.60'
where hours_per_week = '48'
and wage ='13178.8800-26008.3200';

select vacancy_title,expected_duration,education_level,
provider_full_name,split_part(expected_duration,' ',1)::NUMERIC from  apprenticeships  where expected_duration ilike '%year%'  order by 
split_part desc;

update apprenticeships set education_level = null where education_level ='NULL'

update apprenticeships set expected_duration='18 Months' where expected_duration ilike '1218 Months';
update apprenticeships set expected_duration='15 Months' where expected_duration ilike '355 Months';
update apprenticeships set expected_duration='42 Months' where expected_duration ilike '236 Months';
update apprenticeships set expected_duration='18 Months' where expected_duration ilike '215 Months';
update apprenticeships set expected_duration='15 Months' where expected_duration ilike '178 Months';
update apprenticeships set expected_duration='16 Months' where expected_duration ilike '169 Months';
update apprenticeships set expected_duration='18 Months' where expected_duration ilike '121 Months';
update apprenticeships set expected_duration='72 Months' where expected_duration ilike '84 Months';
update apprenticeships set expected_duration='72 Months' where expected_duration ilike '81 Months';
update apprenticeships set expected_duration='18 Months' where expected_duration ilike '174 Months';
update apprenticeships set expected_duration='18 Months' where expected_duration ilike '79 Months';
update apprenticeships set expected_duration='12 Months' where expected_duration ilike '1 Year';
update apprenticeships set expected_duration='39 Months' where expected_duration ilike '39 Years';
update apprenticeships set expected_duration='36 Months' where expected_duration ilike '36 Years';
update apprenticeships set expected_duration='33 Months' where expected_duration ilike '33 Years';

