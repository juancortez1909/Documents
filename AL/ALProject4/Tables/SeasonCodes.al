table 50104 SeasonCode
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;SeasonCode; Code[10])
        {
            DataClassification = ToBeClassified;
            
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }
    
    keys
    {
        key(pk; SeasonCode)
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