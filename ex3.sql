/* Inserting a sessionTime and providing an instructor for a specific offering. The ID has auto_increment so we have left it as null */

-- Literal values
INSERT INTO offering VALUES (null, '96-009-2344','30-6732368', '14:32', '10/3/2022');

-- INSERT with two SELECT statements, sessionTime(title) and instructor(instructorID)
INSERT INTO offering VALUES (
    NULL, (SELECT title FROM sessionTime WHERE title = '16-043-1017'), (SELECT instructorID FROM instructor WHERE instructorID = '07-7969530'), '12:34', '9/12/2022'
);

-- INSERT with two SELECT statements, sessionTime(title) and instructor(email)
INSERT INTO offering (offeringID, sessionTitle, instructorID, time, date) VALUES (
    null, (SELECT title FROM sessionTime WHERE title = '13-830-3587'), (SELECT instructorID FROM instructor WHERE email = 'ccoda6@istockphoto.com'), '1:30', '1/14/2023' 
);
