INSERT INTO Colonies (num_colonies, max_colonies, lost_colonies, percent_lost, added_colonies, renovated_colonies, percent_renovated)
VALUES
(7000, 7000, 1800, 26, 2800, 250, 4), 
(35000, 35000, 4600, 13, 3400, 2100, 6),  
(13000, 14000, 1500, 11, 1200, 90, 1),  
(1440000, 1690000, 255000, 15, 250000, 124000, 7),  
(3500, 12500, 1500, 12, 200, 140, 1),  
(3900, 3900, 870, 22, 290, 0, 0), 
(305000, 315000, 42000, 13, 54000, 25000, 8);

INSERT INTO State (state, state_code)
VALUES
('Alabama', 'AL'),
('Arizona', 'AZ'),
('Arkansas', 'AR'),
('California', 'CA'),
('Colorado', 'CO'),
('Connecticut', 'CT'),
('Florida', 'FL');

INSERT INTO Period (quarter, year)
VALUES
(1, 2015),
(1, 2015),
(1, 2015),
(1, 2015),
(1, 2015),
(1, 2015),
(1, 2015);

INSERT INTO Causes_of_colonies_damage (varroa_mites, other_pests_and_parasites, diseases, pesticides, other, unknown)
VALUES
(10.0, 5.4, 0.0, 2.2, 9.1, 9.4),
(26.9, 20.5, 0.1, 0.0, 1.8, 3.1),
(17.6, 11.4, 1.5, 3.4, 1.0, 1.0),
(24.7, 7.2, 3.0, 7.5, 6.5, 2.8),
(14.6, 0.9, 1.8, 0.6, 2.6, 5.9),
(2.5, 1.4, 0.0, 0.0, 21.2, 2.4),
(22.3, 13.5, 0.8, 8.9, 5.1, 4.4);