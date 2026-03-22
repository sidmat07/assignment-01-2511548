-- Customer Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_reps (
    sales_rep_id INT PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id INT NOT NULL,
    sales_rep_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    total_price DECIMAL(10.2) NOT NULL,
    PRIMARY KEY (order_id, product_id)
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert data in customers
INSERT INTO customers (customer_id, customer_name, customer_email, city) VALUES
(1, 'Kavya Rao', 'kavya@gmail.com', 'Mumbai'),
(2, 'Rahul Sharma', 'rahul@gmail.com', 'Pune'),
(3, 'Ankit Verma', 'ankit@gmail.com', 'Delhi'),
(4, 'Siddhant Mathur', 'siddhant@gmail.com', 'Chennai'),
(5, 'Priya Mehta', 'priya@gmail.com', 'Bangalore');

-- Insert data in products
INSERT INTO products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 50000),
(102, 'Phone', 'Electronics', 20000),
(103, 'Headphones', 'Electronics', 2000),
(104, 'Keyboard', 'Accessories', 1500),
(105, 'Webcam', 'Accessories', 3000);

-- Insert data in sales_reps
INSERT INTO sales_reps (sales_rep_id, sales_rep_name, sales_rep_email, office_address) VALUES
(1, 'Amit', 'amit@company.com', 'Mumbai Office'),
(2, 'Rohit', 'rohit@company.com', 'Pune Office'),
(3, 'Sneha', 'sneha@company.com', 'Delhi Office'),
(4, 'Vikas', 'vikas@company.com', 'Chennai Office'),
(5, 'Pooja', 'pooja@company.com', 'Bangalore Office');

-- Insert data in orders
INSERT INTO orders (order_id, order_date, customer_id, sales_rep_id) VALUES
(1001, '2025-01-02', 1, 1),
(1002, '2025-01-03', 2, 2),
(1003, '2025-01-04', 3, 3),
(1004, '2025-01-05', 4, 4),
(1005, '2025-01-06', 5, 5);

-- Insert data in order_items
INSERT INTO order_items (order_id, product_id, quantity, total_price) VALUES
(1001, 101, 1, 50000),
(1002, 102, 2, 40000),
(1003, 103, 3, 6000),
(1004, 104, 1, 1500),
(1005, 105, 2, 6000);