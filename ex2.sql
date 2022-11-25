/*
    All of our CREATE TABLE statements
*/

/* Equipment Table */
CREATE TABLE equipment (

    equipmentname VARCHAR(100) PRIMARY KEY NOT NULL,
    weight INTEGER NOT NULL,
    equipmentcondition VARCHAR(100) NOT NULL,
    quantity INTEGER NOT NULL

);

/* Gym Table */
CREATE TABLE gym (

    address VARCHAR(100) PRIMARY KEY NOT NULL,
    name VARCHAR(100) NOT NULL

);

/* Gym Equipment Table */
CREATE TABLE GymEquipment (

    GymAddress VARCHAR(200) NOT NULL,
    EquipmentName VARCHAR (100) NOT NULL,
    PRIMARY KEY (gymAddress, equipmentName),
    FOREIGN KEY (gymAddress) REFERENCES gym(address) ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (equipmentName) REFERENCES equipment(equipmentname) ON UPDATE CASCADE ON DELETE NO ACTION

);

/* Instructor Table */
CREATE TABLE instructor (

    name VARCHAR(100) NOT NULL,
    dateOfBirth VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phoneNumber VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL,
    skillLevel VARCHAR(100) NOT NULL,
    instructorID VARCHAR(100) PRIMARY KEY NOT NULL

);

/* Offering Table */
CREATE TABLE offering (

    offeringID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sessionTitle VARCHAR(100) NOT NULL, 
    instructorID VARCHAR(100) NOT NULL,
    time VARCHAR(100) NOT NULL,
    date VARCHAR(100) NOT NULL,
    FOREIGN KEY (instructorID) REFERENCES instructor(instructorID) ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (sessionTitle) REFERENCES sessiontime(title) ON UPDATE CASCADE ON DELETE NO ACTION

);

/* Offering Equipment Table */
CREATE TABLE offeringEquipment ( 

    equipmentName VARCHAR(100) NOT NULL,
    offeringID INT NOT NULL,
    PRIMARY KEY(equipmentName, offeringID),
    FOREIGN KEY (equipmentName) REFERENCES equipment(equipmentname) ON UPDATE CASCADE ON DELETE NO ACTION,    
    FOREIGN KEY (offeringID) REFERENCES offering(offeringID) ON UPDATE CASCADE ON DELETE NO ACTION   

);

/* Session Table */
CREATE TABLE session (

    gymAddress VARCHAR(200) NOT NULL,
    sessionTitle VARCHAR(100) NOT NULL,
    PRIMARY KEY(gymAddress, sessionTitle),
    FOREIGN KEY(gymAddress) REFERENCES gym(address) ON UPDATE CASCADE ON DELETE NO ACTION, 
    FOREIGN KEY(sessionTitle) REFERENCES sessionTime(title) ON UPDATE CASCADE ON DELETE NO ACTION 

);

/* Session Time Table */
CREATE TABLE sessionTime (

    title VARCHAR(100) PRIMARY KEY NOT NULL

);

/* Student Table */
CREATE TABLE student (

    name VARCHAR(100) NOT NULL,
    dateOfBirth VARCHAR(100) NOT NULL,
    accountID VARCHAR(100) PRIMARY KEY NOT NULL,
    bodyWeight INTEGER NOT NULL,
    MembershipType VARCHAR(100) NOT NULL  

);


/* Student Offering Table */
CREATE TABLE studentOffering (

    accountID VARCHAR(20) NOT NULL,
    offeringID INT NOT NULL,
    PRIMARY KEY (accountID, offeringID),
    FOREIGN KEY (accountID) REFERENCES student(accountID) ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (offeringID) REFERENCES offering(offeringID) ON UPDATE CASCADE ON DELETE NO ACTION

);
