## ETL Decisions

### Decision 1 – Standardizing Date Formats
Problem:  
The raw dataset contained inconsistent date formats (e.g., DD-MM-YYYY, MM/DD/YYYY, and text-based formats), which could lead to incorrect grouping and analysis.

Resolution:  
All dates were converted into a standard ISO format (YYYY-MM-DD). A separate `dim_date` table was created with derived attributes such as day, month, and year to support time-based analysis.

---

### Decision 2 – Handling Inconsistent Category Casing
Problem:  
Product categories in the raw data had inconsistent casing (e.g., "electronics", "Electronics", "ELECTRONICS"), leading to incorrect aggregations.

Resolution:  
All category values were standardized to proper case (e.g., "Electronics"). This ensured accurate grouping and reporting in analytical queries.

---

### Decision 3 – Handling Missing and Null Values
Problem:  
Some fields (such as price or units sold) contained NULL or missing values, which could distort calculations like total sales.

Resolution:  
Rows with critical missing values were either cleaned or excluded. Where appropriate, default values were applied, and 'total_sales' was calculated as 'units_sold * unit_price' to ensure consistency and avoid NULL-based errors.