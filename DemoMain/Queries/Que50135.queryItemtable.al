query 50135 queryItemtable
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'queryItemtable';
    EntitySetName = 'queryItemtable';
    QueryType = API;

    elements
    {
        dataitem(item; Item)
        {
            column(picture; Picture)
            {
            }
            column(systemId; SystemId)
            {
            }
            column(no; "No.")
            {
            }
            column(description; Description)
            {
            }
            column(baseUnitOfMeasure; "Base Unit of Measure")
            {
            }
            column(unitCost; "Unit Cost")
            {
            }

        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
