CREATE TABLE divisions (
    id INT PRIMARY KEY,
    bbsCode VARCHAR(10),
    name VARCHAR(255),
    nameBn VARCHAR(255)
);

CREATE TABLE districts (
    id INT PRIMARY KEY,
    division_id INT,
    bbsCode VARCHAR(10),
    name VARCHAR(255),
    nameBn VARCHAR(255),
    FOREIGN KEY (division_id) REFERENCES divisions(id)
);

CREATE TABLE thanas (
    id INT PRIMARY KEY,
    district_id INT,
    division_id INT,
    name VARCHAR(255),
    nameBn VARCHAR(255),
    bbsCode VARCHAR(10),
    FOREIGN KEY (district_id) REFERENCES districts(id),
    FOREIGN KEY (division_id) REFERENCES divisions(id)
);

CREATE TABLE city_corporations (
    id INT PRIMARY KEY,
    district_id INT,
    division_id INT,
    name VARCHAR(255),
    nameBn VARCHAR(255),
    bbsCode VARCHAR(10),
    FOREIGN KEY (district_id) REFERENCES districts(id),
    FOREIGN KEY (division_id) REFERENCES divisions(id)
);

CREATE TABLE upazillas (
    id INT PRIMARY KEY,
    district_id INT,
    division_id INT,
    name VARCHAR(255),
    nameBn VARCHAR(255),
    bbsCode VARCHAR(10),
    FOREIGN KEY (district_id) REFERENCES districts(id),
    FOREIGN KEY (division_id) REFERENCES divisions(id)
);
