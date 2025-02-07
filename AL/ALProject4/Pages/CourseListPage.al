page 50101 CourseList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CourseInformation;
    CardPageId = 50102;
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(CourseID; Rec.CourseID)
                {

                }

                field(Price; Rec.Price)
                {

                }

                field(InstructorID; Rec.InstructorID)
                {

                }

                field(InstructorName; Rec.InstructorName)
                {

                }

                field(CourseType; Rec.CourseType)
                {

                }

                field(StartDate; Rec.StartDate)
                {

                }

                field(EndDate; Rec.EndDate)
                {

                }

                field(CourseDuration; Rec.CourseDuration)
                {

                }

                field(AvgPrice; Rec.AvgPrice)
                {

                }

                field(Brand; Rec.Brand)
                {
                    Visible = false;
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