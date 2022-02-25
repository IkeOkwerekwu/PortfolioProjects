SELECT Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From Covid.CovidDeath
WHERE continent is not null
GROUP BY Location, Population
ORDER BY PercentPopulationInfected desc