pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{
    // CSD1.00 - 2018-02-01 - D. E. Veloper
    layout
    {
        addlast(General)
        {
            field("CSD_Resource Type"; "CSD_Resource Type")
            {

            }
            field("CSD_Quantity Per Day"; "CSD_Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("Room")
            {
                field("CSD_Maximum Participants"; "CSD_Maximum Participants")
                {

                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnAfterGetRecord();
    begin
        ShowMaxField = (Type = Type::Machine);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}