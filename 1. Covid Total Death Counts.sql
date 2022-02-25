Select location, SUM(cast(new_deaths as float)) as TotalDeathCount
From Covid.CovidDeath
Where continent is not null 
and location not in ('World', 'European Union', 'International')
Group by location
order by TotalDeathCount desc