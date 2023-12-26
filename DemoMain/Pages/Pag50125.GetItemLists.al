page 50125 GetItemLists
{
    APIGroup = 'apiGroup';
    APIPublisher = 'HaiLe';
    APIVersion = 'v2.0';
    ApplicationArea = All;
    Caption = 'getItemLists';
    DelayedInsert = true;
    EntityName = 'getItemLists';
    EntitySetName = 'getItemLists';
    PageType = API;
    SourceTable = Item;
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
                field(systemid; Rec."systemId")
                {
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(baseUnitOfMeasure; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit of Measure';
                }
                field(unitCost; Rec."Unit Cost")
                {
                    Caption = 'Unit Cost';
                }
                field(unitPrice; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(Inventory; Rec."Inventory")
                {
                    Caption = 'Inventory';
                }
                field(picture1; TempPictureBlobStorage."Value BLOB")
                {
                    Caption = 'Picture';
                }
                field(pictureHeight; PictureHeight)
                {
                    Editable = false;
                    Caption = 'Picture Height';
                }
                field(pictureWidth; PictureWidth)
                {
                    Editable = false;
                    Caption = 'Picture Width';
                }
            }
        }
    }
    var
        TempPictureBlobStorage: Record "Name/Value Buffer" temporary; // The temporary record is used to load the picture
        PictureHeight: Integer;
        PictureWidth: Integer;

    trigger OnAfterGetRecord()
    var
        TenantMedia: Record "Tenant Media";
        OutStr: OutStream;
        InStr: InStream;
        MediaId: Guid;
        RecordR: RecordRef;
        FieldR: FieldRef;
    begin
        TempPictureBlobStorage.DeleteAll();
        TempPictureBlobStorage.Init();
        TempPictureBlobStorage."Value BLOB".CreateOutStream(OutStr);
        // If the picture is of type Media, use this code:
        // Rec.Picture.Image.ExportStream(OutStr);

        // If the picture is of type MediaSet, use this code:
        if Rec.Picture.Count > 0 then begin
            MediaId := Rec.Picture.Item(1);
            TenantMedia.SetAutoCalcFields(Content);
            if not TenantMedia.Get(MediaID) then
                exit;
            TenantMedia.Content.CreateInStream(InStr);
            CopyStream(OutStr, InStr);

            PictureWidth := TenantMedia.Width;
            PictureHeight := TenantMedia.Height;
        end;

        TempPictureBlobStorage.Insert();
    end;

}
