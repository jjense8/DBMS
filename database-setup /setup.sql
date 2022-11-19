/* Enter local database in Terminal  */

/usr/local/mysql/bin/mysql -u root -p

/* Enter the password for your local database */

--------------------------------------------------

/* Display all databases */

show databases; 


/* Create database */
CREATE DATABASE Lab3;

/* update table name */
ALTER TABLE session RENAME sessiontimes;

/* update column name */
ALTER TABLE instructor CHANGE adhighess address VARCHAR(100);
