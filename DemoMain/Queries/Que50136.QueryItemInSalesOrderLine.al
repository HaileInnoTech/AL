query 50136 QueryItemInSalesOrderLine
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'QueryItemInSalesOrderLine';
    EntitySetName = 'QueryItemInSalesOrderLine';
    QueryType = API;

    elements
    {
        dataitem(salesLine; "Sales Line")
        {
            column(Document_No_; "Document No.") { }
            column(no; "No.") { }
            column(Quantity; Quantity) { }
            column(docID; SystemId) { }

            column(Line_Amount; "Line Amount") { }
            dataitem(itemQuery; Item)
            {
                DataItemLink = "No." = salesLine."No.";
                SqlJoinType = InnerJoin;
                column(Picture; Picture) { }
                column(Description; Description) { }
                column(Base_Unit_of_Measure; "Base Unit of Measure") { }
                column(Unit_Price; "Unit Price") { }
                column(SystemId; SystemId) { }

            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
