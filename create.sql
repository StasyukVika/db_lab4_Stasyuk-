CREATE TABLE Colonies
(
  num_colonies VARCHAR(30) NOT NULL,
  max_colonies VARCHAR(30) NOT NULL,
  lost_colonies VARCHAR(30) NOT NULL,
  percent_lost VARCHAR(30) NOT NULL,
  added_colonies VARCHAR(30) NOT NULL,
  renovated_colonies VARCHAR(30) NOT NULL,
  percent_renovated VARCHAR(30) NOT NULL,
  PRIMARY KEY (num_colonies)
);

CREATE TABLE State
(
  state VARCHAR(30) NOT NULL,
  state_code VARCHAR(30) NOT NULL,
  num_colonies VARCHAR(30) NOT NULL,
  PRIMARY KEY (state),
  FOREIGN KEY (num_colonies) REFERENCES Colonies(num_colonies)
);

CREATE TABLE Period
(
  quarter VARCHAR(30) NOT NULL,
  year VARCHAR(30) NOT NULL,
  num_colonies VARCHAR(30) NOT NULL,
  PRIMARY KEY (quarter),
  FOREIGN KEY (num_colonies) REFERENCES Colonies(num_colonies)
);

CREATE TABLE Causes_of_colonies_damage
(
  varroa_mites VARCHAR(30) NOT NULL,
  other_pests_and_parasites VARCHAR(30) NOT NULL,
  diseases VARCHAR(30) NOT NULL,
  pesticides VARCHAR(30) NOT NULL,
  other VARCHAR(30) NOT NULL,
  unknown VARCHAR(30) NOT NULL,
  num_colonies VARCHAR(30) NOT NULL,
  PRIMARY KEY (varroa_mites),
  FOREIGN KEY (num_colonies) REFERENCES Colonies(num_colonies)
);