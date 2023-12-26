tableextension 50101 "Blob" extends "Sales Line"
{
    fields
    {
        field(50101; BLOB_Picture; Blob)
        {
            Caption = 'Picture';
        }
        field(50102; pictureHeight; Integer)
        {
            Caption = 'Picture Height';
        }
        field(50103; pictureWidth; Integer)
        {
            Caption = 'Picture Width';
        }

    }
}
