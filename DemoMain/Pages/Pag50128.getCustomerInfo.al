page 50128 getCustomerInfo
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'getCustomerInfo';
    DelayedInsert = true;
    EntityName = 'getCustomerInfo';
    EntitySetName = 'getCustomerInfo';
    PageType = API;
    SourceTable = Customer;
    ODataKeyFields = "E-Mail";
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(eMail; Rec."E-Mail")
                {
                    Caption = 'Email';
                }
                field(name; Rec.Name)
                {
                    Caption = 'Name';
                }
            }
        }
    }
}
