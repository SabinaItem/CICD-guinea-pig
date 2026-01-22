page 60300 ItemDummy
{
    PageType = API;
    Caption = 'itemDummy';
    APIPublisher = 'sabina';
    APIGroup = 'guineaPig';
    APIVersion = 'v1.0';
    EntityName = 'itemDummy';
    EntitySetName = 'itemDummies';
    SourceTable = Item;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No"; Rec."No.")
                {
                    Caption = 'No';

                }
                field("Description"; Rec.Description)
                {
                    Caption = 'Description';
                }
                field("Description2"; Rec."Description 2")
                {
                    Caption = 'Description 2';
                }
                field("ItemCategoryCode"; Rec."Item Category Code")
                {
                    Caption = 'Item Category Code';
                }
                field(SystemId; Rec.SystemId)
                {
                    Caption = 'System Id';
                }
                field("BaseUnitofMeasure"; Rec."Base Unit of Measure")
                {
                    Caption = 'Base Unit of Measure';
                }
            }
        }
    }
}
// test comment
// fix syntax error
// another test comment