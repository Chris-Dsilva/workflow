tableextension 50100 JobExt extends Job
{
    fields
    {
        // Add changes to table fields here
        field(50000; "Approval Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,"Pending Approval",Released;
            OptionCaption = 'Open,Pending Approval,Released';
            Editable=false;
        }
    }

    var
        myInt: Integer;
}
