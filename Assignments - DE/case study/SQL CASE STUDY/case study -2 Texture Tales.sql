CREATE DATABASE TextureTalesDB;
USE TextureTalesDB;

CREATE TABLE product_hierarchy (
  id INT PRIMARY KEY,
  parent_id INT,
  level_text VARCHAR(50),
  level_name VARCHAR(20)
);

INSERT INTO product_hierarchy (id, parent_id, level_text, level_name) VALUES
(1, NULL, 'Womens', 'Category'),
(2, NULL, 'Mens', 'Category'),
(3, 1, 'Jeans', 'Segment'),
(4, 1, 'Jacket', 'Segment'),
(5, 2, 'Shirt', 'Segment'),
(6, 2, 'Socks', 'Segment'),
(7, 3, 'Navy Oversized', 'Style'),
(8, 3, 'Black Straight', 'Style'),
(9, 3, 'Cream Relaxed', 'Style'),
(10, 4, 'Khaki Suit', 'Style'),
(11, 4, 'Indigo Rain', 'Style'),
(12, 4, 'Grey Fashion', 'Style'),
(13, 5, 'White Tee', 'Style'),
(14, 5, 'Teal Button Up', 'Style'),
(15, 5, 'Blue Polo', 'Style'),
(16, 6, 'Navy Solid', 'Style'),
(17, 6, 'White Striped', 'Style'),
(18, 6, 'Pink Fluro Polkadot', 'Style');

CREATE TABLE product_details (
  product_id VARCHAR(10) PRIMARY KEY,
  price INT,
  product_name VARCHAR(100),
  category_id INT,
  segment_id INT,
  style_id INT,
  category_name VARCHAR(20),
  segment_name VARCHAR(20),
  style_name VARCHAR(50)
);

