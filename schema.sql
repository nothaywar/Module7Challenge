CREATE TABLE merchant_category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE merchant (
    merchant_id INT PRIMARY KEY,
    merchant_name VARCHAR(255) NOT NULL,
    category_id INT REFERENCES merchant_category(category_id)
);

CREATE TABLE card_holder (
    holder_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE credit_card (
    card_number VARCHAR(20) PRIMARY KEY,
    holder_id INT REFERENCES card_holder(holder_id)
);

CREATE TABLE transaction (
    transaction_id INT PRIMARY KEY,
    transaction_date TIMESTAMP NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    card_number VARCHAR(20) REFERENCES credit_card(card_number),
    merchant_id INT REFERENCES merchant(merchant_id)
);
