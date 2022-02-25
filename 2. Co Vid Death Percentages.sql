SELECT Location, Date, SUM(new_cases) as total_cases, SUM(cast(new_deaths as float)) as total_deaths, SUM(cast(new_deaths as float))/SUM(New_Cases)*100 as DeathPercentage
FROM covid.coviddeath
WHERE continent is not null
GROUP By location, date
ORDER BY 1,2