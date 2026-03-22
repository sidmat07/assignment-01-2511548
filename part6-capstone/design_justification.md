## Storage Systems

To meet the four goals of the hospital system, multiple storage systems were used, each optimized for a specific purpose. A Data Lake (e.g., S3/GCS) is used to store all raw data, including structured data (transactions), semi-structured data (logs), and unstructured data (patient notes). This provides scalability and flexibility for large volumes of healthcare data.

A Data Warehouse is used for structured, cleaned data to support reporting and analytics. It enables efficient querying for monthly reports such as bed occupancy and department-wise costs. For real-time ICU data, a streaming system (Kafka/Kinesis) is used to ingest and process continuous data streams before storing them in the data lake.

A Vector Database is used to store embeddings of patient records and medical history. This enables semantic search when doctors query patient data in natural language. Finally, the ML model uses processed data from the warehouse and data lake to predict patient readmission risk.

---

## OLTP vs OLAP Boundary

The OLTP system consists of operational databases such as the hospital EHR system, billing systems, and ICU monitoring devices. These systems handle real-time transactional data like patient updates, billing entries, and live vitals.

The OLAP system begins at the ingestion layer, where data is extracted from OLTP systems and stored in the data lake. From there, the data is processed, transformed, and loaded into analytical systems like the data warehouse and vector database. These systems are optimized for analysis, reporting, and machine learning, rather than transactional operations.

This clear separation ensures that operational systems are not affected by heavy analytical workloads and maintains system performance and reliability.

---

## Trade-offs

One significant trade-off in this architecture is the increased complexity due to multiple systems (data lake, warehouse, vector database, streaming layer, and ML models). Managing and integrating these components can increase operational overhead and require more expertise.

To mitigate this, a unified data platform or data lakehouse approach can be adopted to reduce system fragmentation. Additionally, using managed cloud services (such as AWS or GCP managed offerings) can simplify infrastructure management. Proper orchestration tools and monitoring systems can also ensure smooth data flow and reliability.

Despite the complexity, this design provides scalability, flexibility, and the ability to support both real-time and batch processing, making it suitable for a modern AI-powered healthcare system.