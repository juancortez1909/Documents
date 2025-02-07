query 50100 OrderStatusReport
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Sales_Header; "Sales Header")
        {
            column(SalesOrderNumber; "No.")
            {   Caption = 'Sales Order Number';
                
            }
            column(Sell_to_Customer_No_; "Sell-to Customer No.")
            {
                
            }
            column(Order_Date; "Order Date")
            {
                
            }
            column(Document_Date; "Document Date")
            {
                
            }
            // filter(FilterName; SourceFieldName)
            // {
                
            // }
            dataitem(Sales_Line; "Sales Line")
            {
                DataItemLink = "Document No." = sales_header."No.";

                column(Document_No_; "Document No.")
                {
                    
                }
                column(No_; "No.")
                {
                    
                }
                column(Description; Description)
                {
                    
                }
                column(Quantity; Quantity)
                {
                    
                }
                column(Qty__to_Ship; "Qty. to Ship")
                {
                    
                }
            }
        }
        
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}