## Anomaly Analysis

### 1. Insert Anomaly
Columns involved: product_id, product_name, category, unit_price, order_id

In the current table, product information is dependent on order_id.
This means we cannot insert a new product without creating an order.

Example:
There is no way to insert a new product (eg: "Webcam") unless we also provide order_id and cutomer details, because product fields are stored along with order data.


### 2. Update Anomaly
Columns involved: customer_id, customer_name, customer_email, city

Customer details are repeated across multiple rows.

Example:
Customer "Priya Sharma","Kavya Rao", etc appears in multiple rows. If we update the customer email in 1 row but forgot in other entries of that customer, it will lead to inconsistent data.


### 3. Delete Anomaly
Columns involved: product_id, Product_name, category

Deleting a row can remove important product information.

Example:
The product "Webcam" appears only once. If we delete that row, order_id associated with it will also get deleted and we lose all information about that product from the database.


## Normalization Justification

The argument that keeping all data in a single table is simpler may seem valid initially, but in practice it leads to significant data inconsistencies and maintenance challenges. In the given dataset (orders_flat.csv), multiple anomalies clearly demonstrate why normalization is necessary.

For example, customer details such as customer_name, customer_email, and city are repeated across multiple rows for each order. If a customer’s email changes, it must be updated in every row where that customer appears. This creates an update anomaly and increases the risk of inconsistent data. Similarly, product details like product_name and unit_price are also duplicated across orders, leading to redundancy.

Insert anomalies are also evident. We cannot add a new product or a new sales representative unless an order is created, because all data is tied to order_id. This restricts flexibility and violates good database design principles. Additionally, delete anomalies occur when removing an order results in the loss of important information. For instance, deleting the only order containing a specific product or sales representative would remove all associated details from the system.

By normalizing the data into separate tables such as customers, products, sales_reps, orders, and order_items, we eliminate redundancy and ensure data integrity. Each entity is stored independently, making inserts, updates, and deletes safer and more efficient.

Therefore, normalization is not over-engineering but a necessary step to maintain consistency, scalability, and reliability in a real-world database system.