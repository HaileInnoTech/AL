query 50127 getItemPreviewText
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'getItemPreviewText';
    EntitySetName = 'getItemPreviewText';
    QueryType = API;

    elements
    {
        dataitem(item; Item)
        {
            column(no; "No.")
            {
            }
            column(systemId; SystemId)
            {
            }

            dataitem(des; "Entity Text")
            {
                DataItemLink = "Source System Id" = item."SystemId";
                column(description; "Preview Text")
                {
                }
            }

        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
