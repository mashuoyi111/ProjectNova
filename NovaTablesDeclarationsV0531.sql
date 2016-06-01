CREATE DATABASE if not exists nova;
-- SHOW DATABASES;
USE nova;

DROP TABLE if exists CMTAuthors cascade;
DROP TABLE if exists CMTBooks cascade;
DROP TABLE if exists FAVAuthors cascade;
DROP TABLE if exists FAVBooks cascade;
DROP TABLE if exists HSAuthors cascade;
DROP TABLE if exists HSBooks cascade;
DROP TABLE if exists Members cascade;
DROP TABLE if exists BookDetails cascade;
DROP TABLE if exists Books cascade;
DROP TABLE if exists GenreDetails cascade;
DROP TABLE if exists Genres cascade;
DROP TABLE if exists AuthorDetails cascade;
DROP TABLE if exists Authors cascade;
DROP TABLE if exists CountryDetails cascade;
DROP TABLE if exists Countries cascade;
DROP TABLE if exists Languages cascade;

CREATE TABLE Languages(
	LCode char(5) primary key,
    LName varchar(100) not null,
    HomePage TEXT
);

CREATE TABLE Countries(
	CCode char(3) primary key,
    OfficialLang char(5),
    FOREIGN KEY(OfficialLang) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE SET NULL 
);

CREATE TABLE CountryDetails(
	CCode char(3),
    LCode char(5),
    CName varchar(100) not null,
    primary key(CCode, LCode),
    FOREIGN KEY(CCode) REFERENCES Countries(CCode) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(LCode) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Authors(
	AID varchar(100) primary key,
    FromCountry char(3) not null,
    FOREIGN KEY(FromCountry) REFERENCES Countries(CCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE AuthorDetails(
	AID varchar(100),
    LCode char(5),
    AName varchar(200) not null,
    primary key(AID,LCode),
    FOREIGN KEY(AID) REFERENCES Authors(AID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(LCode) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Genres(
	GCode varchar(10) primary key
);

CREATE TABLE GenreDetails(
	GCode varchar(10),
    LCode char(5),
    GName varchar(200) not null,
    GLink TEXT,
    primary key(GCode,LCode),
    FOREIGN KEY(GCode) REFERENCES Genres(GCode) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(LCode) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Books(
	BID varchar(100) primary key,
    AID varchar(100) not null,
    GCode varchar(10) not null,
    ORelease DATE,
    Clicks INT UNSIGNED,
    Rating INT UNSIGNED,
    FOREIGN KEY(AID) REFERENCES Authors(AID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(GCode) REFERENCES Genres(GCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE BookDetails(
	BID varchar(100),
    LCode char(5),
    BName TEXT not null,
    BRelease DATE not null,
    WCount INT,
    BUpdate DATE not null,
    primary key(BID,LCode),
    FOREIGN KEY(BID) REFERENCES Books(BID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(LCode) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Members(
	UserName varchar(20) primary key,
    UserPass char(40) not null, -- Will encrypt the password in SHA1
    LangPref char(5),
    FOREIGN KEY(LangPref) REFERENCES Languages(LCode) ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE HSBooks(
	UserName varchar(20),
    BID varchar(100),
    LastVisit DATETIME not null,
    primary key(UserName, BID),
    FOREIGN KEY(UserName) REFERENCES Members(UserName) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(BID) REFERENCES Books(BID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE HSAuthors(
	UserName varchar(20),
    AID varchar(100),
    LastVisit DATETIME not null,
    primary key(UserName, AID),
    FOREIGN KEY(UserName) REFERENCES Members(UserName) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(AID) REFERENCES Authors(AID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE FAVBooks(
	UserName varchar(20),
    BID varchar(100),
    AddedAt DATE not null,
    primary key(UserName, BID),
    FOREIGN KEY(UserName) REFERENCES Members(UserName) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(BID) REFERENCES Books(BID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE FAVAuthors(
	UserName varchar(20),
    AID varchar(100),
    AddedAt DATE not null,
    primary key(UserName, AID),
    FOREIGN KEY(UserName) REFERENCES Members(UserName) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(AID) REFERENCES Authors(AID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE CMTBooks(
	TStamp timestamp(6),
    BID varchar(100),
    Content TEXT not null,
	primary key(TStamp, BID),
    FOREIGN KEY(BID) REFERENCES Books(BID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE CMTAuthors(
	TStamp timestamp(6),
    AID varchar(100),
    Content TEXT not null,
	primary key(TStamp, AID),
    FOREIGN KEY(AID) REFERENCES Authors(AID) ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW TABLES;