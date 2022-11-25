CREATE VIEW studentsPerClass (offeringID, instructorName, studentCount)
    AS SELECT o.offeringID, i.name, COUNT(*)
    FROM offering o, instructor i, studentOffering s
    WHERE o.instructorID = i.instructorID AND o.offeringID = s.offeringID
    GROUP BY o.offeringID;
