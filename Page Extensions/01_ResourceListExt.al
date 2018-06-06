pageextension 123456701 CDS_ResourceListExt extends "Resource List"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    layout
    {
        Modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {
            }
            field("CSD_Maximum Participants"; "CSD_Maximum Participants")
            {
                Visible = ShowMaxField;
            }

        }
    }

    trigger OnOpenPage();
    begin
        FilterGroup(3);
        Showtype := (GetFilter(Type) = '');
        ShowMaxField := (GetFilter(Type) = Format(Type::Machine));
        FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;

}