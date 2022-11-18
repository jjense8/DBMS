USE Lab3;   

CREATE TABLE equipment (
    equipmentname VARCHAR(100) PRIMARY KEY NOT NULL,
    weight INTEGER NOT NULL,
    equipmentcondition VARCHAR(100) NOT NULL,
    quantity INTEGER NOT NULL
    
);

INSERT INTO equipment(equipmentname, weight, equipmentcondition, quantity)
values 
('Bigtax', 18, 'new', 19),
('YSolowarm', 18, 'worn', 52),
('Rank', 32, 'new', 38),
('Ventosanzap', 62, 'good', 29);

