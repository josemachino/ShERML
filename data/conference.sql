CREATE TABLE IF NOT EXISTS University (
    idu integer,
    name VARCHAR(255) NOT NULL,	
    PRIMARY KEY (idu)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Team (
    idt integer,
    name VARCHAR(255) NOT NULL,
    idu integer,
    PRIMARY KEY (idt),
    FOREIGN KEY (idu) REFERENCES University(idu)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Researcher (
    idr integer,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    expertise VARCHAR(255) NOT NULL,
    team integer,
    PRIMARY KEY (idr),
    FOREIGN KEY (team) REFERENCES Team(idt)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Conference (    
    name VARCHAR(255) NOT NULL,
    year VARCHAR(4) NOT NULL,
    place VARCHAR(100) NOT NULL,
    PRIMARY KEY (name,year)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Registration (
    idr integer,
    name VARCHAR(255) NOT NULL,
    year VARCHAR(4) NOT NULL,
    dateReg date, 
    PRIMARY KEY (idr,name,year),
    FOREIGN KEY (idr) REFERENCES Researcher(idr),
    FOREIGN KEY (name) REFERENCES Conference(name),
    FOREIGN KEY (year) REFERENCES Conference(year)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Talk (
    idr integer,
    name VARCHAR(255) NOT NULL,
    year VARCHAR(4) NOT NULL,
    title varchar(255) Not null,
    PRIMARY KEY (idr,name,year,title),
    FOREIGN KEY (idr) REFERENCES Registration(idr)	,
    FOREIGN KEY (name) REFERENCES Registration(name),
    FOREIGN KEY (year) REFERENCES Registration(year)
)ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Collaborator (
    idr integer,
    name VARCHAR(255) NOT NULL,
    year VARCHAR(4) NOT NULL,
    title varchar(255) Not null,
    idrc integer,
    PRIMARY KEY (idr,name,year,title,idrc),
    FOREIGN KEY (idr) REFERENCES Talk(idr)	,
    FOREIGN KEY (name) REFERENCES Talk(name),
    FOREIGN KEY (year) REFERENCES Talk(year),
    FOREIGN KEY (title) REFERENCES Talk(title),
    FOREIGN KEY (idrc) REFERENCES Researcher(idr)	
)ENGINE=INNODB;

INSERT INTO University (idu,name) VALUES (1, 'Lille University');
INSERT INTO University (idu,name) VALUES (2, 'Rome University');
INSERT INTO Team (idt,name,idu) VALUES (1, 'Alg',1);
INSERT INTO Team (idt,name,idu) VALUES (2, 'Pi',2);
INSERT INTO Researcher (idr,name, email,expertise,team) VALUES (1, 'Jose','j@s.fr','Math',1);
INSERT INTO Researcher (idr,name, email,expertise,team) VALUES (2, 'Edith','j@s.fr','Logic',2);
INSERT INTO Researcher (idr,name, email,expertise,team) VALUES (3, 'Steve','j@s.fr','Algebra',1);
INSERT INTO Researcher (idr,name, email,expertise,team) VALUES (4, 'Bernard','j@s.fr','Geometry',2);

INSERT INTO  Conference (name,year,place) VALUES ('ICDT','2019','Lille');
INSERT INTO  Conference (name,year,place) VALUES ('ISWC','2019','Chile');

INSERT INTO  Registration (idr,name,year,dateReg) VALUES (1,'ICDT','2019','2019-10-03');
INSERT INTO  Registration (idr,name,year,dateReg) VALUES (3,'ISWC','2019','2019-10-03');

INSERT INTO  Talk (idr,name,year,title) VALUES (1,'ICDT','2019','Tutoring');
INSERT INTO  Talk (idr,name,year,title) VALUES (1,'ICDT','2019','Skolemization');
INSERT INTO  Talk (idr,name,year,title) VALUES (3,'ISWC','2019','Algebraic');

INSERT INTO  Collaborator (idr,name,year,title,idrc) VALUES (1,'ICDT','2019','Tutoring',4);
INSERT INTO  Collaborator (idr,name,year,title,idrc) VALUES (3,'ISWC','2019','Algebraic',2);

