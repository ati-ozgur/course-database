```{mermaid}
erDiagram
    Department ||--|{ Student : has
    Building ||--|{ Office : has
    Office ||--|{ Advisor_Office : has
    Advisor_Office ||--|{ Advisor : in 
    College  ||--|{ Department : has
    Advisor ||--|{ Student: has_multiple

    Student{
        string StudentNum
        string name
        string major
        float gpa
        string class
    }
    Department{
        string code
        string name
        string phone
    }
    College{
        string CollegeId
        string name
    }
    Advisor{
        string advisorId
        string name
        string phone
        string office
        int buildingId
    }
    Advisor_Office{
        int advisorId
        int officeId
    }
    Office{
        int officeId
        string code
        int buildingId
    }
    Building{
        int buildingId
        string buildingName
    }
```

