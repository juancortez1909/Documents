tableextension 50105 SeasonCode extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(500; SeasonCode; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Season Code';
            TableRelation = SeasonCode;
        }

        field(501; OrderType; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Order Type';
        }
    }

    
    keys
    {
        // Add changes to keys here
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
}