pageextension 50108 CustomerCard extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name) {
            field(LinkedIn;Rec.LinkedIn)
            {
                ToolTip = 'this is LinkedIn URL';
                ApplicationArea = All;
            }
        }
    }
    
    actions
    {
        // Add changes to page actions here
    }
    
    var
        myInt: Integer;
}