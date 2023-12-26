table 50104 "TempPictureBlobStorage"
{
    Caption = 'Temp Picture Blob Storage';
    DataClassification = ToBeClassified;
    TableType = Temporary;

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }

        field(2; "Value BLOB"; Blob)
        {
            Caption = 'Value Blob';
        }


    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}