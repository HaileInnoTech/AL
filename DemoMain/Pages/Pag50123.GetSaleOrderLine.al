page 50123 GetSaleOrderLine
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'getSaleOrderLine';
    DelayedInsert = true;
    EntityName = 'SaleOrderLinesAPI';
    EntitySetName = 'SaleOrderLinesAPI';
    PageType = API;
    SourceTable = "Sales Line";
    ODataKeyFields = "Document No.";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(documentNo; Rec."Document No.")
                {
                    Caption = 'Document No.';
                }

                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }
                field(unitOfMeasureCode; Rec."Unit of Measure Code")
                {
                    Caption = 'Unit of Measure Code';
                }
                field(lineAmount; Rec."Line Amount")
                {
                    Caption = 'Line Amount';
                }

            }
        }
    }

}