INSERT INTO product_details (product_id, price, product_name, category_id, segment_id, style_id, category_name, segment_name, style_name) VALUES
('P0001', 33, 'Pink Fluro Polkadot Socks - Mens', 2, 6, 18, 'Mens', 'Socks', 'Pink Fluro Polkadot'),
('P0002', 47, 'Indigo Rain Jacket - Womens', 1, 4, 11, 'Womens', 'Jacket', 'Indigo Rain'),
('P0003', 31, 'Teal Button Up Shirt - Mens', 2, 5, 14, 'Mens', 'Shirt', 'Teal Button Up'),
('P0004', 25, 'Khaki Suit Jacket - Womens', 1, 4, 10, 'Womens', 'Jacket', 'Khaki Suit'),
('P0005', 42, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee'),
('P0006', 40, 'Blue Polo Shirt - Mens', 2, 5, 15, 'Mens', 'Shirt', 'Blue Polo'),
('P0007', 52, 'Black Straight Jeans - Womens', 1, 3, 8, 'Womens', 'Jeans', 'Black Straight'),
('P0008', 30, 'Cream Relaxed Jeans - Womens', 1, 3, 9, 'Womens', 'Jeans', 'Cream Relaxed'),
('P0009', 37, 'Grey Fashion Jacket - Womens', 1, 4, 12, 'Womens', 'Jacket', 'Grey Fashion'),
('P0010', 13, 'Navy Oversized Jeans - Womens', 1, 3, 7, 'Womens', 'Jeans', 'Navy Oversized'),
('P0011', 10, 'White Striped Socks - Mens', 2, 6, 17, 'Mens', 'Socks', 'White Striped'),
('P0012', 29, 'Navy Solid Socks - Mens', 2, 6, 16, 'Mens', 'Socks', 'Navy Solid'),
('P0013', 46, 'Teal Button Up Shirt - Mens', 2, 5, 14, 'Mens', 'Shirt', 'Teal Button Up'),
('P0014', 33, 'Cream Relaxed Jeans - Womens', 1, 3, 9, 'Womens', 'Jeans', 'Cream Relaxed'),
('P0015', 18, 'Pink Fluro Polkadot Socks - Mens', 2, 6, 18, 'Mens', 'Socks', 'Pink Fluro Polkadot'),
('P0016', 23, 'Khaki Suit Jacket - Womens', 1, 4, 10, 'Womens', 'Jacket', 'Khaki Suit'),
('P0017', 50, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee'),
('P0018', 39, 'Navy Oversized Jeans - Womens', 1, 3, 7, 'Womens', 'Jeans', 'Navy Oversized'),
('P0019', 35, 'Black Straight Jeans - Womens', 1, 3, 8, 'Womens', 'Jeans', 'Black Straight'),
('P0020', 48, 'White Striped Socks - Mens', 2, 6, 17, 'Mens', 'Socks', 'White Striped'),
('P0021', 16, 'Navy Solid Socks - Mens', 2, 6, 16, 'Mens', 'Socks', 'Navy Solid'),
('P0022', 45, 'Teal Button Up Shirt - Mens', 2, 5, 14, 'Mens', 'Shirt', 'Teal Button Up'),
('P0023', 55, 'Grey Fashion Jacket - Womens', 1, 4, 12, 'Womens', 'Jacket', 'Grey Fashion'),
('P0024', 26, 'Cream Relaxed Jeans - Womens', 1, 3, 9, 'Womens', 'Jeans', 'Cream Relaxed'),
('P0025', 34, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee');
INSERT INTO product_details (product_id, price, product_name, category_id, segment_id, style_id, category_name, segment_name, style_name) VALUES
('P0026', 32, 'Blue Polo Shirt - Mens', 2, 5, 15, 'Mens', 'Shirt', 'Blue Polo'),
('P0027', 22, 'Pink Fluro Polkadot Socks - Mens', 2, 6, 18, 'Mens', 'Socks', 'Pink Fluro Polkadot'),
('P0028', 60, 'Indigo Rain Jacket - Womens', 1, 4, 11, 'Womens', 'Jacket', 'Indigo Rain'),
('P0029', 44, 'Khaki Suit Jacket - Womens', 1, 4, 10, 'Womens', 'Jacket', 'Khaki Suit'),
('P0030', 54, 'Black Straight Jeans - Womens', 1, 3, 8, 'Womens', 'Jeans', 'Black Straight'),
('P0031', 36, 'Navy Solid Socks - Mens', 2, 6, 16, 'Mens', 'Socks', 'Navy Solid'),
('P0032', 21, 'White Striped Socks - Mens', 2, 6, 17, 'Mens', 'Socks', 'White Striped'),
('P0033', 27, 'Teal Button Up Shirt - Mens', 2, 5, 14, 'Mens', 'Shirt', 'Teal Button Up'),
('P0034', 58, 'Grey Fashion Jacket - Womens', 1, 4, 12, 'Womens', 'Jacket', 'Grey Fashion'),
('P0035', 41, 'Cream Relaxed Jeans - Womens', 1, 3, 9, 'Womens', 'Jeans', 'Cream Relaxed'),
('P0036', 30, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee'),
('P0037', 37, 'Blue Polo Shirt - Mens', 2, 5, 15, 'Mens', 'Shirt', 'Blue Polo'),
('P0038', 19, 'Pink Fluro Polkadot Socks - Mens', 2, 6, 18, 'Mens', 'Socks', 'Pink Fluro Polkadot'),
('P0039', 59, 'Indigo Rain Jacket - Womens', 1, 4, 11, 'Womens', 'Jacket', 'Indigo Rain'),
('P0040', 38, 'Khaki Suit Jacket - Womens', 1, 4, 10, 'Womens', 'Jacket', 'Khaki Suit'),
('P0041', 50, 'Black Straight Jeans - Womens', 1, 3, 8, 'Womens', 'Jeans', 'Black Straight'),
('P0042', 14, 'White Striped Socks - Mens', 2, 6, 17, 'Mens', 'Socks', 'White Striped'),
('P0043', 20, 'Navy Solid Socks - Mens', 2, 6, 16, 'Mens', 'Socks', 'Navy Solid'),
('P0044', 35, 'Teal Button Up Shirt - Mens', 2, 5, 14, 'Mens', 'Shirt', 'Teal Button Up'),
('P0045', 46, 'Grey Fashion Jacket - Womens', 1, 4, 12, 'Womens', 'Jacket', 'Grey Fashion'),
('P0046', 24, 'Cream Relaxed Jeans - Womens', 1, 3, 9, 'Womens', 'Jeans', 'Cream Relaxed'),
('P0047', 39, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee'),
('P0048', 43, 'Blue Polo Shirt - Mens', 2, 5, 15, 'Mens', 'Shirt', 'Blue Polo'),
('P0049', 26, 'Pink Fluro Polkadot Socks - Mens', 2, 6, 18, 'Mens', 'Socks', 'Pink Fluro Polkadot'),
('P0050', 28, 'White Tee Shirt - Mens', 2, 5, 13, 'Mens', 'Shirt', 'White Tee');

CREATE TABLE product_prices (
  id INT PRIMARY KEY,
  product_id VARCHAR(10),
  price INT
);

INSERT INTO product_prices (id, product_id, price) VALUES
(1, 'P0001', 33),
(2, 'P0002', 47),
(3, 'P0003', 31),
(4, 'P0004', 25),
(5, 'P0005', 42),
(6, 'P0006', 40),
(7, 'P0007', 52),
(8, 'P0008', 30),
(9, 'P0009', 37),
(10, 'P0010', 13),
(11, 'P0011', 10),
(12, 'P0012', 29),
(13, 'P0013', 46),
(14, 'P0014', 33),
(15, 'P0015', 18),
(16, 'P0016', 23),
(17, 'P0017', 50),
(18, 'P0018', 39),
(19, 'P0019', 35),
(20, 'P0020', 48),
(21, 'P0021', 16),
(22, 'P0022', 45),
(23, 'P0023', 55),
(24, 'P0024', 26),
(25, 'P0025', 34),
(26, 'P0026', 32),
(27, 'P0027', 22),
(28, 'P0028', 60),
(29, 'P0029', 44),
(30, 'P0030', 54),
(31, 'P0031', 36),
(32, 'P0032', 21),
(33, 'P0033', 27),
(34, 'P0034', 58),
(35, 'P0035', 41),
(36, 'P0036', 30),
(37, 'P0037', 37),
(38, 'P0038', 19),
(39, 'P0039', 59),
(40, 'P0040', 38),
(41, 'P0041', 50),
(42, 'P0042', 14),
(43, 'P0043', 20),
(44, 'P0044', 35),
(45, 'P0045', 46),
(46, 'P0046', 24),
(47, 'P0047', 39),
(48, 'P0048', 43),
(49, 'P0049', 26),
(50, 'P0050', 28);

CREATE TABLE sales (
  prod_id VARCHAR(10),
  qty INT,
  price INT,
  discount INT,
  member VARCHAR(10),
  txn_id VARCHAR(10),
  start_txn_time VARCHAR(30)
);

INSERT INTO sales (prod_id, qty, price, discount, member, txn_id, start_txn_time) VALUES
('P0001', 2, 33, 3, 'Yes', 'TX1001', '2025-06-01 10:00:00'),
('P0002', 1, 47, 2, 'No', 'TX1002', '2025-06-01 11:00:00'),
('P0003', 3, 31, 1, 'Yes', 'TX1003', '2025-06-01 12:00:00'),
('P0004', 2, 25, 2, 'No', 'TX1004', '2025-06-01 13:00:00'),
('P0005', 1, 42, 0, 'Yes', 'TX1005', '2025-06-02 10:00:00'),
('P0006', 2, 40, 1, 'No', 'TX1006', '2025-06-02 11:00:00'),
('P0007', 1, 52, 2, 'Yes', 'TX1007', '2025-06-02 12:00:00'),
('P0008', 3, 30, 3, 'Yes', 'TX1008', '2025-06-02 13:00:00'),
('P0009', 2, 37, 2, 'No', 'TX1009', '2025-06-03 10:00:00'),
('P0010', 1, 13, 1, 'Yes', 'TX1010', '2025-06-03 11:00:00'),
('P0011', 2, 10, 1, 'No', 'TX1011', '2025-06-03 12:00:00'),
('P0012', 1, 29, 0, 'Yes', 'TX1012', '2025-06-03 13:00:00'),
('P0013', 2, 46, 2, 'Yes', 'TX1013', '2025-06-04 10:00:00'),
('P0014', 1, 33, 1, 'No', 'TX1014', '2025-06-04 11:00:00'),
('P0015', 3, 18, 0, 'Yes', 'TX1015', '2025-06-04 12:00:00'),
('P0016', 2, 23, 2, 'Yes', 'TX1016', '2025-06-04 13:00:00'),
('P0017', 2, 50, 3, 'No', 'TX1017', '2025-06-05 10:00:00'),
('P0018', 1, 39, 2, 'Yes', 'TX1018', '2025-06-05 11:00:00'),
('P0019', 2, 35, 1, 'No', 'TX1019', '2025-06-05 12:00:00'),
('P0020', 1, 48, 3, 'Yes', 'TX1020', '2025-06-05 13:00:00'),
('P0021', 2, 16, 0, 'No', 'TX1021', '2025-06-06 10:00:00'),
('P0022', 1, 45, 1, 'Yes', 'TX1022', '2025-06-06 11:00:00'),
('P0023', 3, 55, 2, 'Yes', 'TX1023', '2025-06-06 12:00:00'),
('P0024', 1, 26, 1, 'No', 'TX1024', '2025-06-06 13:00:00'),
('P0025', 2, 34, 1, 'Yes', 'TX1025', '2025-06-07 10:00:00'),
('P0026', 2, 32, 3, 'No', 'TX1026', '2025-06-07 11:00:00'),
('P0027', 1, 22, 1, 'Yes', 'TX1027', '2025-06-07 12:00:00'),
('P0028', 2, 60, 2, 'Yes', 'TX1028', '2025-06-07 13:00:00'),
('P0029', 1, 44, 3, 'No', 'TX1029', '2025-06-08 10:00:00'),
('P0030', 3, 54, 2, 'Yes', 'TX1030', '2025-06-08 11:00:00'),
('P0031', 2, 36, 1, 'Yes', 'TX1031', '2025-06-08 12:00:00'),
('P0032', 1, 21, 0, 'No', 'TX1032', '2025-06-08 13:00:00'),
('P0033', 2, 27, 2, 'Yes', 'TX1033', '2025-06-09 10:00:00'),
('P0034', 2, 58, 3, 'Yes', 'TX1034', '2025-06-09 11:00:00'),
('P0035', 1, 41, 1, 'No', 'TX1035', '2025-06-09 12:00:00'),
('P0036', 2, 30, 1, 'Yes', 'TX1036', '2025-06-09 13:00:00'),
('P0037', 2, 37, 0, 'Yes', 'TX1037', '2025-06-10 10:00:00'),
('P0038', 1, 19, 2, 'No', 'TX1038', '2025-06-10 11:00:00'),
('P0039', 2, 59, 3, 'Yes', 'TX1039', '2025-06-10 12:00:00'),
('P0040', 2, 38, 1, 'No', 'TX1040', '2025-06-10 13:00:00'),
('P0041', 1, 50, 2, 'Yes', 'TX1041', '2025-06-11 10:00:00'),
('P0042', 2, 14, 1, 'Yes', 'TX1042', '2025-06-11 11:00:00'),
('P0043', 3, 20, 0, 'No', 'TX1043', '2025-06-11 12:00:00'),
('P0044', 2, 35, 3, 'Yes', 'TX1044', '2025-06-11 13:00:00'),
('P0045', 1, 46, 2, 'No', 'TX1045', '2025-06-12 10:00:00'),
('P0046', 1, 24, 0, 'Yes', 'TX1046', '2025-06-12 11:00:00'),
('P0047', 2, 39, 1, 'Yes', 'TX1047', '2025-06-12 12:00:00'),
('P0048', 2, 43, 3, 'No', 'TX1048', '2025-06-12 13:00:00'),
('P0049', 1, 26, 2, 'Yes', 'TX1049', '2025-06-13 10:00:00'),
('P0050', 3, 28, 1, 'Yes', 'TX1050', '2025-06-13 11:00:00');

-- Q1: Total Quantity Sold
SELECT SUM(qty) AS total_quantity_sold
FROM sales;

-- Q2: Total Revenue Before Discounts
SELECT SUM(qty * price) AS total_revenue_before_discount
FROM sales;

-- Q3: Total Discount Amount
SELECT SUM(qty * discount) AS total_discount_amount
FROM sales;

-- Q4: Number of Unique Transactions
SELECT COUNT(DISTINCT txn_id) AS unique_transactions
FROM sales;

-- Q5: Average Unique Products Per Transaction
SELECT ROUND(AVG(product_count), 2) AS avg_unique_products_per_transaction
FROM (
    SELECT txn_id, COUNT(DISTINCT prod_id) AS product_count
    FROM sales
    GROUP BY txn_id
) AS product_counts;
