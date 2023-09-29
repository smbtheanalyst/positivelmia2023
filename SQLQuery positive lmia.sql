--Analysis of the job market for foreginers in CANADA, Approved LMIA from JAN to MARCH 2023

--Table and its columns
SELECT *
FROM Positive_EN$


SELECT province, [approved lmias], [Approved Positions]
FROM Positive_EN$

SELECT occupation
FROM Positive_EN$

SELECT province, occupation, [approved positions]
FROM Positive_EN$


-- >=5 Approved LMIAS in a particular province with number of positions

SELECT Province, Employer, ([Program Stream]), Occupation, [approved lmias], [approved positions]
FROM Positive_EN$
WHERE  Province = 'Ontario' AND [Approved LMIAs] >= 5
ORDER BY [Approved LMIAs] DESC

SELECT Province, Employer, ([Program Stream]), Occupation, [approved lmias], [approved positions]
FROM Positive_EN$
WHERE province = 'Alberta' AND [Approved LMIAs] >= 5
ORDER BY [Approved LMIAs]

SELECT Province, Employer, ([Program Stream]), Occupation, [approved lmias], [approved positions]
FROM Positive_EN$
WHERE province = 'New Brunswick' AND [Approved LMIAs] >= 5
ORDER BY [Approved LMIAs]

SELECT Province, Employer, ([Program Stream]), Occupation, [approved lmias], [approved positions]
FROM Positive_EN$
WHERE province = 'British Columbia' AND [Approved LMIAs] >= 5
ORDER BY [Approved LMIAs] DESC

SELECT Province, Employer, Occupation, ([Program Stream]),  [approved lmias], [Approved Positions]
FROM Positive_EN$
WHERE province = 'manitoba' AND [Approved LMIAs] >= 5
ORDER BY [Approved LMIAs] DESC



--Toal lmias and positions for each province
SELECT Province,  SUM([approved lmias])  AS Total_lmias, SUM([Approved Positions]) AS Totalpositions
FROM Positive_EN$
GROUP BY Province
ORDER BY total_lmias DESC

--Total LMIA provided for each province

SELECT province, SUM([Approved LMIAs]) as totallmia@province
FROM Positive_EN$
GROUP BY province
ORDER BY totallmia@province DESC
 

--Total positions offered for each province
SELECT  province, SUM([Approved Positions]) AS total_position, SUM([approved lmias]) AS total_lmias
FROM positive_EN$
GROUP BY province 
ORDER BY total_position DESC


--Total positions and total lmias per occupation
SELECT occupation, SUM([approved positions]) AS total@positions, SUM([Approved LMIAs]) AS TotolLmias
FROM Positive_EN$
GROUP BY Occupation
ORDER BY total@positions DESC

--Total positions offered for each occupation
SELECT occupation, SUM([approved positions]) AS total@occupation
FROM Positive_EN$
GROUP BY Occupation
ORDER BY total@occupation DESC


--Total approved  positions and lmias for each employer
SELECT Employer, SUM([approved lmias]) as lmiastotal@empl, SUM([Approved Positions]) as positionstotal@empl
FROM Positive_EN$
GROUP BY Employer
ORDER BY lmiastotal@empl DESC

--Total  approved lmias per employer
SELECT Employer, SUM([approved lmias]) as lmiastotal@empl
FROM Positive_EN$
GROUP BY Employer
ORDER BY lmiastotal@empl DESC

--Total approved positions per employer
SELECT Employer, SUM([Approved Positions]) as positionstotal@empl
FROM Positive_EN$
GROUP BY Employer
ORDER BY positionstotal@empl DESC


--Total count for each stream
SELECT ([Program Stream]), COUNT([Program Stream]) AS [total_stream]
FROM Positive_EN$
GROUP BY [Program Stream]
ORDER BY [total_stream] DESC














