query 50139 getUserSetting
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'getUserSetting';
    EntitySetName = 'getUserSetting';
    QueryType = API;

    elements
    {
        dataitem(userSettings; "User Settings")
        {
            column(appID; "App ID") { }
            column(company; Company) { }
            column(languageID; "Language ID") { }
            column(localeID; "Locale ID") { }
            column(profileID; "Profile ID") { }
            column(scope; Scope) { }
            column(userID; "User ID") { }
            column(userSecurityID; "User Security ID") { }
            // dataitem(Companyinfo; Company)
            // {
            //     DataItemLink = "Name" = userSettings.company;
            //     column(Id; Id) { }
            //     // dataitem(Access_Control; "Access Control")
            //     // {
            //     //     DataItemLink = "User Security ID" = userSettings."user Security ID", "Company Name" = Companyinfo.Name, "Scope" = userSettings.scope,
            //     //     "App ID" = userSettings."App ID";
            //     //     column(Role_ID; "Role ID") { }
            //     //     column(Role_Name; "Role Name") { }
            //     // }

            // }

        }
    }

    trigger OnBeforeOpen()
    begin
    end;
}