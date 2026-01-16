page 60301 ItemAttributesApi
{
    PageType = API;
    Caption = 'Item Attributes';
    APIPublisher = 'sabina';
    APIGroup = 'guineaPig';
    APIVersion = 'v1.0';
    EntityName = 'itemAttribute';
    EntitySetName = 'itemAttributes';

    SourceTable = "Item Attribute Value Mapping";

    // Read-only API
    InsertAllowed = false;
    ModifyAllowed = false;
    DeleteAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(ItemAttributes)
            {
                field(ItemNo; Rec."No.")
                {
                    Caption = 'Item No';
                }

                field(AttributeName; AttributeNameTxt)
                {
                    Caption = 'Attribute Name';
                }

                field(AttributeValue; AttributeValueTxt)
                {
                    Caption = 'Attribute Value';
                }

                field(SystemId; Rec.SystemId)
                {
                    Caption = 'System Id';
                }

                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'System Created At';
                }

                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'System Modified At';
                }
            }
        }
    }

    var
        AttributeNameTxt: Text[250];
        AttributeValueTxt: Text[250];

    trigger OnAfterGetRecord()
    var
        ItemAttribute: Record "Item Attribute";
        ItemAttributeValue: Record "Item Attribute Value";
    begin
        // Attribute name (from Item Attribute table)
        Clear(AttributeNameTxt);
        if Rec."Item Attribute ID" <> 0 then
            if ItemAttribute.Get(Rec."Item Attribute ID") then
                AttributeNameTxt := ItemAttribute.Name;

        // Attribute value (actual text value from Item Attribute Value table)
        Clear(AttributeValueTxt);
        if (Rec."Item Attribute ID" <> 0) and
           (Rec."Item Attribute Value ID" <> 0) then
            if ItemAttributeValue.Get(
                Rec."Item Attribute ID",
                Rec."Item Attribute Value ID")
            then
                AttributeValueTxt := ItemAttributeValue.Value;
    end;
}