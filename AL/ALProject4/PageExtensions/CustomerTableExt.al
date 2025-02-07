tableextension 50100 CustomerCard extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50100; LinkedIn;Text[150])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
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