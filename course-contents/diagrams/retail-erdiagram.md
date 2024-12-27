```{mermaid}
erDiagram
    Client  o|--|{ Invoice : "has"
    Invoice ||--|{ InvoiceLine : "has"
    Product ||--|{ InvoiceLine : "has"
    User  o|--|{ Invoice : "has"

    User{
        int userId
        string name
        string password
        string photoUrl
    }
    Client{
        string id
        string name
        string address
        string phone
        string email
    }
    Product{
        int productId
        string productRef
        string productCode
        string title
        string price
        string color
    }
    Invoice{
        int invoiceId
        int clientId
        int userId
        float total
    }
    InvoiceLine{
        int invoiceLineId
        int invoiceId
        int productId
        int count
        float discount
        float subtotal
        float VAT
        float subtotal
    }
```
