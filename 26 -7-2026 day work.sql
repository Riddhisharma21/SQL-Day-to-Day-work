use world;
select name, indepyear, ifnull(indepyear,0) from country;
select name, indepyear, lifeexpectancy, coalesce(indepyear, lifeexpectancy, name) from country;
-- case statement
select name, population , indepyear, if(indepyear>1947,'After india','before indis independence') from country;
select name, population , indepyear, if(indepyear>1947,'After india',if(indepyear>1920,'justbefore india','before indis independence')) from country;

select name, population,indepyear,
case
	 when indepyear>1947 then 'After india'
     when indepyear>=1919 then 'only after 1919'
     else 'no condition'
end
from country;
select name as category, continent, population,
case
     when population between 200000 and 500000 then 'avg population'
     when population >500000 then 'large population'
     else 'small population'
end
from country;

select * from country;
select continent, count(*) ,
case
     when count(*)>25 then 'large continent'
     when count(*)>15 then 'avg continent'
     else 'small scale continent'
end
from country
group by continent;