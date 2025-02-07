page 50102 CourseCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CourseInformation;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
               field(CourseID;Rec.CourseID)
                {
                     trigger OnLookup(var text:Text):Boolean
                    var
                        myInt: Integer;
                    begin
                        
                    end; 
                }

                 field(Price;Rec.Price)
                {
                  
                }

                 field(CourseType;Rec.CourseType)
                {
                    
                }

                 field(StartDate;Rec.StartDate)
                {
                    
                }

                 field(EndDate;Rec.EndDate)
                {
                    
                }

                 field(CourseDuration;Rec.CourseDuration)
                {
                    
                }

                 field(Brand;Rec.Brand)
                {
                
                }
            }

            group(InstructorInformation)
            {
               Caption = 'Instructor Information';
                 field(InstructorID;Rec.InstructorID)
                {
                    
                }

                 field(InstructorName;Rec.InstructorName)
                {
                    
                } 
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Caption = 'Item List';
                Image = Item;
                RunObject = page "Item List";
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;

        trigger OnOpenPage()
        var
            myInt: Integer;
        begin
            if rec.IsEmpty then 
            begin
                rec.StartDate := Today;
                rec.Insert()
            end;
            
        end;
}