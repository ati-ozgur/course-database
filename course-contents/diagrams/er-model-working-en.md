```{mermaid}
flowchart TD
    GUI[GUI Design E-R Model] -->|Physical Model| DB1(Created Tables)
    DB2(Created Tables) --> |Reverse Engineer| Diagram[E-R Model]

```