pageextension 50113 SalesOrderHeaderList extends "Sales Order List"
{
    layout
    {
        // Add changes to page layout here
        addafter("Requested Delivery Date")
        {
            field(SeasonCode;Rec.SeasonCode)
            {
                ToolTip = 'Season Code is either FW or SS and the year';
                ApplicationArea = All;
            }

            field(OrderType;Rec.OrderType)
            {
                ToolTip = 'Order Type should be Preseason, Reorder, or Closeout';
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