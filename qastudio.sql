USE qastudio;
SELECT firstName, surname, age FROM staff WHERE age > 24 and city = "moscow";
SELECT firstName, surname FROM staff ORDER BY age ASC;
SELECT age FROM staff LEFT JOIN positions ON staff.positionID = positions.id WHERE positionName = "qa_engineer";
SELECT firstName, surname FROM staff LEFT JOIN positions ON staff.positionID = positions.id WHERE positionName = "frontend_dev";

SELECT computers FROM positions 
LEFT JOIN staff ON positions.id = staff.positionID
LEFT JOIN computers ON positions.ComputerID = computers.id WHERE firstName = "anastasia" AND surname = "morozova";

SELECT COUNT(staff.ID) FROM staff WHERE city = "moscow";
SELECT firstName, salary FROM staff LEFT JOIN positions ON staff.positionID = positions.id; 
SELECT SUM(salary) FROM staff LEFT JOIN positions ON staff.positionID = positions.id WHERE city = "moscow";
SELECT DISTINCT city, SUM(salary) FROM staff LEFT JOIN positions ON staff.positionID = positions.id GROUP BY city;
SELECT DISTINCT city FROM staff;
SELECT DISTINCT city FROM staff WHERE city LIKE "%k%";
SELECT positionName FROM positions WHERE salary BETWEEN 1500 AND 2200;

SELECT firstName, surname, positionName FROM staff LEFT JOIN positions ON staff.positionID = positions.ID
UNION ALL
SELECT firstName, surname, positionName FROM staff RIGHT JOIN positions ON staff.positionID = positions.ID 
WHERE surname is NULL;

SELECT COUNT(DISTINCT city) FROM staff;
SELECT COUNT(city), city FROM staff GROUP BY city ORDER BY city ASC;

