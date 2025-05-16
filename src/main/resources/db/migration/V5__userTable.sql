CREATE TABLE hotel_users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    user_password TEXT,
    user_role TEXT
);