page 60301 ItemAttributes
{
    PageType = API;
    Caption = 'itemAttributes';
    APIPublisher = 'sabina';
    APIGroup = 'guineaPig';
    APIVersion = 'v1.0';
    EntityName = 'itemAttribute';
    EntitySetName = 'itemAttributes';
    SourceTable = "Item Attribute Value Mapping";
    DelayedInsert = true;
    InsertAllowed = true;
    ModifyAllowed = true;
    DeleteAllowed = true;

    layout
    {
        area(Content)
        {
            repeater(ItemAttributes)
            {
                field("No"; Rec."No.")
                {
                    Caption = 'No';
                }
                field("ItemAttributeID"; Rec."Item Attribute ID")
                {
                    Caption = 'Item Attribute ID';
                }
                field("ItemAttributeValueID"; Rec."Item Attribute Value ID")
                {
                    Caption = 'Item Attribute Value ID';
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
}
