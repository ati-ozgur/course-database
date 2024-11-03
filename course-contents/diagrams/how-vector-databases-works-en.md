```{mermaid}
%%| fig-height: 8
graph TD
    A[User Query] --> B[RAG System]
    B --> C[Query Embedding]
    C --> D[Vector Database]
    D --> E[Retrieve Similar Vectors]
    E --> F[Fetch Corresponding Documents]
    F --> G[Augment Original Query]
    G --> H[LLM]
    H --> I[Generate Response]
    I --> J[Return Answer to User]

    subgraph "Document Ingestion"
        K[Source Documents] --> L[Text Chunking]
        L --> M[Embedding Generation]
        M --> N[Store in Vector Database]
    end

    D -.-> N

```