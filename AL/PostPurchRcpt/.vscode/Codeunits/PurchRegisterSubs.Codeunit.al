codeunit 60110 "CDC Purch.- Register Subs."
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CDC Purch. - Register", 'OnAfterPerformStep1', '', false, false)]
    local procedure OnAfterPerformStep1(var Document: Record "CDC Document"; var PurchaseHeader: Record "Purchase Header")
    var
        Template: Record "CDC Template";
    begin
        IF not Template.Get(Document."Template No.") then
            exit;
        IF template."CDC Auto Post Purch. Rcpt" then begin
            PurchaseHeader.Receive := true;
            PurchaseHeader.Invoice := false;
            codeunit.run(Codeunit::"Purch.-Post", PurchaseHeader);
        end;
    end;
}