pageextension 50112 SalesOrderHeader extends "Sales Order"
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

        modify("Requested Delivery Date")
        {
            ShowMandatory = true;
        }

        // This worked but only when the field was populated then data deleted. Does not work upon 'Release'

        // modify("Requested Delivery Date")
        // {
        //     trigger OnBeforeValidate()
        //     var
        //         myInt: Integer;
        //     begin
        //         if rec."Requested Delivery Date" = 0D then
        //         Error('Requested Delivery Date must be entered');
        //     end;
        // }
    }

    
    actions
    {
        // Add changes to page actions here
        modify(Release)
        {
            trigger OnBeforeAction()
            var
                myInt: Integer;
            begin
                if rec."Requested Delivery Date" = 0D then
                Error('Requested Delivery Date must be entered');
            end;
        }
    }
    
    var
        myInt: Integer;
}