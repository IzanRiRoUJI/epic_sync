-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-04-03 10:47:57.309

-- foreign keys
ALTER TABLE LabelCard
    DROP CONSTRAINT Card_Label_Card;

ALTER TABLE Cards
    DROP CONSTRAINT Cards_Users;

ALTER TABLE Comments
    DROP CONSTRAINT Comments_Cards;

ALTER TABLE Comments
    DROP CONSTRAINT Comments_Users;

ALTER TABLE LabelCard
    DROP CONSTRAINT LabelCard_Label;

ALTER TABLE Comments
    DROP CONSTRAINT Parent;

-- tables
DROP TABLE Cards;

DROP TABLE Comments;

DROP TABLE Label;

DROP TABLE LabelCard;

DROP TABLE Users;

-- End of file.

