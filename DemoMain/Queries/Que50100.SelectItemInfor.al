query 50126 SelectItemInfor
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    EntityName = 'SelectItemInforAPI';
    EntitySetName = 'SelectItemInforAPI';
    QueryType = API;


    elements
    {
        dataitem(item; Item)
        {
            column(no; "No.")
            {
            }
            column(systemid; "systemId")
            {
            }
            dataitem(Item_Attribute_Value_Mapping; "Item Attribute Value Mapping")
            {
                DataItemLink = "No." = item."No.";
                dataitem(item_attribue; "Item Attribute")
                {
                    DataItemLink = ID = Item_Attribute_Value_Mapping."Item Attribute ID";
                    column(Name; Name)
                    {
                    }
                    dataitem(Queryelement10; "Item Attribute Value")
                    {
                        DataItemLink = "Attribute ID" = Item_Attribute_Value_Mapping."Item Attribute ID",
                        ID = Item_Attribute_Value_Mapping."Item Attribute Value ID";
                        column(Value; Value)
                        {
                        }

                    }
                }
            }

        }
    }
    trigger OnBeforeOpen()
    begin

    end;
}
