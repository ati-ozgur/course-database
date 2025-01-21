```{mermaid}
%%| fig-width: 7
flowchart LR
    subgraph İstemci
        C[İstemci Uygulaması]
    end

    subgraph "Veri tabanı Sunucusu"
        S[Sunucu]
        DB[(Veritabanı)]
    end

    C -- "1 İstek (request) gönder" --> S
    S -- "2 Sorgu" --> DB
    DB -- "3 Veri döndür" --> S
    S -- "4 Veri İşleme" --> S
    S -- "5 cevap (response) geri döndürme" --> C
```