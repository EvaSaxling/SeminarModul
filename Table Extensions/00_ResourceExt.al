tableextension 123456700 CSD_ResourceExt extends Resource
{
    // CSD1.00 - 2018-02-01 - D. E. Veloper
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        field(123456701; "CSD_Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionMembers = "Internal", "External";
            OptionCaption = 'Internal,External';
        }
        field(1234567802; "CSD_Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(1234567803; "CSD_Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }
}