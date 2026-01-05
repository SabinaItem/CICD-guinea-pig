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
            }
        }
    }
}