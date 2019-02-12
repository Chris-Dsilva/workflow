pageextension 50100 JobPageExt extends "Job Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Project Manager")
        {
            field("Approval Status";"Approval Status")
            {
                ApplicationArea=all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter("Job - Planning Lines")
        {
            action("Send for Approval")
            {
                ApplicationArea = All;
                Promoted=true;
                PromotedCategory=Process;
                PromotedIsBig=true;
                PromotedOnly=true;
                Image = SendApprovalRequest;

                trigger OnAction()
                begin
                    IntCodeunit.OnSendJobsforApproval(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
        IntCodeunit: Codeunit IntCodeunit;
}
