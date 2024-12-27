erDiagram
    Employee ||--|{	 Items_Assigned_Employee: is_assigned_to 
    Items ||--|{	 Items_Assigned_Employee: in 
    Item_Category ||--|{ Items: has

    Building ||--|{ Floor: has
    Floor ||--|{ Room: has

    Room ||--|{	 Items_Assigned_Room: is_assigned_to 
    Items ||--|{	 Items_Assigned_Room: in 

    Floor{
        int floor_number
        string building_code
    }

    Employee{
        int employee_id PK
        string employee_name
    }
    Items_Assigned_Employee{
        int item_id PK
        int employee_id PK
    }
    Items_Assigned_Room{
        int item_id PK
        int room_number PK
    }
    Items {
        int item_id PK
        string label
        int item_category_no
     }
     Item_Category{
        int item_category_no
        string category_name
     }
    Building{
        string building_code PK
        string name
        string building_manager
     }
    Room{
        int room_number PK
     }
