CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    passportData VARCHAR(50) UNIQUE NOT NULL ,
    comment VARCHAR(255) NULL
);
CREATE TYPE room_comfort AS ENUM ('Luxury', 'Standard','Presidential');

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    roomNumber INT NOT NULL,
    comfort room_comfort NOT NULL,
    capacity INT NOT NULL,
    price INT NOT NULL
);

CREATE TABLE settlements (
    settlement_id SERIAL PRIMARY KEY,
    client_id INT,
    room_id INT,
    settlementDate DATE NOT NULL,
    settlementRelease DATE NOT NULL,
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES clients (client_id),
    CONSTRAINT fk_room FOREIGN KEY (room_id) REFERENCES rooms (room_id)
);