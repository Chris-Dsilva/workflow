codeunit 50100 IntCodeunit
{
    trigger OnRun()
    begin

    end;

    [IntegrationEvent(false, false)]
    PROCEDURE OnSendJobsforApproval(VAR Job: Record Job);
    begin
    end;

    procedure IsJobEnabled(var Job: Record Job): Boolean
    var
        WFMngt: Codeunit "Workflow Management";
        WFCode: Codeunit WFCode;
    begin
        exit(WFMngt.CanExecuteWorkflow(Job, WFCode.RunWorkflowOnSendJobApprovalCode()))
    end;

    local procedure CheckWorkflowEnabled(): Boolean
    var
        Job: Record Job;
        NoWorkflowEnb: TextConst ENU = 'No workflow Enabled for this Record type', ENG = 'No workflow Enabled for this Record type';
    begin
        if not IsJobEnabled(Job) then
            Error(NoWorkflowEnb);
    end;



    var
        myInt: Integer;
}
