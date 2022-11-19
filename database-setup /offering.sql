USE Lab3;   

CREATE TABLE offering (
    offeringID int NOT_NULL AUTO_INCREMENT PRIMARY KEY,
    sessionTitle VARCHAR(100),
    instructorID VARCHAR(100),
    time VARCHAR(100),
    date VARCHAR(100),
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID),
    FOREIGN KEY (sessionTitle) REFERENCES sessiontime(title)
);

INSERT INTO offering(instructorID) SELECT instructorID FROM instructor;
INSERT INTO offering(sessionTitle) SELECT title FROM sessiontime;