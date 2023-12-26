page 50137 PageSaleLineWithImage
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'pageSaleLineWithImage';
    DelayedInsert = true;
    EntityName = 'PageSaleLineWithImage';
    EntitySetName = 'PageSaleLineWithImage';
    PageType = API;
    ODataKeyFields = ID;
    SourceTable = SaleOrderLineWithImage;
    InsertAllowed = false;
    DeleteAllowed = false;
    ModifyAllowed = false;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    Caption = 'ID';
                }
                field(docNo; Rec.DocNo)
                {
                    Caption = 'DocNo';
                }
                field(docID; Rec.DocID)
                {
                    Caption = 'docID';
                }
                field(itemDescription; Rec.ItemDescription)
                {
                    Caption = 'ItemDescription';
                }
                field(itemNo; Rec.ItemNo)
                {
                    Caption = 'ItemNo';
                }
                field(quantity; Rec.Quantity)
                {
                    Caption = 'Quantity';
                }

                field(lineAmount; Rec.lineAmount)
                {
                    Caption = 'lineAmount';
                }
                field(unitOfMeasureCode; Rec.unitOfMeasureCode)
                {
                    Caption = 'unitOfMeasureCode';
                }
                field(picture; Rec.BLOB_Image)
                {
                    Caption = 'Image';
                    Editable = false;
                }
            }
        }
    }

    var
        TempPictureBlobStorage: Record "Name/Value Buffer" temporary; // The temporary record is used to load the picture

    trigger OnInit()
    var
        lRecItem: Record Item;
        lRecSaleLine: Record "Sales Line";
        lQue_ItemSalesOrder: Query QueryItemInSalesOrderLine;
        lRecSaleOrder: Record "Sales Header";
        TenantMedia: Record "Tenant Media";
        OutStr: OutStream;
        InStr: InStream;
        MediaId: Guid;
        intID: Integer;
    begin
        intID := 0;
        lQue_ItemSalesOrder.Open();
        while lQue_ItemSalesOrder.Read() do begin
            Clear(lRecSaleLine);
            lRecSaleLine.SetRange("Document No.", lQue_ItemSalesOrder.Document_No_);
            if lRecSaleLine.FindSet() then begin
                lRecSaleOrder.SetRange("No.", lQue_ItemSalesOrder.Document_No_);
                if lRecSaleOrder.FindSet() then begin
                    Rec.DocID := lRecSaleOrder.SystemId;
                end;


                lRecItem.SetRange("No.", lQue_ItemSalesOrder.no);
                if lRecItem.FindSet() then begin
                    intID += 1;
                    TempPictureBlobStorage.INIT;
                    TempPictureBlobStorage."Value BLOB".CREATEOUTSTREAM(OutStr);
                    TempPictureBlobStorage.ID := intID;
                    MediaId := lRecItem.Picture.Item(1);


                    TenantMedia.SETAUTOCALCFIELDS(Content);
                    if TenantMedia.GET(MediaId) then begin
                        TenantMedia.Content.CREATEINSTREAM(InStr);
                        COPYSTREAM(OutStr, InStr);
                    end;
                    TempPictureBlobStorage.INSERT();
                end;

                Rec.lineAmount := lRecSaleLine."Line Amount";
                Rec.BLOB_Image := TempPictureBlobStorage."Value BLOB";
                Rec.ID := intID;
                Rec.ItemDescription := lQue_ItemSalesOrder.Description;
                Rec.ItemNo := lQue_ItemSalesOrder.no;
                Rec.Quantity := lQue_ItemSalesOrder.Quantity;
                Rec.unitOfMeasureCode := lQue_ItemSalesOrder.Base_Unit_of_Measure;
                Rec.ItemDescription := lQue_ItemSalesOrder.Description;
                Rec.DocNo := lQue_ItemSalesOrder.Document_No_;
                Rec.lineAmount := lRecSaleLine."Line Amount";
                Rec.Quantity := lRecSaleLine."Quantity";
            end;

            Rec.INSERT(true);
        end;
        lQue_ItemSalesOrder.Close();
    end;
}