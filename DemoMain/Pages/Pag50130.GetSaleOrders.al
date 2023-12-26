page 50122 GetSaleOrders
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'getSaleOrders';
    DelayedInsert = true;
    EntityName = 'SaleOrderAPI';
    EntitySetName = 'SaleOrderAPI';
    PageType = API;
    SourceTable = "Sales Header";
    ODataKeyFields = "No.";


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
                field(SystemId; Rec."SystemId")
                {
                }
                field(sellToCustomerNo; Rec."Sell-to Customer No.")
                {
                    Caption = 'Sell-to Customer No.';
                }
                field(sellToCustomerName; Rec."Sell-to Customer Name")
                {
                    Caption = 'Sell-to Customer Name';
                }
                field(sellToCustomerEmail; Rec."Sell-to E-Mail")
                {
                }
                field(sellToCustomerPhone; Rec."Sell-to Phone No.")
                {
                }
                field(documentDate; Rec."Document Date")
                {
                    Caption = 'Document Date';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(amount; Rec.Amount)
                {
                    Caption = 'Amount';
                }
                field(address; Rec."Ship-to Address")
                {
                    Caption = 'Ship-to Address';
                }
                field(amountIncludingVAT; Rec."Amount Including VAT")
                {
                    Caption = 'Amount Including VAT';
                }
                field(shipment_date; Rec."Shipment Date")
                {
                    Caption = 'Shipment Date';
                }

            }
            part(getSaleOrderLines; GetSaleOrderLine)
            {
                SubPageLink = "Document No." = field("No.");
            }
        }
    }
}
