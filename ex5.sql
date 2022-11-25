/* 
    7 diverse queries that include vairous features of SQL
    Ensure data is inserted into all tables before attempting queries
*/

-- First Query: Group By

/* Get the number of each membership type in the system */
SELECT MembershipType, count(*) AS Count
    FROM student
    GROUP BY MembershipType;


-- Second Query: Over multiple relations

/* Get names of students attending upcoming classes */
SELECT name, so.offeringID, time, date
    FROM offering o, student s, studentOffering so
    WHERE so.accountID = s.accountID AND so.offeringID = o.offeringID;


-- Third Query: Basic
/* Get the name, email, and phone number for instructors with the skill level = 'high' */

SELECT name, email, phoneNumber
    FROM instructor 
    WHERE skillLevel = ('high');


-- Fourth Query: Subquery
/* Displays count of premium vs regular memberships of individuals who are above average weight */
SELECT MembershipType, COUNT(*) AS Count
	FROM student
    WHERE bodyWeight > (SELECT AVG(bodyWeight) FROM student)
	GROUP BY MembershipType;


-- ## Query: Join - Gym and Equipment
/* Number of students with a premium membership and are above average weight */

SELECT g.name AS 'Gym Name', e.equipmentname AS 'Equipment Name', Weight, equipmentcondition, quantity 
    FROM GymEquipment ge
    JOIN gym g ON ge.gymAddress = g.address
    JOIN equipment e ON ge.equipmentName = e.equipmentname
    ORDER BY g.name;
