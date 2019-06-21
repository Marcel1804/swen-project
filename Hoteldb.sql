CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE CustomerAccount
(
    accountid INT AUTO_INCREMENT NOT NULL,
    firstname VARCHAR(20), 
    lastname  VARCHAR(20), 
    email     VARCHAR(20),
    gender    VARCHAR(6) ,
    dateofbirth DATE,
    username  VARCHAR(30),
    password  VARCHAR(30),
    telephone VARCHAR(10),
    
    PRIMARY KEY(accountid)
);

CREATE TABLE Reservation
(
    accountid INT NOT NULL,
    startdate DATE,
    enddate   DATE,
    bookingtype VARCHAR(30),
    numadults INT,
    numchildren INT,
    PRIMARY KEY(accountid),
    FOREIGN KEY(accountid) REFERENCES CustomerAccount(accountid)
    
);

CREATE TABLE CreditCard
(
    accountid INT NOT NULL,
    cardnum INT NOT NULL,
    CV INT NOT NULL,
    ExpirationDate INT NOT NULL,
    PRIMARY KEY(accountid, cardnum),
    FOREIGN KEY(accountid) REFERENCES CustomerAccount(accountid)
);


CREATE TABLE Room
(
    roomnum INT NOT NULL,
    roomtype VARCHAR(30),
    PRIMARY KEY(roomnum, roomtype)
);

