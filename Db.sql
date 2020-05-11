CREATE TABLE area
(
  location VARCHAR(30) NOT NULL,
  areaName VARCHAR(30) NOT NULL,
  areaId INT NOT NULL,
  PRIMARY KEY (areaId)
);

CREATE TABLE Cage
(
  cageId INT NOT NULL,
  location VARCHAR(30) NOT NULL,
  size INT NOT NULL,
  animalId INT NOT NULL,
  itemAmount INT NOT NULL,
  areaId INT NOT NULL,
  PRIMARY KEY (cageId),
  FOREIGN KEY (areaId) REFERENCES area(areaId)
  FOREIGN KEY (animalId) REFERENCES animal(animalId)
);