query 50138 getUserPermission
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'getUserPermission';
    EntitySetName = 'getUserPermission';
    QueryType = API;


    elements
    {
        dataitem(user; User)
        {
            column(userSecurityID; "User Security ID")
            {
            }
            column(authenticationEmail; "Authentication Email")
            {
            }
            column(fullName; "Full Name")
            {
            }
            column(userName; "User Name")
            {
            }
            dataitem(Access_Control; "Access Control")
            {
                DataItemLink = "User Security ID" = user."User Security ID";
                SqlJoinType = InnerJoin;
                column(Role_ID; "Role ID")
                {
                }
                column(Role_Name; "Role Name")
                {

                }
                column(Company_Name; "Company Name")
                {

                }
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
