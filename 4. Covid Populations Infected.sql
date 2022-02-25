SELECT Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
FROM Covid.CovidDeath
WHERE continent is not null
GROUP BY Location, Population, date
ORDER BY PercentPopulationInfected desc