table 50139 "User Information"
{
    Caption = 'User Information';
    DataClassification = ToBeClassified;
    DataPerCompany = false;
    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;

        }
        field(2; "User Name"; Text[200])
        {
            Caption = 'User Name';
            DataClassification = ToBeClassified;
            TableRelation = User."Full Name" where("Full Name" = field("User Name"));

        }
        field(3; "User Email"; Text[200])
        {
            Caption = 'User Email';
            DataClassification = ToBeClassified;
            TableRelation = User."User Security ID" where("Authentication Email" = field("User Email"));
        }
        field(4; Company; Text[200])
        {
            Caption = 'Company';
            DataClassification = ToBeClassified;
            TableRelation = Company where("Name" = field("Company"));


        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
