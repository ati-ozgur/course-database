erDiagram
    User ||--o{ Ticket: has
    Client o|--o{ Ticket: has
    Ticket }|--|{ TicketLine: has
    Product o|--|| TicketLine: has


    User{
        string username PK
        string name
        blob photo
        string password
     }
     Client{
        string clientId PK
        string name
        string address
        string phone
        string email
     }
     Product{
        string ref
        string code
        string name
        blob photo
        float price
     }
     Ticket{
        string ticketNo
        string clientId
        float subtotal
        float VAT
        float discount
        float total
     }
     TicketLine{
        string ticketLineNo
        string ticketNo
        float discount
        int count
     }
