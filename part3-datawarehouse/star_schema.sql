-- Date Dimension
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    year INT
);

-- Store Dimension
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);

-- Product Dimension
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- FACT TABLE

CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_sales DECIMAL(12,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- INSERT DATA INTO DIM_DATE
INSERT INTO dim_date VALUES
(1, '2025-08-29', 29, 8, 2025),
(2, '2025-12-12', 12, 12, 2025),
(3, '2025-02-05', 5, 2, 2025),
(4, '2025-02-20', 20, 2, 2025),
(5, '2025-01-15', 15, 1, 2025);

-- INSERT DATA INTO DIM_STORE
INSERT INTO dim_store VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi');

-- INSERT DATA INTO DIM_PRODUCT
INSERT INTO dim_product VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mobile', 'Electronics'),
(3, 'Headphones', 'Accessories');

-- INSERT DATA INTO FACT_SALES

INSERT INTO fact_sales VALUES
(1, 1, 1, 1, 3, 49262.78, 147788.34),
(2, 2, 1, 2, 11, 23226.12, 255487.32),
(3, 3, 1, 1, 20, 48703.39, 974067.80),
(4, 4, 2, 2, 14, 23226.12, 325165.68),
(5, 5, 1, 1, 10, 58851.01, 588510.10),
(6, 1, 2, 3, 5, 1500.00, 7500.00),
(7, 2, 1, 3, 7, 2000.00, 14000.00),
(8, 3, 2, 1, 2, 45000.00, 90000.00),
(9, 4, 1, 2, 8, 22000.00, 176000.00),
(10, 5, 2, 3, 6, 1800.00, 10800.00);