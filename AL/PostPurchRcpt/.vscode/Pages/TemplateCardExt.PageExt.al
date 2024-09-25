pageextension 60110 "CDC Template Card Ext." extends "CDC Template Card"
{
    layout
    {
        addlast(General)
        {
            field("CDC Auto Post Purch. Rcpt"; Rec."CDC Auto Post Purch. Rcpt")
            {
                ApplicationArea = All;
                CaptionML = ENU = 'Post Purchase Receipt automatically', ESP = 'Registrar albarán compra automáticamente';
                ToolTipML = ENU = 'Specifies the value of the CDC Auto Post Purch. Rcpt field.', ESP = 'Especifica si se desean registrar los albaranes de compra de forma automática una vez se hayan generado.';

            }
        }
    }

}