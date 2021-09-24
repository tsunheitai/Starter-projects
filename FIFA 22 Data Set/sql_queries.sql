--------------------------------------------------------------
-- Used BigQuery to run my SQL code

-- Running few queries from the players table
--------------------------------------------------------------

-- The top 10 players in FIFA 22 that have the highest growth

SELECT FullName, Overall, Potential, Growth, Club   
FROM players
ORDER BY Growth DESC
LIMIT 10 

-- The top 10 players in FIFA 22 that have the highest potential

SELECT FullName, Overall, Potential, Growth, Club   
FROM players 
ORDER BY Potential DESC
LIMIT 10 

-- The top 10 players in FIFA 22 that have the highest release clauses

SELECT FullName, Overall, Potential, Growth, Club, ReleaseClause   
FROM players
ORDER BY ReleaseClause DESC
LIMIT 10 

-- The ten tallest players in FIFA 22

SELECT FullName, Overall, Age, Height, Positions, Weight  
FROM players
ORDER BY Height DESC
LIMIT 10 

-- No surprises when you run the code chunk above to find the output shows that 7 out of the 10 tallest players in FIFA 22 are goalkeepers.

-- One of my favourite things to do when playing manager mode is finding players that you could sign on a free transfer when their contract has 6 months or less to go
-- WHERE statement set at 2021 as FIFA 22 will start the first season in 2021
-- Lets see what gems we can find

SELECT FullName, Overall, Positions, Club   
FROM players
WHERE ContractUntil = 2021
ORDER BY Overall DESC
LIMIT 10 

-- Normally when I play manager mode I start looking in my second season once I win some trophies and get that wage budget a bit higher
-- Lets see what gems we can find if we're in our second season

SELECT FullName, Overall, Positions, Club   
FROM players
WHERE ContractUntil = 2022
ORDER BY Overall DESC
LIMIT 10 

-- Wow, players contracting ending in 2022 is a much better list than those ending in 2021.
-- You have potentially a future Ballon D'or winner in Kylian Mbappe (overall 91) and the lethal striker Luis Suarez

-- Lets have a look at the laziest players that have the highest overall ratings

SELECT FullName, Overall, Positions, Club   
FROM players
WHERE AttackingWorkRate = 'Low' AND DefensiveWorkRate = 'Low'
ORDER BY Overall DESC
LIMIT 10 

-- I'm having a good chuckle as a Chelsea fan, as Man United's GOAT Anthony Martial has the highest overall rating and has low attacking and defensive work rates

-- What about the hardest working players?

SELECT FullName, Overall, Positions, Club   
FROM players
WHERE AttackingWorkRate = 'High' AND DefensiveWorkRate = 'High'
ORDER BY Overall DESC
LIMIT 10 

-- Pretty impressive list, with two Spurs players Harry Kane & Heung Min Son being in this top 10 list. Man City's Kevin De Bruyne is top of this list with an overall rating of 91.

-- Fastest players in FIFA 22

SELECT FullName, Positions, Club, PaceTotal
FROM players
ORDER BY PaceTotal DESC
LIMIT 10

-- Strongest players in FIFA 22

SELECT FullName, Positions, Club, Strength
FROM players 
ORDER BY Strength DESC
LIMIT 10





