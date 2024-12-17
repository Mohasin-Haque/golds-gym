CREATE DATABASE myapi;
show tables;
USE myapi;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image_url TEXT NOT NULL,
    rating FLOAT NOT NULL,
    reviews INT NOT NULL
);


update products set image_url="public\Apple.png" where rating=4.8;

INSERT INTO products (title, description, price, image_url, rating, reviews) VALUES
('Samsung Galaxy S5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '699.99', './Apple.png', '5', '15'),
('Xbox One', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '399.99', 'Xbox One.jfif', '4.5', '8'),
('Playstation 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '699.99', 'Playstation.jfif', '5', '4'),
('Oneplus5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '699.99', './oneplus.png', '5', '15'),
('Vizio Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '599.99', './vizismart tv.jfif', '4.5', '22'),
('Microsoft Surface', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '399.99', './microsoft surface.jpg', '5', '14'),
('Vizio Smart TV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '59.99', './vizismart tv.jfif', '4', '24'),
('Playstation 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '699.99', 'Playstation.jfif', '5', '4'),
('Oneplus5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec dignissim', '699.99', './oneplus.png', '5', '15');



UPDATE products
SET rating = 2
WHERE title = 'Oneplus5';


select * from products;

--    login user

create table loginuser(
email varchar(255) not null,
password varchar(255) not null
); 
INSERT INTO loginuser (email, password) VALUES
('Deepak@gmail.com', 'pass123'),
('Sakshi@gmail.com', 'pass456');

INSERT INTO loginuser (email, password) VALUES('Nidhi@gmail.com', 'pass98');
select * from loginuser;



 --    user_info

CREATE TABLE user_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    mobile VARCHAR(15) NOT NULL,
    address1 VARCHAR(255) NOT NULL,
    address2 VARCHAR(255),
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zip VARCHAR(10) NOT NULL
);
INSERT INTO user_info (name, email, mobile, address1, address2, city, state, zip)
VALUES
    ('John Doe', 'john.doe@example.com', '9876543210', '123 Main St', 'Apt 101', 'New York', 'State 1', '10001'),
    ('Jane Smith', 'jane.smith@example.com', '8765432109', '456 Oak St', 'Suite 201', 'Los Angeles', 'State 2', '90001'),
    ('Michael Brown', 'michael.brown@example.com', '7654321098', '789 Pine St', 'Floor 3', 'Chicago', 'State 3', '60601'),
    ('Emily Johnson', 'emily.johnson@example.com', '6543210987', '123 Maple Ave', 'Building B', 'Houston', 'State 1', '77001'),
    ('David Williams', 'david.williams@example.com', '5432109876', '101 Birch St', 'Apt 5B', 'Phoenix', 'State 2', '85001'),
    ('Sarah Lee', 'sarah.lee@example.com', '4321098765', '202 Elm St', 'Unit 301', 'San Francisco', 'State 3', '94101');

UPDATE user_info
SET state = 'Uttar Pradesh'
WHERE id = 1;

UPDATE user_info
SET state = 'Jammu and Kashmir'
WHERE id = 2;

UPDATE user_info
SET state = 'Maharashtra'
WHERE id = 3;

UPDATE user_info
SET state = 'Uttarakhand'
WHERE id = 4;

UPDATE user_info
SET state = 'Goa'
WHERE id = 5;

UPDATE user_info
SET state = 'Delhi'
WHERE id = 6;

UPDATE user_info
SET state = 'Haryana'
WHERE id = 7;

select * from user_info;




