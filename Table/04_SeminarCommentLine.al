table 123456704 "Seminar Comment Line"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Table Name";Option)
        {
            OptionMembers = "Seminar","Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration';
        }
    }
    keys
    {
        key(PK;"Table Name")
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}