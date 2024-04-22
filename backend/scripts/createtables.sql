-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-04-03 10:47:57.309

-- tables
-- Table: Cards
CREATE TABLE Cards (
    ID_Card serial  NOT NULL,
    ID_User int  NOT NULL,
    Title varchar(150)  NOT NULL,
    Epic varchar(100)  NOT NULL,
    Description varchar(1000)  NOT NULL,
    Type char(20)  NOT NULL,
    Priority varchar(15)  NOT NULL,
    State varchar(15)  NOT NULL,
    Backlog boolean  NOT NULL,
    DateCreated timestamp  NOT NULL,
    StoryPoints decimal(2,1)  NOT NULL,
    Category varchar(15)  NOT NULL,
    CONSTRAINT Cards_pk PRIMARY KEY (ID_Card)
);

-- Table: Comments
CREATE TABLE Comments (
    ID_Comment serial  NOT NULL,
    ID_Card int  NOT NULL,
    ID_User int  NOT NULL,
    Date timestamp  NOT NULL,
    Content varchar(1000)  NOT NULL,
    ID_Parent int  NULL,
    CONSTRAINT Comments_pk PRIMARY KEY (ID_Comment),
    CONSTRAINT FK_Card_Comment FOREIGN KEY (ID_Card)
        REFERENCES Cards (ID_Card) ON DELETE CASCADE,
    CONSTRAINT FK_User_Comment FOREIGN KEY (ID_User)
        REFERENCES Users (ID_User) ON DELETE CASCADE,
    CONSTRAINT FK_Parent_Comment FOREIGN KEY (ID_Parent)
        REFERENCES Comments (ID_Comment) ON DELETE CASCADE
);

-- Table: Label
CREATE TABLE Label (
    ID_Label serial  NOT NULL,
    Name varchar(20)  NOT NULL,
    CONSTRAINT Label_pk PRIMARY KEY (ID_Label)
);

-- Table: LabelCard
CREATE TABLE LabelCard (
    ID_Card int  NOT NULL,
    ID_Label int  NOT NULL,
    CONSTRAINT LabelCard_pk PRIMARY KEY (ID_Card,ID_Label),
    CONSTRAINT FK_Card_Label FOREIGN KEY (ID_Card)
        REFERENCES Cards (ID_Card) ON DELETE CASCADE,
    CONSTRAINT FK_Label_Card FOREIGN KEY (ID_Label)
        REFERENCES Label (ID_Label) ON DELETE CASCADE
);
-- Table: Users
CREATE TABLE Users (
    ID_User serial  NOT NULL,
    Name varchar(60)  NOT NULL,
    Email varchar(320)  NOT NULL,
    Token char(20)  NULL,
    ValidTOken boolean  NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (ID_User)
);

-- foreign keys
-- Reference: Card_Label_Card (table: LabelCard)
ALTER TABLE LabelCard ADD CONSTRAINT Card_Label_Card
    FOREIGN KEY (ID_Card)
    REFERENCES Cards (ID_Card)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Cards_Users (table: Cards)
ALTER TABLE Cards ADD CONSTRAINT Cards_Users
    FOREIGN KEY (ID_User)
    REFERENCES Users (ID_User)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Comments_Cards (table: Comments)
ALTER TABLE Comments ADD CONSTRAINT Comments_Cards
    FOREIGN KEY (ID_Card)
    REFERENCES Cards (ID_Card)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Parent (table: Comments)
ALTER TABLE Comments ADD CONSTRAINT Parent
    FOREIGN KEY (ID_Parent)
    REFERENCES Comments (ID_Comment)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

-- generate data












