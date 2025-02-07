table 50117 "Users from API"
{
    DataClassification = ToBeClassified;
 
    fields
    {
        field(1; WebID; Integer)
        {
            DataClassification = ToBeClassified;
 
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'test';
        }
        field(3; Phone; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(4; email; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Website; Text[150])
        {
            DataClassification = ToBeClassified;
        }
    }
 
    keys
    {
        key(pk; WebID)
        {
            Clustered = true;
        }
    }
 
    fieldgroups
    {
        // Add changes to field groups here
    }
 
    var
        myInt: Integer;
 
    trigger OnInsert()
    begin
 
    end;
 
    trigger OnModify()
    begin
 
    end;
 
    trigger OnDelete()
    begin
 
    end;
 
    trigger OnRename()
    begin
 
    end;
 
}