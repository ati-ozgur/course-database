```{mermaid}
graph TD
    A[Kullanıcı Sorgusu] --> B[RAG Sistemi]
    B --> C[Sorgu Gömme]
    C --> D[Vektör Veritabanı]
    D --> E[Benzer Vektörleri Al]
    E --> F[İlgili Belgeleri Getir]
    F --> G[Orijinal Sorguyu Artır]
    G --> H[Büyük Dil Modeli]
    H --> I[Yanıt Oluştur]
    I --> J[Kullanıcıya Yanıt Dön]

    subgraph "Belge Alımı"
        K[Kaynak Belgeler] --> L[Metin Yığınlama]
        L --> M[Gömme Üretimi]
        M --> N[Vektör Veritabanında Sakla]
    end

    D -.-> N

```