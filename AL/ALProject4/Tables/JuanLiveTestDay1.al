table 50101 CourseInformation
{
    DataClassification = ToBeClassified;
    Caption = 'Course Information/Details';

    fields
    {
        field(1; CourseID; Code[20]) //code - alphanumeric values
        {
            DataClassification = ToBeClassified;

        }

        field(2; CourseName; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Price; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(4; InstructorID; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(5; InstructorName; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(6; CourseType; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Online","Offline","Self-Paced";
        }

        field(7; StartDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(8; EndDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(9; CourseDuration; Duration)
        {
            DataClassification = ToBeClassified;
        }

        field(10; AvgPrice; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(11; Brand; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    // keys
    // {
    //     key(Key1; MyField)
    //     {
    //         Clustered = true;
    //     }
    // }

    // fieldgroups
    // {
    //     // Add changes to field groups here
    // }

    // var
    //     myInt: Integer;

    // trigger OnInsert()
    // begin

    // end;

    // trigger OnModify()
    // begin

    // end;

    // trigger OnDelete()
    // begin

    // end;

    // trigger OnRename()
    // begin

    // end;


}