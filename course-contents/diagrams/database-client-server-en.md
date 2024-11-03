```{mermaid}
%%| fig-width: 7
flowchart LR
    subgraph Client
        C[Client Application]
    end

    subgraph Server
        S[Server]
        DB[(Database)]
    end

    C -- "1 Send request" --> S
    S -- "2 Query" --> DB
    DB -- "3 Return data" --> S
    S -- "4 Process data" --> S
    S -- "5 Send response" --> C
```