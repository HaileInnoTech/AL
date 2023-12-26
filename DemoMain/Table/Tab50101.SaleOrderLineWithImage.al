table 50101 SaleOrderLineWithImage
{
    Caption = 'SaleOrderLineWithImage';
    DataClassification = ToBeClassified;
    TableType = Temporary;


    fields
    {
        field(1; DocNo; Code[20])
        {
            Caption = 'DocNo';
        }
        field(2; ItemNo; Code[20])
        {
            Caption = 'ItemNo';
        }
        field(3; ItemDescription; Text[100])
        {
            Caption = 'ItemDescription';
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(5; unitOfMeasureCode; Text[100])
        {
            Caption = 'unitOfMeasureCode';
        }
        field(6; lineAmount; Decimal)
        {
            Caption = 'lineAmount';
        }
        field(7; ImagePicture; MediaSet)
        {
            Caption = 'ImagePicture';
        }
        field(8; ImageWidth; Integer)
        {
            Caption = 'ImageWidth';
        }
        field(9; ImageHeight; Integer)
        {
            Caption = 'ImageHeight';
        }
        field(10; ID; Integer)
        {
            Caption = 'ID';
        }
        field(11; BLOB_Image; Blob)
        {
            Caption = 'Image';
        }
        field(12; DocID; Guid)
        {
            Caption = 'Document ID';
        }
    }
    keys
    {
        key(ID; ID)
        {
            Clustered = true;
        }
    }
}
