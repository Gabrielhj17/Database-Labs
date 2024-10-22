CREATE TABLE CD(
catalogNo INT(10) PRIMARY KEY,
title VARCHAR(50) NOT NULL,
publicationDate DATE,
releasedBy VARCHAR(50) NOT NULL,
original INT(10),
isFrontedBy INT(10),
FOREIGN KEY (releasedBy) REFERENCES recordLabel(labelName),
FOREIGN KEY (original) REFERENCES CD(catalogNo),
FOREIGN KEY (isFrontedBy) REFERENCES Artist(idNumber)
);