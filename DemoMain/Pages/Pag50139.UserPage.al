page 50139 UserPage
{
    ApplicationArea = All;
    Caption = 'User Page';
    PageType = Card;
    SourceTable = "User Information";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Company; Rec.Company)
                {
                    ToolTip = 'Specifies the value of the Company field.';
                }
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field("User Email"; Rec."User Email")
                {
                    ToolTip = 'Specifies the value of the User Email field.';
                }
                field("User Name"; Rec."User Name")
                {
                    ToolTip = 'Specifies the value of the User Name field.';
                }
            }
        }
    }
}
