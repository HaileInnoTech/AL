page 50140 "User Information"
{
    ApplicationArea = All;
    Caption = 'User Information';
    PageType = List;
    SourceTable = "User Information";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Company; Rec.Company)
                {
                    ToolTip = 'Specifies the value of the Company field.';
                }
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.';
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
