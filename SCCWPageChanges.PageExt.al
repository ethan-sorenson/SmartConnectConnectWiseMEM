pageextension 63051 SCCWCustomerCard extends "Customer Card"
{
    layout
    {
        addafter("No.")
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
            field("Entity"; rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
                ToolTip = 'Entity Identifier';
            }
        }
    }
    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}

pageextension 63052 SCCWVendorCard extends "Vendor Card"
{
    layout
    {
        addafter("No.")
        {
            field("ConnectWise Id"; rec."ConnectWise Id")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
            field("Entity"; rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
                ToolTip = 'Entity Identifier';
            }
        }
    }

    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}

pageextension 63053 SCCWItemCard extends "Item Card"
{
    layout
    {
        addafter("No.")
        {
            field("ConnectWise Id"; rec."No. 2")
            {
                ApplicationArea = All;
                Caption = 'ConnectWise Id';
                ToolTip = 'ConnectWise Unique Identifier';
                Editable = CWEdit;
            }
            field("Entity"; rec."Global Dimension 1 Code")
            {
                ApplicationArea = All;
                ToolTip = 'Entity Identifier';
            }
        }
    }

    var
        CWEdit: Boolean;

    //Only allow edit through web services
    trigger OnOpenPage()
    begin
        if not GuiAllowed then
            CWEdit := true;
    end;
}