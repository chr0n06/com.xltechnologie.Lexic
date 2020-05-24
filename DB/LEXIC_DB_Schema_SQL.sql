/*
 * @Author: Maxime Laniel
 * @Date: 2020-05-23 19:50:00
 * @Version: 1.0
 */

DROP DATABASE LEXIC_DB;
CREATE DATABASE LEXIC_DB;
USE LEXIC_DB;

 /*TABLES*/

CREATE TABLE Member (
    MemberID BIGINT IDENTITY,
    FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	Username varchar(50) NOT NULL,
    Password varchar(50) NOT NULL,
    Email varchar(50) NOT NULL,

    PRIMARY KEY (MemberID),
);

CREATE TABLE Note (
	NoteID BIGINT IDENTITY,
	Date date,
    CodeLangage varchar(50) NOT NULL,
    Description varchar(250) NOT NULL,
	
    PRIMARY KEY (NoteID)
);

CREATE TABLE AttachFile (
	AttachFileID BIGINT IDENTITY,
	Path varchar(100) NOT NULL,
	
    PRIMARY KEY (AttachFileID)
);


CREATE TABLE NoteFile (
	NoteID BIGINT NOT NULL,
    AttachFileID BIGINT NOT NULL,
       
    PRIMARY KEY (NoteID, AttachFileID),
    FOREIGN KEY (NoteID)
    REFERENCES Note (NoteID), 
    FOREIGN KEY (AttachFileID)
    REFERENCES AttachFile (AttachFileID),
);