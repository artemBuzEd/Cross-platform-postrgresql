CREATE TABLE hotel_users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    user_password TEXT,
    user_role TEXT,
    client_id INT,
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES clients (client_id)
);