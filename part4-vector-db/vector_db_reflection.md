## Vector DB Use Case

A traditional keyword-based database search would not be sufficient for a system where lawyers need to query large legal documents using plain English questions. Keyword search relies on exact word matching, which fails when different wording is used for the same concept. For example, a query like “termination clauses” might not match relevant sections if the document uses phrases like “contract cancellation terms” or “ending agreement conditions.” This limitation makes keyword search unreliable for complex and nuanced legal language.

A vector database, on the other hand, enables semantic search by converting both documents and user queries into embeddings (numerical representations of meaning). These embeddings capture the context and intent behind the text rather than just exact words. When a lawyer asks a question, the system converts the query into a vector and retrieves the most similar document sections based on cosine similarity.

In this system, the contract would first be split into smaller chunks, and embeddings would be generated for each chunk and stored in a vector database. When a query is made, the system finds the most relevant chunks and returns them as results.

This approach significantly improves accuracy, allowing lawyers to find relevant information quickly, even when the wording differs. Therefore, a vector database plays a crucial role in enabling efficient and intelligent semantic search in large legal documents.