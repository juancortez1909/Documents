page 50111 SeasonCode
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SeasonCode;

    Caption = 'Season Codes';
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SeasonCode; Rec.SeasonCode)
                {
                    
                }
                field(Description; Rec.Description)
                {
                    
                }
                
            }
        }
        area(Factboxes)
        {
            
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
}